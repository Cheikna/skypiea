package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.commons.entity.Room;

@Service
public class RoomService {
	
	private static Logger log = LoggerFactory.getLogger(RoomService.class);
	
	@Autowired
	private RoomRepository roomRepository;
	
	public List<Room> findAll(){
		List<Room> rooms = null;
		try {
			rooms = this.roomRepository.findAll();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
			rooms = new ArrayList<Room>();
		}
		return rooms;
	}
	
	public Room findByDoorNumber(Long doorNumber) {
		Room room = null;
		try {
			List<Room> rooms = roomRepository.findByDoorNumber(doorNumber);
			
			if(rooms != null && rooms.size() > 0) {
				room = rooms.get(0);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		
		return room;
	}
	
	public List<Room> getRoomsSummary(){
		List<Room> rooms = findAll();
		rooms.forEach((room) -> {
			room.initObjectQuantityByType();
			room.setNumberOfNonMedicalObjects(room.getNonMedicalConnectedObjects().size());
		}); 
		return rooms;	
	}
	
	public Room findByResidentId(Long id) {
		Room room = null;
		
		try {
			List<Room> rooms = roomRepository.findByResidentId(id);
			
			if(rooms != null && rooms.size() > 0) {
				room = rooms.get(0);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		
		return room;
	}
	
	public Room save(Room room) {
		Room savedRoom = null;
		try {
			savedRoom = roomRepository.save(room);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}		
		
		return savedRoom;
	}
	
	public Room findById(Long roomId) {
		Room room = null;
		try {
			room = roomRepository.findById(roomId).get();
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return room;
	}

}
