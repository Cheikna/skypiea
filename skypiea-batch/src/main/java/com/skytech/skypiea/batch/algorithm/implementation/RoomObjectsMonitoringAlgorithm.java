package com.skytech.skypiea.batch.algorithm.implementation;

import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;

public class RoomObjectsMonitoringAlgorithm extends NonMedicalConnectedObjectAlgorithm {

	private static Logger log = LoggerFactory.getLogger(RoomObjectsMonitoringAlgorithm.class);
	
	@Override
	public CacheInfo check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage, CacheInfo cacheInfo) {
		NonMedicalObjectType type = nonMedicalConnectedObject.getNonMedicalObjectType();
		ObjectSetting currentSetting = nonMedicalConnectedObject.getCurrentSetting();
		
		if(type == NonMedicalObjectType.SMOKE_SENSOR) {
			cacheInfo = smokeSensorMonitoring(currentSetting, receivedMessage, cacheInfo);
		} 
		
		// Increase the state to DANGER if the number of warning message received is higher than the sensitivity of the objects
		Long sensitivity = nonMedicalConnectedObject.getSensitivity();
		Long warningCount = cacheInfo.getWarningMessageCount();
		
		// Set the state to danger if the number of warning message has reached the object sensitivity
		if(cacheInfo.getCurrentState() == State.WARNING && warningCount >= sensitivity) {
			cacheInfo.setCurrentState(State.DANGER);
			// Enable the save only the first time which mean when the warning count is equal to the sensitivity
			boolean needToBeSaved = (warningCount == sensitivity);
			cacheInfo.setIsCacheInfoNeedToBeSavedInDatabase(needToBeSaved);
		}
		
		return cacheInfo;		
	}
	
	private CacheInfo smokeSensorMonitoring(ObjectSetting setting, Message message, CacheInfo cacheInfo) {
		//SmokeSensor castedSetting = (SmokeSensor)setting;
		String comments = "";
		Long thresholdFromMessage = NumberUtils.toLong(message.getValue1());
		
		if(thresholdFromMessage <= 100) 
		{
			comments = "";
			cacheInfo.setCurrentState(State.OPERATIONAL);
		} 
		else 
		{			
			cacheInfo.setCurrentState(State.WARNING);
			cacheInfo.increaseWarningMessageCount();
			
			if(thresholdFromMessage <= 200) {
				comments = "Patients are suceptible to have headache";				
			} else if(thresholdFromMessage <= 400) {
				comments = "Risk of death after 3 hours";				
			} else if(thresholdFromMessage <= 800) {
				comments = "Unconsciousness in 45min and risk of death after 2 hours";				
			} else if(thresholdFromMessage <= 1600) {
				comments = "Risk of death in the hour";				
			} else{
				comments = "Direct Unconsciousness and death in 1 minute";				
			}
		}		
		
		cacheInfo.setComments(comments);
		return cacheInfo;
	}
}
