package com.skytech.skypiea.batch.service;

import java.sql.Timestamp;
import java.util.List;

import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.service.NonMedicalConnectedObjectService;
import com.skytech.skypiea.api.service.RoomService;
import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.RoomObjectsFailureAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.RoomObjectsMonitoringAlgorithm;
import com.skytech.skypiea.batch.cache.CacheFactory;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.RealTimeEvent;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.EventType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.StringFormatterUtil;
import com.skytech.skypiea.commons.util.Util;

@Service
public class RoomObjectsSurveillanceService implements IMessageProcessor {
	
	private static Logger log = LoggerFactory.getLogger(RoomObjectsSurveillanceService.class);
	
	@Autowired
	private NonMedicalConnectedObjectService nonMedicalConnectedObjectService;
	
	@Autowired
	private RoomService roomService;
	
	private NonMedicalConnectedObjectAlgorithm failureAlgo = new RoomObjectsFailureAlgorithm();
	private NonMedicalConnectedObjectAlgorithm monitoringAlgo = new RoomObjectsMonitoringAlgorithm();
	
	public synchronized void processObjectMessage(Message message) {
		try {
			log.info("Processing message : " + message.toString());
			String ipAddress = message.getIpAddress();
			//Search the medical object in the cache according to its ID
			NonMedicalConnectedObject nonMedicalConnectedObject = CacheFactory.getMemoryCache().getNonMedicalConnectedObjectByIpAddress(ipAddress);
			
			if(nonMedicalConnectedObject != null) {
				log.debug("Object found : " + nonMedicalConnectedObject.toString());
				Long objectId = nonMedicalConnectedObject.getId();
				State objectStateBeforeAlgo = nonMedicalConnectedObject.getState();
				State newObjectState = State.getDefaultState();
				
				CacheInfo cacheInfo = CacheFactory.getMemoryCache().getCacheInfoByNonMedicalConnectedObjectId(objectId);
				
				if(cacheInfo == null) {
					cacheInfo = new CacheInfo();
					cacheInfo.setCurrentState(objectStateBeforeAlgo);
				}	
				
				log.debug("Object state before running algos : " + cacheInfo.getCurrentState());		
				
				cacheInfo = failureAlgo.check(nonMedicalConnectedObject, message, cacheInfo);
				EventType eventType = EventType.FAILURE;
				newObjectState = cacheInfo.getCurrentState();
				
				log.debug("Object state after failure check : " + newObjectState);
				
				// If the object is not broken we can monitor it
				if(newObjectState != State.BROKEN) {
					eventType = EventType.MONITORING;
					cacheInfo = monitoringAlgo.check(nonMedicalConnectedObject, message, cacheInfo);	
					newObjectState = cacheInfo.getCurrentState();
					log.debug("Object state after monitoring check : " + newObjectState);
				}		

				// This boolean value is changed in the cacheInfo object
				boolean saveCacheInfo = cacheInfo.isCacheInfoNeedToBeSavedInDatabase();
				if(saveCacheInfo) {
					/**
					 * If the new state is OPERATIONNAL and the old one is not OPERATIONNAL,
					 * we save it as a history to keep track of all danger or broken or warning
					 * that occurred on the object
					 */
					boolean saveHistory = false;
					if(objectStateBeforeAlgo != null 
							&& newObjectState == State.OPERATIONAL 
							&& objectStateBeforeAlgo != State.OPERATIONAL) {
						saveHistory = true;
					}
					
					nonMedicalConnectedObject = saveNonMedicalConnectedObjectEvent(objectId, cacheInfo, eventType, saveHistory);
					cacheInfo.setIsCacheInfoNeedToBeSavedInDatabase(false);
				}
				if(objectStateBeforeAlgo != newObjectState) {
					updateRoomState(nonMedicalConnectedObject.getRoom());		
				}

				if(cacheInfo.getCurrentState() == State.OPERATIONAL) {
					cacheInfo.reset();
				}
				
				displayAlgoResult(nonMedicalConnectedObject, cacheInfo, saveCacheInfo);
				
				CacheFactory.getMemoryCache().addNonMedicalConnectedObject(nonMedicalConnectedObject);
				CacheFactory.getMemoryCache().addCacheInfoByNonMedicalConnectedObjectId(objectId, cacheInfo);
			} else {
				log.info("The object with the ID " + ipAddress + " does not exist");
			}
		} catch (Exception e) {
			//log.error(e.getMessage());
			log.error(e.getStackTrace().toString());
			e.printStackTrace();
		}
	}
	
	private NonMedicalConnectedObject saveNonMedicalConnectedObjectEvent(Long objectId, CacheInfo cacheInfo, EventType eventType, boolean saveHistory) {
		//Retrieve the last version of the object
		NonMedicalConnectedObject nonMedicalConnectedObject = nonMedicalConnectedObjectService.findById(objectId);
		log.debug("Saving the new state in the database");
		if(saveHistory) {
			//Retrieve the current realTime event attached at the object
			RealTimeEvent realTimeEventToArchive = nonMedicalConnectedObject.getRealTimeEvent();
			if(realTimeEventToArchive != null) {
				log.debug("Saving the old value in the history : " + realTimeEventToArchive.toString());
				HistoryEvent historyEvent = new HistoryEvent();
				historyEvent.cloneFromRealTimeEvent(realTimeEventToArchive);
				nonMedicalConnectedObject.getHistoryEvents();
				nonMedicalConnectedObject.getHistoryEvents().add(historyEvent);
			}
		}
		
		RealTimeEvent realTimeEvent = cacheInfo.convertToRealTimeEvent(eventType);
		if(realTimeEvent != null) {
			log.debug("Saving the new realTimeEvent : " + realTimeEvent.toString());
		}
		nonMedicalConnectedObject.setRealTimeEvent(realTimeEvent);
		nonMedicalConnectedObject.setState(cacheInfo.getCurrentState());
		nonMedicalConnectedObject = nonMedicalConnectedObjectService.save(nonMedicalConnectedObject);
		return nonMedicalConnectedObject;
	}

	private void updateRoomState(Room objectRoom) {
		State roomState = objectRoom.getState();
		
		log.debug("Updating room state, previous sate : " + roomState);
		List<NonMedicalConnectedObject> roomObjects = nonMedicalConnectedObjectService.findByRoomId(objectRoom.getId());
		NonMedicalConnectedObject objectWithHigherState = (NonMedicalConnectedObject) Util.getObjectWithHighestState(roomObjects);
		
		if(objectWithHigherState != null) {
			roomState = objectWithHigherState.getState();
		}
		
		log.debug("Room state updated, new state : " + roomState);
		objectRoom.setState(roomState);
		roomService.save(objectRoom);
	}
	
	private void displayAlgoResult(NonMedicalConnectedObject object, CacheInfo cacheInfo, boolean isSavedInDB) {
		String warningCount = cacheInfo.getWarningMessageCount() + "/" + object.getSensitivity();
		Pair<Timestamp, String> lastValue = cacheInfo.getLastValue();
		String value = "";
		if(lastValue != null) {
			value = lastValue.getValue1();
		}
		String result = "\n" + StringFormatterUtil.formatRoomAlgoResult(object.getIpAddress(), object.getNonMedicalObjectType().name(), cacheInfo.getCurrentState().name(), warningCount, value, isSavedInDB);
		log.info(result);
	}
}