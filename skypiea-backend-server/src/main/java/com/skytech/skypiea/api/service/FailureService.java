package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.FailureRepository;
import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;

@Service
public class FailureService {
	
	@Autowired
	private FailureRepository failureRepository;
	
	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
	public List<NonMedicalConnectedObject> findAllNonMedicalConnectedObjects(){
		List<NonMedicalConnectedObject> objects = new ArrayList<NonMedicalConnectedObject>();
		try {
			objects = nonMedicalConnectedObjectRepository.findAll();
		} catch(Exception e) {
			System.err.println();
		}
		return objects;
	}
	
	

}
