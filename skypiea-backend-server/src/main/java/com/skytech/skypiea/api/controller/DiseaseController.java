package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.DiseaseService;
import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.enumeration.DiseaseType;

import ch.qos.logback.core.net.server.Client;

@RestController
@RequestMapping("/diseases")
@CrossOrigin(origins="*", allowedHeaders="*")
public class DiseaseController {
	
	@Autowired
	private DiseaseService diseaseService;
	
	@PostMapping("")
	public Disease createNewDisease(@RequestBody Disease disease) {
		return diseaseService.save(disease);
	}	
	
	@GetMapping("")
	public List<Disease> getDisease() {
		return diseaseService.findAll();
	}

	@GetMapping("/diseases/{id}")
	public List<Disease> getDiseaseByClient(@PathVariable Long id) {
		return this.diseaseService.findByClientId(id);
	}
	
	

}
