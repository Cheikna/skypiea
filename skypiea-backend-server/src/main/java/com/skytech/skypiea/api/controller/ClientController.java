package com.skytech.skypiea.api.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.ClientService;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.util.ClientDetails;

@RestController
@RequestMapping("/clients")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ClientController {
	
	@Autowired
	private ClientService clientService;
	

	@PostMapping("")
	public Client createNewClient(@RequestBody Client client) {
		return clientService.save(client);
	}	
	
	@GetMapping("")
	public List<Client> getClients() {
		return clientService.findAll();
	}
	
	@GetMapping("/priorityPointsDiseaseIncomeCriteria")
	public void getPriorityPointsPerClientsDiseaseIncomeCriteria() {
		clientService.calculOfPriorityPointsForAClientDiseaseIncomeCriteria();
	}
	
	@GetMapping("/priorityPointsDiseaseCriteriaIncome")
	public void getPriorityPointsPerClientsDiseaseCriteriaIncome() {
		clientService.calculOfPriorityPointsForAClientDiseaseCriteriaIncome();
	}
	
	@GetMapping("/priorityPointsIncomeDiseaseCriteria")
	public void getPriorityPointsPerClientsIncomeDiseaseCriteria() {
		clientService.calculOfPriorityPointsForAClientIncomeDiseaseCriteria();
	}
	
	@GetMapping("/priorityPointsIncomeCriteriaDisease")
	public void getPriorityPointsPerClientsIncomeCriteriaDisease() {
		clientService.calculOfPriorityPointsForAClientIncomeCriteriaDisease();
	}
	
	@GetMapping("/priorityPointsCriteriaIncomeDisease")
	public void getPriorityPointsPerClientsCriteriaIncomeDisease() {
		clientService.calculOfPriorityPointsForAClientCriteriaIncomeDisease();
	}
	
	@GetMapping("/priorityPointsCriteriaDiseaseIncome")
	public void getPriorityPointsPerClientsCriteriaDiseaseIncome() {
		clientService.calculOfPriorityPointsForAClientCriteriaDiseaseIncome();
	}
	
	@PostMapping("/sortedList")
	public List<ClientDetails> sortedClientDetailsList(@RequestBody List<ClientDetails> clientDetails) {
		return clientService.sortClientDetailsListByPriorityPoints(clientDetails);
	}
}
