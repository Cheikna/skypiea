package com.skytech.skypiea.batch.task.implementation;

import java.util.Set;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicReference;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.RoomObjectsFailureAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.RoomObjectsMonitoringAlgorithm;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.State;

@Service
public class RoomObjectsCheckerTask implements ITask {

	private static Logger log = LoggerFactory.getLogger(FailureTask.class);

	@Autowired
	private RoomRepository roomRepository;

	private NonMedicalConnectedObjectAlgorithm roomObjectsFailureAlgorithm = new RoomObjectsFailureAlgorithm();
	private NonMedicalConnectedObjectAlgorithm roomObjectsMonitoringAlgorithm = new RoomObjectsMonitoringAlgorithm();
	
	
	/**
	 * Goal of this job :
	 * - Retrieve all rooms and all of their objects
	 * - For each room : 
	 * we firstly check, for each object, if it is not broken, and if not, we can monitor it.
	 * Secondly, we set the state of the room with the state of the object which has the highest priority
	 * Thirdly, we save the room in the database	
	 */
	@Override
	public void runJob() {
		// Prevent from having the "failed to lazily initialize a collection of role" error
		// Retrieve all rooms of the residence with the objects of each room
		Set<Room> rooms = roomRepository.findAllWithTheirAssociatedObjects();
		// Definition of an atomic reference to be able to modify it in the forEach loop
		AtomicReference<State> currentRoomState = new AtomicReference<State>();
		rooms.forEach((room) -> {			
			log.info("=============== Checking room with door number : " + room.getDoorNumber() + "===============");

			// Retrieving the current state of the room
			State state = room.getState();
			// Default state
			if(state == null) {
				state = State.OPERATIONAL;
			}			
			currentRoomState.set(state);
			
			try {				
				Set<NonMedicalConnectedObject> nonMedicalConnectedObjects = room.getNonMedicalConnectedObjects();
				int numberOfObject = nonMedicalConnectedObjects.size();
				log.info("====> Number of non medical connected object(s) : " + numberOfObject);
				if(nonMedicalConnectedObjects != null && nonMedicalConnectedObjects.size() > 0) {
					nonMedicalConnectedObjects.forEach((nonMedicalConnectedObject) -> {
						log.info("===> Checking object : " + nonMedicalConnectedObject);
						// Get the state of the object before the checking
						State stateBeforeChecking = nonMedicalConnectedObject.getState();
						// Check if the object is broken with the algorithm
						State newObjectState = roomObjectsFailureAlgorithm.check(nonMedicalConnectedObject);
						// Check if the object is not broken and we do not need to monitor it if it is broken
						if(newObjectState != State.BROKEN) {
							// Check if the object is operational and has not detected some danger with the monitoring algorithm
							newObjectState = roomObjectsMonitoringAlgorithm.check(nonMedicalConnectedObject);
						}
						
						// Check if the state of the object is higher than the current state of the room 
						// So that the state of the room will be the higher non medical connected object state
						if(newObjectState.getLevel() > currentRoomState.get().getLevel()) {
							currentRoomState.set(newObjectState);
						}

						log.info("=> State (before -> after) : " + stateBeforeChecking + " -> " + newObjectState);
						
					});
				} else {
					log.info("There are no non medical connected objects in this room !");
					room.setState(State.OPERATIONAL);
				}

				room.setState(currentRoomState.get());
				// Saving the room with its new state and the states of its associated objects
				roomRepository.save(room);

			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		});
	}
}
