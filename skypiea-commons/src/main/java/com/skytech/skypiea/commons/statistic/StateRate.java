package com.skytech.skypiea.commons.statistic;

import java.util.HashMap;
import java.util.Map;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;

public class StateRate {
	private Map<NonMedicalObjectType, Long> brokenTimeByObjectType;
	private Map<NonMedicalObjectType, Long> numberByType;
	

	public StateRate() {
		brokenTimeByObjectType = new HashMap<NonMedicalObjectType, Long>();
		numberByType = new HashMap<NonMedicalObjectType, Long>();
	}

	public void put(NonMedicalObjectType type, Long time) {
		if (brokenTimeByObjectType.containsKey(type)) {
			time += brokenTimeByObjectType.get(type);
			brokenTimeByObjectType.put(type, time);
			numberByType.put(type, 1L);
		} else {
			brokenTimeByObjectType.put(type, time);
			numberByType.put(type, time);
		}
	}

	public Map<NonMedicalObjectType, Long> getBrokenTimeByObjectType() {
		return brokenTimeByObjectType;
	}

	public void setBrokenTimeByObjectType(Map<NonMedicalObjectType, Long> brokenTimeByObjectType) {
		this.brokenTimeByObjectType = brokenTimeByObjectType;
	}

	public Map<NonMedicalObjectType, Long> getNumberByType() {
		return numberByType;
	}

	public void setNumberByType(Map<NonMedicalObjectType, Long> numberByType) {
		this.numberByType = numberByType;
	}
	
	
	
	
	
}