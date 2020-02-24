package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.skytech.skypiea.api.repository.ProfileRepository;
import com.skytech.skypiea.commons.entity.Profile;


@Service
public class ProfileService {
	
	
	@Autowired
	private ProfileRepository ProfileRepository;
	
	public Profile save(Profile profile/*, int id_client*/) {
		/*Client client = new Client();
		client.getId();*/
		return ProfileRepository.save(profile);
	}

	public List<Profile> findAll(){
		List<Profile> profiles = this.ProfileRepository.findAll();
		return profiles;
	}
}