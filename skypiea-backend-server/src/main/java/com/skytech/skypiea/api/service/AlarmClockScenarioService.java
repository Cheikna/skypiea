package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.AlarmClockScenarioRepository;
import com.skytech.skypiea.commons.entity.AlarmClockScenario;

@Service
public class AlarmClockScenarioService {

	private static Logger log = LoggerFactory.getLogger(AlarmClockScenarioService.class);

	@Autowired
	private AlarmClockScenarioRepository alarmClockScenarioRepository;
	
	public List<AlarmClockScenario> findByRoom(Long room){
		try {
			List<AlarmClockScenario> alarmClockScenarios = this.alarmClockScenarioRepository.findByRoom(room);
			return alarmClockScenarios;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<AlarmClockScenario>();
	}
	
	public AlarmClockScenario save(AlarmClockScenario objectToSave) {
		AlarmClockScenario savedObject = null;
		try {
			savedObject = alarmClockScenarioRepository.save(objectToSave);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return savedObject;
	}	
	
	public boolean delete(Long id) {
		alarmClockScenarioRepository.deleteById(id);
		return true;
	}
	

}
