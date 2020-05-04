package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.DiseaseRepository;
import com.skytech.skypiea.commons.entity.Disease;

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
	
	public int findNumberOfDiseaseByClientId(Long id) {
		List<Disease> diseases = new ArrayList<Disease>();
		try {
			System.out.println("ID NB DISEASE : " + id);
			diseases = diseaseRepository.findByClientId(id);
//			System.out.println("Diseases : " + diseases.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return diseases.size();
	}
}
