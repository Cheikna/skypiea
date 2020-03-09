package com.skytech.skypiea.api.controller;

import java.util.List;import org.hibernate.validator.constraints.ParameterScriptAssert;
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
	public Profile createNewDisease(@RequestBody ProfileCriteriaJsonParameter profile) {
		return profileService.save(profile);
	}	
	
	@GetMapping("")
	public List<Profile> getProfile() {
		return profileService.findAll();
	}
	
	/*@PostMapping("/cinephile/{hours}")
	public void isCinephile(@PathVariable int hours) {
		profileService.isCinephile(hours);
	}
	
	@PostMapping("/smoker/{smoker}")
	public void isSmoker(@PathVariable boolean smoker) {
		profileService.isSmoker(smoker);
	}
	
	@PostMapping("/sedentary/{hours}")
	public void isSedentary(@PathVariable int hours) {
		profileService.isSedentary(hours);
	}
	
	@PostMapping("/income/{income}")
	public void incomeValue(int income) {
		profileService.incomeValue(income);
	}
	
	@GetMapping("/createProfileJson/{hours}")
	public String createJsonForProfile(@PathVariable int hours) {
		return profileService.createJsonForCriteria(hours);
	}*/

}
