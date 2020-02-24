package com.skytech.skypiea.api.service;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;
import com.skytech.skypiea.commons.statistic.FailureRate;
import com.skytech.skypiea.commons.statistic.StateRate;

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
	
	public StateRate getStateRate(String dateBeginInString, String dateEndInString) {
		try { 
			StateRate stateRate = new StateRate();
			/*dateBeginInString = dateBeginInString.replace('T', ' ');
			dateEndInString = dateEndInString.replace('T', ' ');
			Timestamp dateBegin = Timestamp.valueOf(dateBeginInString);
			Timestamp dateEnd = Timestamp.valueOf(dateEndInString);*/
			List<NonMedicalConnectedObject> objects = nonMedicalConnectedObjectService.findAllWithEvents();
			for(NonMedicalConnectedObject object : objects) {
				stateRate.put(object.getNonMedicalObjectType(), 1L);
				System.out.println(object);
			}
			return stateRate;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
