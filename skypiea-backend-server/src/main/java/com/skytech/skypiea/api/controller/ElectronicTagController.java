package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.ElectronicTagService;
import com.skytech.skypiea.commons.entity.ElectronicTag;

@RestController
@RequestMapping("/electronictag")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ElectronicTagController {
	
	@Autowired
	private ElectronicTagService electronicTagService;
	
	@GetMapping("")
	public List<ElectronicTag> getElectronicTags() {
		return electronicTagService.findAll();
	}
	
	@PostMapping("")
	public ElectronicTag createETag(@RequestBody ElectronicTag eTag){
		return electronicTagService.createOrUpdate(eTag);
	}
	
	@DeleteMapping("/{id}")
	public boolean deleteETag(@PathVariable Long id){
		return electronicTagService.delete(id);
	}
	
	@GetMapping("/{id}")
	public ElectronicTag getById(@PathVariable Long id) {
		return electronicTagService.findById(id);
	}
	
	

}

