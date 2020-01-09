package com.skytech.skypiea.batch.algorithm.implementation;

import com.skytech.skypiea.batch.algorithm.abstracts.RoomObjectAlgorithm;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;

public class BrokenRoomObjectAlgorithm extends RoomObjectAlgorithm {

	@Override
	public State check(NonMedicalConnectedObject nonMedicalConnectedObject) {
		// TODO Faizaan
		return nonMedicalConnectedObject.getState();
		
	}
}
