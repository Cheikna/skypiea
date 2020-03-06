package com.skytech.skypiea.api.service;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.skytech.skypiea.api.repository.ProfileRepository;
import com.skytech.skypiea.commons.entity.Profile;


@Service
public class ProfileService {
	
	
	@Autowired
	private ProfileRepository ProfileRepository;
	
	private JSONObject criteriaJson = new JSONObject();
	
	public Profile save(Profile profile/*, int id_client*/) {
		/*Client client = new Client();
		client.getId();*/
		return ProfileRepository.save(profile);
	}

	public List<Profile> findAll(){
		List<Profile> profiles = this.ProfileRepository.findAll();
		return profiles;
	}
	
	public void isCinephile(int hours) {
		System.out.println("cinephile : " + hours);
		criteriaJson.put("cinephile", (hours > 7));
	}
	
	public void isSmoker(boolean smoker) {
		criteriaJson.put("smoker", smoker);
	}
	
	public String createJsonForCriteria(int hours, boolean smoker) {
		/*isCinephile(hours);
		isSmoker(smoker);*/
		System.out.print("JSOOOOON : "  + criteriaJson.toString());
		return criteriaJson.toString();
		
	}
}