package com.skytech.skypiea.api.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.DiseaseRepository;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.DiseaseType;

@Service
public class DiseaseService {
	
	private static Logger log = LoggerFactory.getLogger(DiseaseService.class);
	
	@Autowired
	private DiseaseRepository diseaseRepository;
	
	public Disease save(Disease disease/*, int id_client*/) {
		/*Client client = new Client();
		client.getId();*/
		return diseaseRepository.save(disease);
	}

	public List<Disease> findAll(){
		List<Disease> diseases = this.diseaseRepository.findAll();
		return diseases;
	}
	
	/*public List<Disease> findAllDiseaseOfAClient(Long idClient){
		Disease disease = null;
		List<Disease> diseases = null;
		try {
			diseases = diseaseRepository.findAllDiseaseOfAClient(idClient);
			
			if(diseases != null && diseases.size() > 0) {
				disease = diseases.get(0);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		
		return diseases;
	}*/
}
