package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ShutterScenarioRepository;
import com.skytech.skypiea.commons.entity.ShutterScenario;


@Service
public class ShutterScenarioService {
	
	private static Logger log = LoggerFactory.getLogger(ShutterScenarioService.class);

	@Autowired
	private ShutterScenarioRepository shutterScenarioRepository;
	
	public List<ShutterScenario> findByRoom(Long room){
		try {
			List<ShutterScenario> shutterScenarios = this.shutterScenarioRepository.findByRoom(room);
			return shutterScenarios;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<ShutterScenario>();
	}
	
	public ShutterScenario save(ShutterScenario objectToSave) {
		ShutterScenario savedObject = null;
		try {
			savedObject = shutterScenarioRepository.save(objectToSave);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return savedObject;
	}	

}
