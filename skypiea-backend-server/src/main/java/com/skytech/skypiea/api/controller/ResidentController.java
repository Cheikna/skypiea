package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.ResidentService;
import com.skytech.skypiea.commons.entity.Resident;

@RestController
@RequestMapping("/residents")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ResidentController {
	
	@Autowired
	private ResidentService residentService;
	
	@GetMapping("")
	public List<Resident> getResidents() {
		return residentService.findAll();
	}
	
	@PostMapping("")
	public Resident createUser(@RequestBody Resident resident){
		return residentService.createOrUpdate(resident);
	}
	
	@DeleteMapping("/{id}")
	public boolean deleteUser(@PathVariable Long id){
		return residentService.delete(id);
	}
	
	@GetMapping("/{id}")
	public Resident getById(@PathVariable Long id) {
		return residentService.findById(id);
	}
}