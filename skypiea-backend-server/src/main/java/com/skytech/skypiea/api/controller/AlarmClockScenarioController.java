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

import com.skytech.skypiea.api.service.AlarmClockScenarioService;
import com.skytech.skypiea.commons.entity.AlarmClockScenario;

@RestController
@RequestMapping("/alarm-clock-scenarios")
@CrossOrigin(origins="*", allowedHeaders="*")
public class AlarmClockScenarioController {
	@Autowired
	private AlarmClockScenarioService alarmClockScenarioService;

	@GetMapping("/{room}")
	public List<AlarmClockScenario> getAlarmClockScenario(@PathVariable Long room) {
		return alarmClockScenarioService.findByRoom(room);
	}
	
	@PostMapping("/scenario")
	public AlarmClockScenario save(@RequestBody AlarmClockScenario objectToSave) {
		return this.alarmClockScenarioService.save(objectToSave);
	}
	
	@PostMapping("/scenario/alarm-clock/delete")
	public boolean delete(@RequestBody Long id){
		return alarmClockScenarioService.delete(id);
	}
}

