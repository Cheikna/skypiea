package com.skytech.skypiea.api.service;

import java.sql.Timestamp;
import java.util.List;

import org.apache.commons.validator.GenericValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.UserRepository;
import com.skytech.skypiea.commons.entity.Logon;
import com.skytech.skypiea.commons.entity.User;
import com.skytech.skypiea.commons.enumeration.UserType;
import com.skytech.skypiea.commons.util.DateUtil;
import com.skytech.skypiea.commons.util.PasswordUtil;

@Service
public class UserService {

	private static Logger log = LoggerFactory.getLogger(ResidentService.class);

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
				// The username is unique, so if we can found 0 or 1 user at max
				databaseUser = users.get(0);
				// Check if the passwords are correct
				if(PasswordUtil.verify(password, databaseUser.getPassword())) {
					Timestamp previousAuthenticationTime = databaseUser.getLastConnectionDate();
					//Save the last authentication date into the database
					databaseUser.setLastConnectionDate(DateUtil.getCurrentTimestamp());
					userRepository.save(databaseUser);					

					// We set the database to null, so that we do not it send to the front
					databaseUser.setPassword(null);
					// Set the previous authentication time to the user
					databaseUser.setLastConnectionDate(previousAuthenticationTime);

					return databaseUser;
				}
			}
		}		
		//TODO throw exception or create message
		return null;		
	}

	public List<User> findByUserType(UserType userType){
		List<User> users = null;
		try {
			users = userRepository.findByUserType(userType);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return users;
	}
}
