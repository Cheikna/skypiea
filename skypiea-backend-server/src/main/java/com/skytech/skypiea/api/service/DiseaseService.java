package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.DiseaseRepository;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.enumeration.DiseaseType;

@Service
public class DiseaseService {
	
	@Autowired
	private DiseaseRepository diseaseRepository;
	
	public Disease save(Disease disease/*, int id_client*/) {
		/*Client client = new Client();
		client.getId();*/
		System.out.println(disease);
		return diseaseRepository.save(disease);
	}

	public List<Disease> findAll(){
		List<Disease> diseases = this.diseaseRepository.findAll();
		return diseases;
	}
}
