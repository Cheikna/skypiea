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

import com.skytech.skypiea.api.service.NonMedicalConnectedObjectService;
import com.skytech.skypiea.api.service.TemperatureControllerScenarioService;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.entity.TemperatureControllerScenario;

@RestController
@RequestMapping("/temperature-controller-scenarios")
@CrossOrigin(origins="*", allowedHeaders="*")
public class TemperatureControllerScenarioController {
	
	@Autowired
	private TemperatureControllerScenarioService temperatureControllerScenarioService;

	@GetMapping("/{room}")
	public List<TemperatureControllerScenario> getTemperatureControllerScenario(@PathVariable Long room) {
		return temperatureControllerScenarioService.findByRoom(room);
	}
	
	@PostMapping("/scenario")
	public TemperatureControllerScenario save(@RequestBody TemperatureControllerScenario objectToSave) {
		return this.temperatureControllerScenarioService.save(objectToSave);
	}
}
