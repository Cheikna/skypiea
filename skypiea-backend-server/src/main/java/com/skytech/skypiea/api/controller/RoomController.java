package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.RoomService;
import com.skytech.skypiea.commons.entity.Room;

@RestController
@RequestMapping("/rooms")
@CrossOrigin(origins="*", allowedHeaders="*")
public class RoomController {
	
	@Autowired
	private RoomService roomService;
	
	@GetMapping("")
	public List<Room> findAll() {
		return roomService.findAll();
	}
	
	@GetMapping("/summary")
	public List<Room> getSummary() {
		return roomService.getRoomsSummary();	
	}
	
	@GetMapping("/{doorNumber}")
	public Room getRoomDetails(@PathVariable Long doorNumber) {
		return this.roomService.findByDoorNumber(doorNumber);
	}
	
	@GetMapping("/resident/{id}")
	public Room getResidentRoomDetails(@PathVariable Long id) {
		return this.roomService.findByResidentId(id);
		
	}
}
