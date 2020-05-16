package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.BulbScenarioRepository;
import com.skytech.skypiea.commons.entity.BulbScenario;

@Service
public class BulbScenarioService {
	private static Logger log = LoggerFactory.getLogger(AlarmClockScenarioService.class);

	@Autowired
	private BulbScenarioRepository bulbScenarioRepository;
	
	public List<BulbScenario> findByRoom(Long room){
		try {
			List<BulbScenario> bulbScenarios = this.bulbScenarioRepository.findByRoom(room);
			return bulbScenarios;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<BulbScenario>();
	}
	
	public BulbScenario save(BulbScenario objectToSave) {
		BulbScenario savedObject = null;
		try {
			savedObject = bulbScenarioRepository.save(objectToSave);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return savedObject;
	}	
	

}
