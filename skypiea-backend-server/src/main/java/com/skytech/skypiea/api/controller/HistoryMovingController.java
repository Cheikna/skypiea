package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.HistoryMovingService;
import com.skytech.skypiea.commons.entity.HistoryMoving;


@RestController
@RequestMapping("/historymoving")
@CrossOrigin(origins="*", allowedHeaders="*")
public class HistoryMovingController {

	@Autowired
	private HistoryMovingService historyMovingService;

	@GetMapping("")
	public List<HistoryMoving> getHistoryMoving() {
		return historyMovingService.findAll();
	}

	@PostMapping("")
	public HistoryMoving createHistoryMoving(@RequestBody HistoryMoving historyMoving){
		return historyMovingService.createOrUpdate(historyMoving);
	}

	@DeleteMapping("/{id}")
	public boolean deleteHistoryMoving(@PathVariable Long id){
		return historyMovingService.delete(id);
	}

	@GetMapping("/{id}")
	public HistoryMoving getHistoryMovingById(@PathVariable Long id) {
		return historyMovingService.findById(id);
	}

}
