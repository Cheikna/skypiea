package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.util.ClientDetails;

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
	
	public void calculOfPriorityPointsForAClientIncomeDiseaseCriteria() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 4;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 0.5;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 12;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		} 
	}
	
	public void calculOfPriorityPointsForAClientIncomeCriteriaDisease() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 0.5;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 4;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 12;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		} 
	}
	
	public void calculOfPriorityPointsForAClientCriteriaDiseaseIncome() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 4;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 12;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 0.5;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		} 
	}
	
	public void calculOfPriorityPointsForAClientCriteriaIncomeDisease() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 0.5;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 12;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 4;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		} 
	}
	
	public void calculOfPriorityPointsForAClientDiseaseIncomeCriteria() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 12;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 0.5;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 4;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		} 
	}
	
	public void calculOfPriorityPointsForAClientDiseaseCriteriaIncome() {
		List<Client> clients = findAll();
		for (Client client : clients) {
			float priorityPoints = 0;
			priorityPoints += diseaseService.findNumberOfDiseaseByClientId(client.getId()) * 12;
			priorityPoints += profileService.getPointsForCriteria(client.getId()) * 4;
			priorityPoints += profileService.getPointsForIncome(client.getId()) * 0.5;
			clientRepository.updateClientForPriorityPoints(priorityPoints, client.getId());
		} 
	}
	
	//La méthode fonctionne correctement mais n'a pas été utilisé car le service était systématiquement appelé à la fin en l'angular
	public List<ClientDetails> sortClientDetailsListByPriorityPoints(List<ClientDetails> clientDetails) {
		return clientDetails.stream().sorted((c1, c2) -> compare(c1.getPriorityPoints(), c2.getPriorityPoints())).collect(Collectors.toList());
	}

	public int compare(float priorityPoints, float priorityPoints2) {
		if (priorityPoints < priorityPoints2) {
			return 1;
		} else if (priorityPoints > priorityPoints2) {
			return -1;
		}
		return 0;
	}

}
