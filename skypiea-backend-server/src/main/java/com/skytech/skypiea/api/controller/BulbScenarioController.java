package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.BulbScenarioService;
import com.skytech.skypiea.commons.entity.BulbScenario;

@RestController
@RequestMapping("/bulb-scenarios")
@CrossOrigin(origins="*", allowedHeaders="*")
public class BulbScenarioController {

	@Autowired
	private BulbScenarioService bulbScenarioService;

	@GetMapping("/{room}")
	public List<BulbScenario> getBulbScenario(@PathVariable Long room) {
		return bulbScenarioService.findByRoom(room);
	}
		
	@PostMapping("/scenario")
	public BulbScenario save(@RequestBody BulbScenario objectToSave) {
		return this.bulbScenarioService.save(objectToSave);
	}
	
	@PostMapping("/scenario/bulb/delete")
	public boolean delete(@RequestBody Long id){
		return bulbScenarioService.delete(id);
	}
	
		
}

