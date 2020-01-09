package com.skytech.skypiea.batch.task.implementation;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.batch.algorithm.abstracts.RoomObjectAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.BrokenRoomObjectAlgorithm;
import com.skytech.skypiea.batch.task.abstracts.ITask;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.State;

@Service
public class RoomObjectsCheckerTask implements ITask {

	private static Logger log = LoggerFactory.getLogger(FailureTask.class);

	@Autowired
	private RoomRepository roomRepository;

	private RoomObjectAlgorithm brokenRoomObjectsAlgorithm = new BrokenRoomObjectAlgorithm();


	@Override
	public void runJob() {
		// Prevent from having the "failed to lazily initialize a collection of role" error
		// Retrieve all rooms of the residence with the objects of each room
		Set<Room> rooms = roomRepository.findAllWithTheirAssociatedObjects();
		rooms.forEach((room) -> {
			log.info("=============== Checking room with door number : " + room.getDoorNumber() + "===============");
			try {				
				Set<NonMedicalConnectedObject> nonMedicalConnectedObjects = room.getNonMedicalConnectedObjects();
				int numberOfObject = nonMedicalConnectedObjects.size();
				log.info("====> Number of non medical connected object(s) : " + numberOfObject);
				if(nonMedicalConnectedObjects != null && nonMedicalConnectedObjects.size() > 0) {
					nonMedicalConnectedObjects.forEach((nonMedicalConnectedObject) -> {
						log.info("===> Checking object : " + nonMedicalConnectedObject);
						// Get the stqte of the object before the checking
						State stateBeforeChecking = nonMedicalConnectedObject.getState();
						// Check if the object is broken with the algorithm
						State newObjectState = brokenRoomObjectsAlgorithm.check(nonMedicalConnectedObject);
						// check if the object is not broken and we do not need to monitor it if it is broken
						if(newObjectState != State.BROKEN) {
							// TODO Monitoring
						}

						log.info("=> State (before > after) : " + stateBeforeChecking + " > " + newObjectState);
					});
				} else {
					log.info("There are no non medical connected objects in this room !");
				}

			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		});
	}
}
