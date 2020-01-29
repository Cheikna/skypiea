package com.skytech.skypiea.batch.tasks;

import java.util.Set;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.util.Util;

@Service
public class RoomObjectsCheckerTask extends TimerTask{

	private static Logger log = LoggerFactory.getLogger(RoomObjectsCheckerTask.class);

	@Autowired
	private RoomRepository roomRepository;
	
	/**
	 * Goal of this job :
	 * - Retrieve all rooms and all of their objects
	 * - Set the state of the room with the state of the object which has the highest priority
	 * - Save the room in the database	
	 */
	@Override
	public void run() {
		// Prevent from having the "failed to lazily initialize a collection of role" error
		// Retrieve all rooms of the residence with the objects of each room
		Set<Room> rooms = roomRepository.findAllWithTheirAssociatedObjects();
		
		rooms.forEach((room) -> {			
			log.info("=============== Checking room with door number : " + room.getDoorNumber() + "===============");

			// Retrieving the current state of the room
			State stateBeforeCheck = room.getState();
			State stateAfterCheck = null;
			
			try {				
				Set<NonMedicalConnectedObject> nonMedicalConnectedObjects = room.getNonMedicalConnectedObjects();
				int numberOfObject = nonMedicalConnectedObjects.size();
				log.info("====> Number of non medical connected object(s) : " + numberOfObject);   
				if(nonMedicalConnectedObjects != null && nonMedicalConnectedObjects.size() > 0) {

					NonMedicalConnectedObject higherStateObject = (NonMedicalConnectedObject)Util.getObjectWithHighestState(nonMedicalConnectedObjects);
					if(higherStateObject != null) {
						stateAfterCheck = higherStateObject.getState();
					}
				} else {
					log.info("There are no non medical connected objects in this room !");
				}
				
				if(stateAfterCheck == null) {
					stateAfterCheck = State.getDefaultState();
				}
				log.info("Room state (before check => after check) : " + stateBeforeCheck + " => " + stateAfterCheck);
				room.setState(stateAfterCheck);
				// Saving the room with its new state and the states of its associated objects
				roomRepository.save(room);

			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		});
	}
}
