package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;
import com.skytech.skypiea.commons.statistic.FailureRate;

@Service
public class StatisticService {
	
	@Autowired
	private NonMedicalConnectedObjectService nonMedicalConnectedObjectService;
	
	public FailureRate getFailureRate() {
		List<NonMedicalConnectedObject> objects = nonMedicalConnectedObjectService.findAll();
		int numberOfBrokenObjects = 0;
		int numberTotalOfObjects = objects.size();
		int numberOfActiveObjects = 0;
		
		for(NonMedicalConnectedObject object : objects) {
			if (object.getState()== State.BROKEN) {
				numberOfBrokenObjects++;
			}
			if (object.getStatus()== Status.ON) {
				numberOfActiveObjects++;
			}
		}
		FailureRate failureRate = new FailureRate(numberOfBrokenObjects, numberTotalOfObjects, numberOfActiveObjects);
		
		return failureRate;
		
	}

}
