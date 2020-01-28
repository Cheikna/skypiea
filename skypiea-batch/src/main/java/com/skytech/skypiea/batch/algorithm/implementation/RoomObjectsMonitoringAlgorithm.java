package com.skytech.skypiea.batch.algorithm.implementation;

import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;

public class RoomObjectsMonitoringAlgorithm extends NonMedicalConnectedObjectAlgorithm {

	@Override
	public State check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage) {
		// TODO Cheikna
		return nonMedicalConnectedObject.getState();		
	}
}
