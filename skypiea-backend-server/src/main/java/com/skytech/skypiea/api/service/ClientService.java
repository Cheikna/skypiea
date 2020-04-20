package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.commons.entity.Client;

@Service
public class ClientService {
	
	@Autowired
	private ClientRepository clientRepository;

	public List<Client> findAll(){
		List<Client> clients = this.clientRepository.findAll();
		return clients;
	}
	
	public Client save(Client client) {
		return clientRepository.save(client);
	}
	
	public void sortedClientListByDisease() {
		List<Client> clientSorted = findAll();
		DiseaseService diseaseService = new DiseaseService();
		//numberOfDisease = diseaseService.findNumberOfDiseaseByClientId(idClient);
	}
	
	
	public int calculOfPriorityPointsForAClient(Long idClient) {
		int priorityPoints = 0;
		int numberOfDisease;
		String criteria;
		DiseaseService diseaseService = new DiseaseService();
		ProfileService profileService = new ProfileService();
		numberOfDisease = diseaseService.findNumberOfDiseaseByClientId(idClient);
		criteria = profileService.getProfileCriteriaForClient(idClient);
		return priorityPoints;
	}

}
