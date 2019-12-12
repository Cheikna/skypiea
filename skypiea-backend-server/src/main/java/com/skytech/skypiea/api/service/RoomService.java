package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.commons.entity.Room;

@Service
public class RoomService {
	
	@Autowired
	private RoomRepository roomRepository;
	
	public List<Room> findAll(){
		return this.roomRepository.findAll();
	}
	
	public Room findRoomById(Long id) {
		Room room = null;
		Optional<Room> roomOptionnal = roomRepository.findById(id);
		
		if(roomOptionnal.isPresent()) {
			room = roomOptionnal.get();
		}
		
		return room;
	}
	
	public List<Room> getRoomsSummary(){
		List<Room> rooms = roomRepository.findAll();
		rooms.forEach((room) -> {
			room.initObjectQuantityByType();
			room.setNumberOfNonMedicalObjects(room.getNonMedicalConnectedObjects().size());
			// We do not need the details of the connected objects for the summary
			room.setNonMedicalConnectedObjects(null);
		}); 
		return rooms;	
	}
	
	public Room findByResidentId(Long id) {
		List<Room> rooms = roomRepository.findByResidentId(id);
		Room room = null;
		
		if(rooms != null && rooms.size() > 0) {
			room = rooms.get(0);
		}
		
		return room;
	}

}
