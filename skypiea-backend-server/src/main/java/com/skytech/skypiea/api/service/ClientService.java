package com.skytech.skypiea.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.commons.entity.Client;

@Service
public class ClientService {
	
	@Autowired
	private ClientRepository clientRepository;
	
	
	public Client save(Client client) {
		return clientRepository.save(client);
	}


}
