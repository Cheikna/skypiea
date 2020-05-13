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

import com.skytech.skypiea.api.service.ProfileService;
import com.skytech.skypiea.commons.entity.Profile;
import com.skytech.skypiea.commons.util.ProfileCriteriaJsonParameter;

@RestController
@RequestMapping("/profiles")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ProfileController {
	
	@Autowired
	private ProfileService profileService;
	
	@PostMapping("")
	public Profile createNewProfile(@RequestBody ProfileCriteriaJsonParameter profile) {
		return profileService.save(profile);
	}	
	
	@GetMapping("")
	public List<Profile> getProfile() {
		return profileService.findAll();
	}
	
	@GetMapping("/client/{id}")
	public String getProfileCriteriaForClient(@PathVariable Long id) {
		return this.profileService.getProfileCriteriaForClient(id);
	}
	
	@GetMapping("/sporty/{criteria}")
	public String isSporty(@PathVariable String criteria) {
		return profileService.isSporty(criteria);
	}
	
	@GetMapping("/sedentary/{criteria}")
	public String isSedentary(@PathVariable String criteria) {
		return profileService.isSedentary(criteria);
	}
	
	@GetMapping("/smoker/{criteria}")
	public String isSmoker(@PathVariable String criteria) {
		return profileService.isSmoker(criteria);
	}
	
	@GetMapping("/income/{criteria}")
	public String getIncome(@PathVariable String criteria) {
		return profileService.getIncome(criteria);
	}
	
	@GetMapping("/cinephile/{criteria}")
	public String isCinephile(@PathVariable String criteria) {
		return profileService.isCinephile(criteria);
	}
	
	@GetMapping("/cooker/{criteria}")
	public String isCooker(@PathVariable String criteria) {
		return profileService.isCooker(criteria);
	}

}
