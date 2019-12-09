package com.skytech.skypiea.api.service;

import java.util.List;

import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.UserRepository;
import com.skytech.skypiea.commons.entity.Logon;
import com.skytech.skypiea.commons.entity.Staff;
import com.skytech.skypiea.commons.entity.User;
import com.skytech.skypiea.commons.util.PasswordUtil;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	
	public User login(Logon logon) {
		String username = logon.getUsername();
		String password = logon.getPassword();
		User databaseUser = null;

		if(!GenericValidator.isBlankOrNull(username)) {
			username = username.trim();
			List<User> users = userRepository.findByUsername(username);
			//Check if a user with the same username exists in the database
			if(users != null && users.size() > 0) {
				databaseUser = users.get(0);
				if(PasswordUtil.verify(password, databaseUser.getPassword())) {
					// We set the database to null, so that we do not it send to the front
					databaseUser.setPassword(null);
					if(databaseUser instanceof Staff)
						return (Staff)databaseUser;
					return databaseUser;
				}
			}
		}		
		//TODO throw exception or create message
		return null;
		
	}
	
	public User save(User user) {
		return userRepository.save(user);
	}


}
