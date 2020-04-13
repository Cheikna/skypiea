package com.skytech.skypiea.commons.util;

import java.sql.Timestamp;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;
import java.util.function.Function;

import org.apache.commons.lang3.RandomUtils;
import org.javatuples.Pair;
import org.javatuples.Triplet;

public class DateUtil {
	
	private static final Long HOURS_PER_DAY = 24L;
	private static final Long MINUTES_PER_HOUR = 60L;

	public static Function<Timestamp, Calendar> convertTimestampToCalendar = (timestamp) -> {
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(timestamp.getTime());
		return calendar;
	};
	
	public static Timestamp getCurrentTimestamp() {
		 return  new Timestamp(new Date().getTime());
	}
	
	public static Triplet<Long, Long, Long> differenceBetweenTwoTimestamp(Timestamp timestamp1, Timestamp timestamp2) {
		Calendar calendar1 = convertTimestampToCalendar.apply(timestamp1);
		Calendar calendar2 = convertTimestampToCalendar.apply(timestamp2);
		
		Long daysBetween = Math.abs(ChronoUnit.DAYS.between(calendar1.toInstant(), calendar2.toInstant()));
		Long hoursBetween = Math.abs(ChronoUnit.HOURS.between(calendar1.toInstant(), calendar2.toInstant()) % HOURS_PER_DAY);
		Long minutesBetween =  Math.abs(ChronoUnit.MINUTES.between(calendar1.toInstant(), calendar2.toInstant()) % MINUTES_PER_HOUR);
		
		Triplet<Long, Long, Long> daysHoursMinutesTriplet = new Triplet<Long, Long, Long>(daysBetween, hoursBetween, minutesBetween);
		return daysHoursMinutesTriplet;
	}
	
	public static Timestamp getRandomDateUntil(Timestamp maxTimestamp) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(maxTimestamp);
		int hourType = Calendar.HOUR;
		int dayType = Calendar.DAY_OF_MONTH;
		int monthType = Calendar.MONTH;
		int[] types = {hourType, dayType, monthType};
		int typeChoice = types[RandomUtils.nextInt(0, types.length)];
		int numberToRemove = RandomUtils.nextInt(1, 30);
		cal.add(typeChoice, numberToRemove * (-1));
		return new Timestamp(cal.getTimeInMillis());
	}
	
	public static Pair<Long, Long> convertMillisecondsInMinutesAndSeconds(Long milliseconds){
		Long millisecondsToSeconds = (long)Math.ceil(milliseconds / 1000);
		Long minutes = (long)Math.ceil(millisecondsToSeconds / 60);
		Long seconds = millisecondsToSeconds % 60;
		return new Pair<Long, Long>(minutes,seconds);
	}
}
