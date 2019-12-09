package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.CharacterService;
import com.skytech.skypiea.api.service.TrackBoardService;
import com.skytech.skypiea.commons.entity.Character;
import com.skytech.skypiea.commons.entity.TrackBoard;

@RestController
@RequestMapping("/trackboard")
@CrossOrigin(origins="*", allowedHeaders="*")
public class TrackBoardController {
	
	@Autowired
	private TrackBoardService trackBoardService;
	
	@GetMapping("")
	public List<TrackBoard> getTrackBoards() {
		return trackBoardService.findAll();
	}
	
	@PostMapping("")
	public TrackBoard createTrackBoard(@RequestBody TrackBoard trackBoard){
		return trackBoardService.createOrUpdate(trackBoard);
	}
	
	@DeleteMapping("/{id}")
	public boolean deleteTrackBoard(@PathVariable Long id){
		return trackBoardService.delete(id);
	}
	
	@GetMapping("/{id}")
	public TrackBoard getById(@PathVariable Long id) {
		return trackBoardService.findById(id);
	}
	
	

}
