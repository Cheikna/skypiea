package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.commons.entity.Client;

@Service
public class ClientService {
	
	@Autowired
	private ClientRepository clientRepository;
	
	@Autowired
	private DiseaseService diseaseService;
	
	@Autowired
	private ProfileService profileService;
	
	public List<Client> findAll(){
		List<Client> clients = this.clientRepository.findAll();
		return clients;
	}
	
	public Client save(Client client) {
		return clientRepository.save(client);
	}
	
	public void calculOfPriorityPointsForAClient() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 12;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 0.5;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 4;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		}
	}

}
