package com.skytech.skypiea.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.ClientService;
import com.skytech.skypiea.commons.entity.Client;

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
}
