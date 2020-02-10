package com.skytech.skypiea.injector.mock.user;

import java.util.Scanner;
import java.util.function.Predicate;

import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.validator.GenericValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.UserRepository;
import com.skytech.skypiea.commons.entity.Resident;
import com.skytech.skypiea.commons.entity.Staff;
import com.skytech.skypiea.commons.entity.User;
import com.skytech.skypiea.commons.enumeration.UserType;
import com.skytech.skypiea.commons.util.PasswordUtil;
import com.skytech.skypiea.injector.mock.abstracts.Mock;
import com.skytech.skypiea.injector.util.ScannerUtil;

@Service
public class UserMock extends Mock {

	@Autowired
	private UserRepository userRepository;

	private static Logger log = LoggerFactory.getLogger(UserMock.class);	

	/**
	 * Main method to mock some users
	 * When the user arrives at the end of the start method, 
	 * he is redirected to the list of mocks
	 */
	@Override
	public void start(Scanner sc) {
		User user = null;
		UserType userType = null;
		UserType[] userTypes = UserType.values();
		int i = 0;

		// Displaying the user types for the selection
		for(UserType type: userTypes) {
			System.out.println((i++) + ". " + type.name());
		}

		// Choosing the userType
		String userTypeChoice = ScannerUtil.askForString(sc, "Choose the index of user type : ", userTypePredicate(userTypes.length));

		userType = userTypes[NumberUtils.toInt(userTypeChoice)];		
		System.out.println("Type selected : " + userType.name());

		if(userType == UserType.RESIDENT) {
			user = new Resident();
		} else if(userType == UserType.STAFF) {
			user = new Staff();
		}

		// Choosing the firstName
		String lastNameChoice = ScannerUtil.askForString(sc, "Enter the last name : ", ((str) -> !GenericValidator.isBlankOrNull(str)) );

		// Choosing the firstName
		String firstNameChoice = ScannerUtil.askForString(sc, "Enter the first name : ", ((str) -> !GenericValidator.isBlankOrNull(str)) );

		// Choosing the paswword
		String passwordChoice = ScannerUtil.askForString(sc, "Enter a password : ", ((str) -> !GenericValidator.isBlankOrNull(str)) );

		user.setFirstName(firstNameChoice);
		user.setLastName(lastNameChoice);
		user.setUsername(firstNameChoice);
		user.setPassword(PasswordUtil.encode(passwordChoice));
		user.setUserType(userType);

		try {			
			if(userType == UserType.RESIDENT) {			
				createResident(user);
			} else if(userType == UserType.STAFF) {
				createStaff(user);
			}

		} catch(Exception e) {
			log.error(e.getMessage());
		}		
	}

	/*
	 * The predicate return true if the index is between 
	 * 0 (included) and the number of user types (excluded)
	 */
	private Predicate<String> userTypePredicate(int numberOfTypes){
		return (str) -> {
			int choice = NumberUtils.toInt(str, -9);
			return choice >= 0 && choice < numberOfTypes;
		};
	}

	private void createResident(User user) {
		Resident resident = (Resident)user;
		//TODO add birth day question and check the validity of the entered date
		User newUser = userRepository.save(resident);
		createdIds.add(newUser.getId());
	}

	private void createStaff(User user) {
		Staff staff = (Staff)user;		
		User newUser = userRepository.save(staff);
		createdIds.add(newUser.getId());
	}

	@Override
	public void clearInjectedData() {
		super.clearInjectedData(userRepository);
	}

	@Override
	public String getMockName() {
		return "User";
	}	
}
