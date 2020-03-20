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
	private ProfileRepository profileRepository;
	
	private JSONObject criteriaJson = new JSONObject();
	
	public Profile save(ProfileCriteriaJsonParameter profileCriteriaJsonParameter) {
		Profile profile = profileCriteriaJsonParameter.getProfile();
		profile.setCriteria(createJsonForCriteria(profileCriteriaJsonParameter));
		return profileRepository.save(profile);
	}

	public List<Profile> findAll(){
		List<Profile> profiles = this.profileRepository.findAll();
		return profiles;
	}
	
	public void setIsCinephile(int hours) {
		criteriaJson.put("cinephile", (hours > 7));
	}
	
	public void setIsSmoker(boolean smoker) {
		criteriaJson.put("smoker", smoker);
	}
	
	public void setIsSedentary(int hours) {
		criteriaJson.put("sedentary", (hours < 5));
	}
	
	public void setIncomeValue(int income) {
		if (income < 500) {
			criteriaJson.put("income", "difficulties");
		}else if (income > 1200) {
			criteriaJson.put("income", "rich");
		}else {
			criteriaJson.put("income", "normal");
		}
	}
	
	public void setIsCooker(String cook) {
		if (cook.contentEquals("true")) {
			criteriaJson.put("cook", "alone");
		}else if (cook.contentEquals("false")) {
			criteriaJson.put("cook", "cantine");
		}else{
			criteriaJson.put("cook", "mixed");
		}
	}
	
	public void setIsSporty(boolean isSporty, int sportsHours) {
		if (isSporty && sportsHours > 3) {
			System.out.println("SPORTS : " + sportsHours);
			criteriaJson.put("sporty", "true");
		} else {
			criteriaJson.put("sporty", "false");
		}
		
	}
	
	public String createJsonForCriteria(ProfileCriteriaJsonParameter profileCriteriaJsonParameter) {
		setIsCinephile(profileCriteriaJsonParameter.getHourTelevision());
		setIsSmoker(profileCriteriaJsonParameter.getIsSmoker());
		setIsSedentary(profileCriteriaJsonParameter.getHoursOutside());
		setIncomeValue(profileCriteriaJsonParameter.getIncome());
		setIsCooker(profileCriteriaJsonParameter.getIsCook());
		setIsSporty(profileCriteriaJsonParameter.getIsSporty(), profileCriteriaJsonParameter.getSportsHours());
		return criteriaJson.toString();
	}
	
	public String isSporty(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains("sports")) {
				return c.split(":")[1];
			}
		}
		return null;
	}
	
	public String getProfileCriteriaForClient(Long id) {
		Profile profile = null;
		try {
			profile = profileRepository.findByClientId(id);
			System.out.println(profile == null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return profile.getCriteria();
	}
}