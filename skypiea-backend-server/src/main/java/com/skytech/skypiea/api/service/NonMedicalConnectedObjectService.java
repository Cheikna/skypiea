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
import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.object.statistic.NonMedicalObjectStatistic;
import com.skytech.skypiea.commons.object.statistic.NonMedicalObjectStatisticFactory;
import com.skytech.skypiea.commons.object.statistic.ObjectStatisticFilter;
import com.skytech.skypiea.commons.util.DateUtil;


@Service
public class NonMedicalConnectedObjectService {
	

	private static Logger log = LoggerFactory.getLogger(NonMedicalConnectedObjectService.class);

	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
	@Autowired
	private ObjectSettingRepository objectSettingRepository;
	
	public List<NonMedicalConnectedObject> findAll(){
		try {
			List<NonMedicalConnectedObject> nonMedicalConnectedObjects = this.nonMedicalConnectedObjectRepository.findAll();
			return nonMedicalConnectedObjects;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<NonMedicalConnectedObject>();
	}
	
	@Transactional
	public NonMedicalConnectedObject findById(Long id) {
		NonMedicalConnectedObject object = null;
		try {
			object = nonMedicalConnectedObjectRepository.findById(id).get();
			Hibernate.initialize(object.getHistoryEvents());
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return object;
	}
	
	public NonMedicalConnectedObject save(NonMedicalConnectedObject objectToSave) {
		NonMedicalConnectedObject savedObject = null;
		try {
			savedObject = nonMedicalConnectedObjectRepository.save(objectToSave);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return savedObject;
	}	
	
	public List<NonMedicalConnectedObject> findByRoomId(Long roomId){
		try {
			List<NonMedicalConnectedObject> nonMedicalConnectedObjects = this.nonMedicalConnectedObjectRepository.findByRoomId(roomId);
			return nonMedicalConnectedObjects;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<NonMedicalConnectedObject>();
	}
	
	@Transactional
	public ObjectSetting saveNewSetting(Long objectId, ObjectSetting objectSetting) {
		ObjectSetting savedSetting = null;
		try {
			NonMedicalConnectedObject object = findById(objectId);
			
			if(object != null) {
				objectSetting.setId(0L);
				objectSetting.setVersion(0L);
				objectSetting.setSavingDate(DateUtil.getCurrentTimestamp());
				objectSetting.setNonMedicalConnectedObject(object);
				savedSetting = objectSettingRepository.save(objectSetting);	
				if(object.getStatus() != savedSetting.getStatus()) {
					object.setStatus(objectSetting.getStatus());
					save(object);
				}
				
			} else {
				throw new Exception("Object with ID " + objectId + " not found !");
			}
			
			
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return savedSetting;
	}

	public NonMedicalObjectStatistic getStatistics(Long objectId, ObjectStatisticFilter filter) {
		NonMedicalConnectedObject object = findById(objectId);
		NonMedicalObjectStatistic statistic = null;
		if(object != null) {
			Set<ObjectSetting> settings = object.getBoundedObjectSettings(filter);	
			Set<HistoryEvent> events = object.getBoundedHistoryEvents(filter);
			NonMedicalObjectType type = object.getNonMedicalObjectType();
			statistic = NonMedicalObjectStatisticFactory.getStatistic(type, settings, events);
		}
		return statistic;
	}
	
	
	//@Transactional
	public List<NonMedicalConnectedObject> findAllWithEvents(){
		try {
			List<NonMedicalConnectedObject> nonMedicalConnectedObjects = this.nonMedicalConnectedObjectRepository.findAll();
			for(NonMedicalConnectedObject object : nonMedicalConnectedObjects) {
				//Hibernate.initialize(object.getHistoryEvents());
				//object.getHistoryEvents().size();
			}
			return nonMedicalConnectedObjects;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<NonMedicalConnectedObject>();
	}

	
}
