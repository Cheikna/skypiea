package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.util.ClientDetails;

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
	
	public List<ClientDetails> getClientsDetails(List<Client> clients){
		System.out.println("CLIENT DETAILS");
		List<ClientDetails> clientsDetails = new ArrayList<ClientDetails>();
		ClientDetails oneClientDetails;
		for (Client client : clients) {
			oneClientDetails = new ClientDetails();
			oneClientDetails.setLastName(client.getLastName());
			oneClientDetails.setFirstName(client.getFirstName());
			oneClientDetails.setAge(client.getAge());
			oneClientDetails.setAdress(client.getStreetNumber() + ", " + client.getStreetName() + "\n " + client.getZipCode() + " " + client.getCity());
			oneClientDetails.setPhoneNumber(client.getPhoneNumber());
			oneClientDetails.setEmail(client.getEmail());
			
			oneClientDetails.setNumberOfDisease(new DiseaseService().findNumberOfDiseaseByClientId(client.getId()));
			clientsDetails.add(oneClientDetails);
			System.out.println("ONE : " + oneClientDetails);
		}
		
		return clientsDetails;
	}

}
