package com.skytech.skypiea.batch.algorithm.implementation;

import java.util.Set;

import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.AlarmClock;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.SmokeSensor;
import com.skytech.skypiea.commons.entity.TemperatureController;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;

public class RoomObjectsFailureAlgorithm extends NonMedicalConnectedObjectAlgorithm {

	@Override
	public CacheInfo check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage,
			CacheInfo cacheInfo) {
		// TODO Auto-generated method stub
		return null;
	}

	
}
