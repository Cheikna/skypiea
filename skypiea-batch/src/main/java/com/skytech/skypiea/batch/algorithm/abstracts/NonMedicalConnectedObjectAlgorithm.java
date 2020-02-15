package com.skytech.skypiea.batch.algorithm.abstracts;

import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.message.Message;

public abstract class NonMedicalConnectedObjectAlgorithm {
	
	//private List<ApplicationParameter> applicationParameters;
	
	public CacheInfo check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage) {
		return check(nonMedicalConnectedObject, receivedMessage, null);
	}
	
	public abstract CacheInfo check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage, CacheInfo cacheInfo);
	
}
