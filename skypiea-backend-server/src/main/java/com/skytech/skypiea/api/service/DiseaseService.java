package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.DiseaseRepository;
import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;

@Service
public class DiseaseService {
		
	@Autowired
	private DiseaseRepository diseaseRepository;
	
	public Disease save(Disease disease) {
		return diseaseRepository.save(disease);
	}

	public List<Disease> findAll(){
		List<Disease> diseases = this.diseaseRepository.findAll();
		return diseases;
	}
	
	public List<Disease> findByClientId(Long clientId){
		List<Disease> diseases = this.diseaseRepository.findByClientId(clientId);
		return diseases;
	}
}
