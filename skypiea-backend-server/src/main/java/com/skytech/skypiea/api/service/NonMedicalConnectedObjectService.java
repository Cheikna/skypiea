package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;


@Service
public class NonMedicalConnectedObjectService {
	
	private static Logger log = LoggerFactory.getLogger(NonMedicalConnectedObjectService.class);

	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
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
	
}
