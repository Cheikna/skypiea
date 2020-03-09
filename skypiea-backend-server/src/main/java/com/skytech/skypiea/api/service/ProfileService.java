package com.skytech.skypiea.api.service;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.skytech.skypiea.api.repository.ProfileRepository;
import com.skytech.skypiea.commons.entity.Profile;
import com.skytech.skypiea.commons.util.ProfileCriteriaJsonParameter;


@Service
public class ProfileService {
	
	
	@Autowired
	private ProfileRepository ProfileRepository;
	
	private JSONObject criteriaJson = new JSONObject();
	
	public Profile save(ProfileCriteriaJsonParameter profileCriteriaJsonParameter) {
		Profile profile = profileCriteriaJsonParameter.getProfile();
		profile.setCriteria(createJsonForCriteria(profileCriteriaJsonParameter));
		return ProfileRepository.save(profile);
	}

	public List<Profile> findAll(){
		List<Profile> profiles = this.ProfileRepository.findAll();
		return profiles;
	}
	
	public void isCinephile(int hours) {
		criteriaJson.put("cinephile", (hours > 7));
	}
	
	public void isSmoker(boolean smoker) {
		criteriaJson.put("smoker", smoker);
	}
	
	public void isSedentary(int hours) {
		criteriaJson.put("sedentary", (hours < 5));
	}
	
	public void incomeValue(int income) {
		if (income < 500) {
			criteriaJson.put("income", "difficulties");
		}else if (income > 1200) {
			criteriaJson.put("income", "rich");
		}else {
			criteriaJson.put("income", "normal");
		}
	}
	
	public void isCooker(String cook) {
		if (cook.contentEquals("true")) {
			criteriaJson.put("cook", "alone");
		}else if (cook.contentEquals("false")) {
			criteriaJson.put("cook", "cantine");
		}else{
			criteriaJson.put("cook", "mixed");
		}
	}
	
	public void isSporty(boolean isSporty, int sportsHours) {
		if (isSporty && sportsHours > 3) {
			System.out.println("SPORTS : " + sportsHours);
			criteriaJson.put("sporty", "true");
		} else {
			criteriaJson.put("sporty", "false");
		}
		
	}
	
	public String createJsonForCriteria(ProfileCriteriaJsonParameter profileCriteriaJsonParameter) {
		isCinephile(profileCriteriaJsonParameter.getHourTelevision());
		isSmoker(profileCriteriaJsonParameter.getIsSmoker());
		isSedentary(profileCriteriaJsonParameter.getHoursOutside());
		incomeValue(profileCriteriaJsonParameter.getIncome());
		isCooker(profileCriteriaJsonParameter.getIsCook());
		isSporty(profileCriteriaJsonParameter.getIsSporty(), profileCriteriaJsonParameter.getSportsHours());
		return criteriaJson.toString();
		
	}
}