package com.skytech.skypiea.api.service;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.skytech.skypiea.api.repository.ProfileRepository;
import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.entity.Profile;
import com.skytech.skypiea.commons.util.ProfileCriteriaJsonParameter;


@Service
public class ProfileService {
	private static String sporty = "sporty";
	private static String sedentary = "sedentary";	
	private static String cooker = "cook";
	private static String income = "income";
	private static String cinephile = "cinephile";
	private static String smoker = "smoker";

		
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
	
	//Create criteria
	
	public void setIsCinephile(int hours) {
		if (hours > 7) {
			criteriaJson.put(this.cinephile, "true");
		} else {
			criteriaJson.put(this.cinephile, "false");
		}
	}
	
	public void setIsSmoker(String smoker) {
		criteriaJson.put(this.smoker, smoker);
	}
	
	public void setIsSedentary(int hours) {
		if (hours < 5) {
			criteriaJson.put(this.sedentary, "true");
		} else {
			criteriaJson.put(this.sedentary, "false");
		}
		
	}
	
	public void setIncomeValue(int income) {
		if (income < 500) {
			criteriaJson.put(this.income, "difficulties");
		}else if (income > 1200) {
			criteriaJson.put(this.income, "rich");
		}else {
			criteriaJson.put(this.income, "normal");
		}
	}
	
	public void setIsCooker(String cook) {
		if (cook.contentEquals("true")) {
			criteriaJson.put(this.cooker, "alone");
		}else if (cook.contentEquals("false")) {
			criteriaJson.put(this.cooker, "cantine");
		}else{
			criteriaJson.put(this.cooker, "mixed");
		}
	}
	
	public void setIsSporty(boolean isSporty, int sportsHours) {
		if (isSporty && sportsHours > 3) {
			criteriaJson.put(this.sporty, "true");
		} else {
			criteriaJson.put(this.sporty, "false");
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
	
	//Get criteria
	
	public String isSporty(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains(this.sporty)) {
				return c.split(":")[1].split("\"")[1];
			}
		}
		return null;
	}
	
	public String isSedentary(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains(this.sedentary)) {				
				return c.split(":")[1].split("\"")[1];
			}
		}
		return null;
	}
	
	public String isCooker(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains(this.cooker)) {			
				return c.split(":")[1].split("\"")[1];
			}
		}
		return null;
	}
	
	public String isCinephile(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains(this.cinephile)) {				
				return c.split(":")[1].split("\"")[1];
			}
		}
		return null;
	}
	
	public String getIncome(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains(this.income)) {		
				return c.split(":")[1].split("\"")[1];
			}
		}
		return null;
	}
	
	public String isSmoker(String criteria) {
		String[] criterias = criteria.split(",");
		for (String c: criterias) {
			if (c.contains(this.smoker)) {				
				return c.split(":")[1].split("\"")[1];
			}
		}
		return null;
	}
	
	public String getProfileCriteriaForClient(Long id) {
		Profile profile = null;
		try {
			profile = profileRepository.findByClientId(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return profile.getCriteria();
	}
	
	//Points for criteria
	public int getPointsForSmoker(String criteria) {
		if (isSmoker(criteria).equals("true")) {
			return 1;
		}
		return 0;
	}
	
	public int getPointsForCinephile(String criteria) {
		if (isCinephile(criteria).equals("true")) {
			return 1;
		}
		return 0;
	}
	
	public int getPointsForSedentary(String criteria) {
		if (isSedentary(criteria).equals("true")) {
			return 1;
		}
		return 0;
	}
	
	public int getPointsForCooker(String criteria) {
		if (isSedentary(criteria).equals("alone")) {
			return 1;
		}else if (isSedentary(criteria).equals("mixed")) {
			return 2;
		}
		return 0;
	}
	
	public int getPointsForSporty(String criteria) {
		if (isSporty(criteria).equals("true")) {
			return 1;
		}
		return 0;
	}
	
	public int getPointsForCriteria(Long id) {
		String criteria = getProfileCriteriaForClient(id);
		return getPointsForSmoker(criteria) + getPointsForCinephile(criteria) + getPointsForCooker(criteria) + getPointsForSedentary(criteria) + getPointsForSporty(criteria);
	}
	
	public int getPointsForIncome(Long id) {
		String criteria = getProfileCriteriaForClient(id);
		if (getIncome(criteria).equals("rich")) {
			return 2;
		}else if (getIncome(criteria).equals("normal")) {
			return 1;
		}
		return 0;
	}
}