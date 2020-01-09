package com.skytech.skypiea.batch.algorithm.abstracts;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;

public abstract class RoomObjectAlgorithm {
	
	public abstract State check(NonMedicalConnectedObject nonMedicalConnectedObject);

}
