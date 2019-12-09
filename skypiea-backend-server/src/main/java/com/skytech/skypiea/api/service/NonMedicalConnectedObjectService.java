package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;


@Service
public class NonMedicalConnectedObjectService {

	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
	public List<NonMedicalConnectedObject> findAll(){
		List<NonMedicalConnectedObject> nonMedicalConnectedObject = this.nonMedicalConnectedObjectRepository.findAll();
		return nonMedicalConnectedObject;
	}
}
