package com.skytech.skypiea.batch.task.implementation;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.batch.task.abstracts.CheckerTask;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.Parameter;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.util.Util;

@Service
public class RoomStateCheckerTask extends CheckerTask {

	private static Logger log = LoggerFactory.getLogger(RoomStateCheckerTask.class);

	@Autowired
	private RoomRepository roomRepository;

	/**
	 * First method of the class which will be called automatically 
	 * because this class inherited indirectly from TimerTask
	 */
	@Override
	public void run() {
		super.run(Parameter.IS_ROOM_BATCH_ACTIVE, Parameter.LAST_ROOM_BATCH_UPDATE);
	}

	/**
	 * Goal of this job :
	 * - Retrieve all rooms and all of their objects
	 * - Set the state of the room with the state of the object which has the highest priority
	 * - Save the room in the database
	 */
	protected void runJob() {
		// Prevent from having the "failed to lazily initialize a collection of role" error
		// Retrieve all rooms of the residence with the objects of each room
		Set<Room> rooms = roomRepository.findAllWithTheirAssociatedObjects();

		rooms.forEach((room) -> {			
			log.info("=============== Checking room with door number : " + room.getDoorNumber() + "===============");

			// Retrieving the current state of the room
			State stateBeforeCheck = room.getState();

			try {				
				Set<NonMedicalConnectedObject> nonMedicalConnectedObjects = room.getNonMedicalConnectedObjects();
				int numberOfObjects = nonMedicalConnectedObjects.size();
				log.info("===> Number of non medical connected object(s) : " + numberOfObjects);
				// Default state in case there is objects to check on
				State highestState = State.getDefaultState();
				if(nonMedicalConnectedObjects != null && nonMedicalConnectedObjects.size() > 0) {
					NonMedicalConnectedObject highestObject = (NonMedicalConnectedObject)Util.getObjectWithHighestState(nonMedicalConnectedObjects);
					if(highestObject != null) {
						highestState = highestObject.getState();
					} 
				} else {
					log.info("There are no non medical connected objects in this room !");
				}
				log.info("=> State (before -> after) : " + stateBeforeCheck + " -> " + highestState);
				room.setState(highestState);
				// Saving the room with its new state and the states of its associated objects
				roomRepository.save(room);

			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		});
	}
}
