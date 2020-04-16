package com.skytech.skypiea.batch.algorithm.implementation;

import java.sql.Timestamp;

import org.apache.commons.lang3.math.NumberUtils;
import org.javatuples.Pair;
import org.javatuples.Triplet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.DateUtil;

public class RoomObjectsFailureAlgorithm extends NonMedicalConnectedObjectAlgorithm {

	private static final Logger log = LoggerFactory.getLogger(RoomObjectsFailureAlgorithm.class);

	/**
	 * Acceptable delay in milliseconds = (minutes Of Acceptable delay) * 60 * 1000
	 * multiplied by 60 to convert in seconds
	 * multiplied by 1000 to convert in milliseconds
	 */
	private final Long ACCEPTABLE_CLOCK_DELAY_IN_MINUTES = 5L;
	private final Long ACCEPTABLE_TEMPERATURE_GAP = 5L;

	//@Override
	public CacheInfo check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage, CacheInfo cacheInfo) {
		NonMedicalObjectType type = nonMedicalConnectedObject.getNonMedicalObjectType();

		if(type == NonMedicalObjectType.ALARM_CLOCK) {
			cacheInfo = checkAlarmClock(receivedMessage, cacheInfo);
		} else if(type == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
			cacheInfo = checkTemperatureController(receivedMessage, cacheInfo);			
		} 

		return cacheInfo;

	}

	/**
	 * This is the algo about the alarm clock.
	 * We consider an alarm clock as broken if current time and the time sent by the alarm clock
	 * have a difference higher (>) than 5 minutes
	 * @param receivedMessage
	 * @param cacheInfo
	 * @return
	 */
	private CacheInfo checkAlarmClock(Message receivedMessage, CacheInfo cacheInfo) {
		String comments = cacheInfo.getComments();
		State state = cacheInfo.getCurrentState();

		try {
			Timestamp receivedTimestamp = Timestamp.valueOf(receivedMessage.getValue1());
			Timestamp currentTimestamp = DateUtil.getCurrentTimestamp();

			Triplet<Long, Long, Long> daysHoursMinutesTriplet = DateUtil.differenceBetweenTwoTimestamp(currentTimestamp, receivedTimestamp);
			Long daysBetween = daysHoursMinutesTriplet.getValue0();
			Long hoursBetween = daysHoursMinutesTriplet.getValue1();
			Long minutesBetween = daysHoursMinutesTriplet.getValue2();

			String alarmClockDelayInfo = daysBetween + " day(s) " + hoursBetween + " hour(s) and " + minutesBetween + " minute(s)"; 

			if(daysBetween > 0 || hoursBetween > 0 || minutesBetween > ACCEPTABLE_CLOCK_DELAY_IN_MINUTES) {
				comments = "The alarm clock time is not correct and so not synchronized. The delay with the current time is equal to " + alarmClockDelayInfo;
				state = State.BROKEN;
				cacheInfo.setWarningMessageCount(0L);
			} else {
				state = resetStateToOperationalWhenEndOfBrokenState(state);
			}

		} catch (Exception e) {
			comments = "The time received by the alarm clock is not in the correct format";
			state = State.BROKEN;
			log.error(e.getMessage());
			e.printStackTrace();
		}

		if(!"".equalsIgnoreCase(comments)) {
			cacheInfo.setComments(comments);
		}

		cacheInfo.setCurrentState(state);
		return cacheInfo;
	}


	private CacheInfo checkTemperatureController(Message receivedMessage, CacheInfo cacheInfo) {
		String comments = cacheInfo.getComments();
		State state = cacheInfo.getCurrentState();
		try {
			String receivedValue = receivedMessage.getValue1();
			if(NumberUtils.isParsable(receivedValue)) {
				Pair<Timestamp, String> lastPairValue = cacheInfo.getLastValue();
				if(lastPairValue != null) {
					Long gapBetweenPreviousAndReceivedValue = Math.abs(NumberUtils.toLong(lastPairValue.getValue1(), 0) - NumberUtils.toLong(receivedValue, 0));
					if(gapBetweenPreviousAndReceivedValue > ACCEPTABLE_TEMPERATURE_GAP) {
						state = State.BROKEN;
						cacheInfo.setWarningMessageCount(0L);
						comments = "The gap between the previous received temperature and the current one is higher than 5 Celsius Degrees (the gap is equal to : "+gapBetweenPreviousAndReceivedValue+" Celsius Degree(s))";
					} else {
						state = resetStateToOperationalWhenEndOfBrokenState(state);
					}
				} else {
					state = resetStateToOperationalWhenEndOfBrokenState(state);
				}
				cacheInfo.add(receivedValue);
			} else {
				log.error("The temperature value received is not parsable : " + receivedValue + " from the message : " + receivedMessage);
			}

		} catch (Exception e) {
			log.error(e.getMessage());
		}

		if(!"".equalsIgnoreCase(comments)) {
			cacheInfo.setComments(comments);
		}
		
		log.info("=================================================");
		log.info("========> " + comments);
		log.info("=================================================");

		cacheInfo.setCurrentState(state);
		return cacheInfo;
	}

	private State resetStateToOperationalWhenEndOfBrokenState(State state) {
		return (state == State.BROKEN || state == State.MISSING) ? State.OPERATIONAL : state;
	}
}
