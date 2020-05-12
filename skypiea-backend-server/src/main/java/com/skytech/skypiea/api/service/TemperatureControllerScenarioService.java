package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.api.repository.ObjectSettingRepository;
import com.skytech.skypiea.api.repository.TemperatureControllerScenarioRepository;
import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.entity.TemperatureControllerScenario;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.object.statistic.NonMedicalObjectStatistic;
import com.skytech.skypiea.commons.object.statistic.NonMedicalObjectStatisticFactory;
import com.skytech.skypiea.commons.object.statistic.ObjectStatisticFilter;
import com.skytech.skypiea.commons.util.DateUtil;


@Service
public class TemperatureControllerScenarioService {
	

	private static Logger log = LoggerFactory.getLogger(TemperatureControllerScenarioService.class);

	@Autowired
	private TemperatureControllerScenarioRepository temperatureControllerScenarioRepository;
	
	public List<TemperatureControllerScenario> findByRoom(Long room){
		try {
			List<TemperatureControllerScenario> temperatureControllerScenarios = this.temperatureControllerScenarioRepository.findByRoom(room);
			return temperatureControllerScenarios;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<TemperatureControllerScenario>();
	}
	
	public TemperatureControllerScenario save(TemperatureControllerScenario objectToSave) {
		TemperatureControllerScenario savedObject = null;
		try {
			savedObject = temperatureControllerScenarioRepository.save(objectToSave);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return savedObject;
	}	
	

	
}
