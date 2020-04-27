package com.skytech.skypiea.batch.task.implementation;

import java.sql.Timestamp;
import java.util.Set;
import java.util.function.Function;

import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.batch.cache.CacheFactory;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.batch.task.abstracts.CheckerTask;
import com.skytech.skypiea.commons.entity.ConnectedObject;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.RealTimeEvent;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.EventType;
import com.skytech.skypiea.commons.enumeration.Parameter;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;
import com.skytech.skypiea.commons.util.DateUtil;
import com.skytech.skypiea.commons.util.StringFormatterUtil;
import com.skytech.skypiea.commons.util.Util;

@Service
public class RoomStateCheckerTask extends CheckerTask {

	private static Logger log = LoggerFactory.getLogger(RoomStateCheckerTask.class);

	@Autowired
	private RoomRepository roomRepository;

	/**
	 * First method of the class which will be called automatically 
	 * because this class inherited indirectly from TimerTask
	 */
	@Override
	public void run() {
		super.run(Parameter.IS_ROOM_BATCH_ACTIVE, Parameter.LAST_ROOM_BATCH_UPDATE);
	}

	/**
	 * Goal of this job :
	 * - Retrieve all rooms and all of their objects
	 * - Set the state of the room with the state of the object which has the highest priority
	 * - Save the room in the database
	 */
	protected void runJob() {
		// Prevent from having the "failed to lazily initialize a collection of role" error
		// Retrieve all rooms of the residence with the objects of each room
		Set<Room> rooms = roomRepository.findAllWithTheirAssociatedObjects();

		rooms.forEach((room) -> {			
			log.info("=============== Checking room with door number : " + room.getDoorNumber() + "===============");

			// Retrieving the current state of the room
			State stateBeforeCheck = room.getState();

			try {				
				Set<NonMedicalConnectedObject> nonMedicalConnectedObjects = room.getNonMedicalConnectedObjects();
				int numberOfObjects = nonMedicalConnectedObjects.size();
				log.info("===> Number of non medical connected object(s) : " + numberOfObjects);
				// Default state in case there is objects to check on
				State highestState = State.getDefaultState();
				if(nonMedicalConnectedObjects != null && nonMedicalConnectedObjects.size() > 0) {
					NonMedicalConnectedObject highestObject = (NonMedicalConnectedObject)Util.getObjectWithHighestState(nonMedicalConnectedObjects, checkConnectedObjectActivity);
					if(highestObject != null) {
						highestState = highestObject.getState();
					} 
				} else {
					log.info("There are no non medical connected objects in this room !");
				}
				log.info("=> State (before -> after) : " + stateBeforeCheck + " -> " + highestState);
				room.setState(highestState);
				// Saving the room with its new state and the states of its associated objects
				roomRepository.save(room);

			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		});
	}
	
	private Function<NonMedicalConnectedObject, State> checkConnectedObjectActivity = (object) -> {
		Long objectId = object.getId();
		State objectState = object.getState();
		Status objectStatus = object.getStatus();
		Long objectFrequency = object.getFrequency();
		boolean isPreviousMessageTooOld = false;
		String comments = "";
		RealTimeEvent realTimeEvent = new RealTimeEvent();
		
		if(objectStatus == Status.ON) {
			Long difference = Long.MAX_VALUE;
			Timestamp currentTimestamp = DateUtil.getCurrentTimestamp();
			Timestamp lastReceivedMessageTimestamp = object.getInstallationDate();
			Pair<Long, Long> minutesAndSeconds = null; 
			
			CacheInfo objectCacheInfo = CacheFactory.getMemoryCache().getCacheInfoByNonMedicalConnectedObjectId(object.getId());
			
			if(objectCacheInfo == null) {
				// The object did not sent any message to the server because no information has been saved in the cache
				comments = "The object did not sent any message since it was on the status ON. ";
				
			} else {
				// The object sent an information but for a long time ago (the time is greater than the normal frequency)
				Timestamp cacheInfoTimestamp = objectCacheInfo.getLastCheckingDate();
				if(cacheInfoTimestamp != null) {
					lastReceivedMessageTimestamp = cacheInfoTimestamp;
				}				
			}			

			difference = Math.abs(currentTimestamp.getTime() - lastReceivedMessageTimestamp.getTime());
			minutesAndSeconds = DateUtil.convertMillisecondsInMinutesAndSeconds(difference);

			if(difference > objectFrequency) {
				object.setState(State.MISSING);
				comments += "It has been " + minutesAndSeconds.getValue0() + " minute(s) and " + minutesAndSeconds.getValue1() + " second(s) since the last recevied message of this object";
				isPreviousMessageTooOld = true;
				
				if(objectCacheInfo != null) {
					objectCacheInfo.setComments(comments);
					objectCacheInfo.setCurrentState(State.MISSING);
					CacheFactory.getMemoryCache().addCacheInfoByNonMedicalConnectedObjectId(objectId, objectCacheInfo);
					realTimeEvent = objectCacheInfo.convertToRealTimeEvent(EventType.FAILURE);
				} else {
					realTimeEvent.setForMissingState(comments);
				}
				object.setRealTimeEvent(realTimeEvent);
			}
			
			displayObjectActivityResult(object, currentTimestamp, lastReceivedMessageTimestamp, minutesAndSeconds, !isPreviousMessageTooOld);
		}
		return object.getState();
	};
	
	private void displayObjectActivityResult(ConnectedObject object, Timestamp currentTimestamp, Timestamp lastReceivedMessageTimestamp, Pair<Long, Long> minutesAndSeconds, Boolean isDifferenceOk) {
		Long id = object.getId();
		String ipAddress = object.getIpAddress();
		String convertedTime = "unknown";
		if(minutesAndSeconds != null) {
			convertedTime = minutesAndSeconds.getValue0() + ":" + minutesAndSeconds.getValue1();
		}
		String frequencyStr = String.valueOf(object.getFrequency() / 1000);
		String result = "\n" + StringFormatterUtil.formatObjectActivityChecker(id, ipAddress, lastReceivedMessageTimestamp, currentTimestamp, convertedTime, frequencyStr, isDifferenceOk, object.getState());
		log.info(result);
	}
}
