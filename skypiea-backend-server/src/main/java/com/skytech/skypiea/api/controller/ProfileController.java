package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.ProfileService;
import com.skytech.skypiea.commons.entity.Profile;

@RestController
@RequestMapping("/profiles")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ProfileController {
	
	@Autowired
	private ProfileService profileService;
	
	@PostMapping("")
	public Profile createNewDisease(@RequestBody Profile profile) {
		return profileService.save(profile);
	}	
	
	@GetMapping("")
	public List<Profile> getProfile() {
		return profileService.findAll();
	}

}
