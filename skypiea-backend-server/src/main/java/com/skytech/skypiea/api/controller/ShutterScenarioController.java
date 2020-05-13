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

import com.skytech.skypiea.api.service.ShutterScenarioService;
import com.skytech.skypiea.commons.entity.ShutterScenario;


@RestController
@RequestMapping("/shutter-scenarios")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ShutterScenarioController {
	
	@Autowired
	private ShutterScenarioService shutterScenarioService;

	@GetMapping("/{room}")
	public List<ShutterScenario> getShutterScenario(@PathVariable Long room) {
		return shutterScenarioService.findByRoom(room);
	}
	
	@PostMapping("/scenario")
	public ShutterScenario save(@RequestBody ShutterScenario objectToSave) {
		return this.shutterScenarioService.save(objectToSave);
	}

}
