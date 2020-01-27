package com.skytech.skypiea.batch.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.service.NonMedicalConnectedObjectService;
import com.skytech.skypiea.api.service.RoomService;
import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.RoomObjectsFailureAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.RoomObjectsMonitoringAlgorithm;
import com.skytech.skypiea.commons.message.Message;

@Service
public class RoomObjectsSurveillanceService {
	
	private static Logger log = LoggerFactory.getLogger(RoomObjectsSurveillanceService.class);
	
	@Autowired
	private NonMedicalConnectedObjectService nonMedicalConnectedObjectService;
	
	@Autowired
	private RoomService roomService;
	
	private NonMedicalConnectedObjectAlgorithm failureAlgo = new RoomObjectsFailureAlgorithm();
	private NonMedicalConnectedObjectAlgorithm monitoringAlgo = new RoomObjectsMonitoringAlgorithm();
	
	public synchronized void processObjectMessage(Message message) {
		log.info("Processing message : " + message.toString());
		//TODO find the object from the memory cache
		//TODO find the cache info about the object
		//TODO call the algorithm
		//TODO if we find a state higher than the room state than we update the room state
		//TODO of we find a state lower than the previous state than we search for the object with the higher state in the room
		//TODO save the state of the room with this higher state 
	}

}
