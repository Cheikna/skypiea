package com.skytech.skypiea.api.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.UserRepository;
import com.skytech.skypiea.commons.entity.Logon;
import com.skytech.skypiea.commons.entity.Staff;
import com.skytech.skypiea.commons.entity.User;
import com.skytech.skypiea.commons.util.PasswordUtil;

@ComponentScan(basePackageClasses = {
		UserService.class,
		UserRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class UserServiceTest {

	private final String username = "skypiea_user";
	private final String password = "skypiea";
	
	private Logon logon;
	private User createdUser;
	
	@Autowired
	private UserService userService;
	@Autowired
	private UserRepository userRepository;

	@Before
	public void init() {
		String encodedPassword = PasswordUtil.encode(password);
		Timestamp timestamp = new Timestamp(new Date().getTime());
		createdUser = new Staff(0L,0L, "lastName", "firstName", username, encodedPassword, timestamp);
		userRepository.save(createdUser);	
	}

	@Test
	public void authenticationTestWithCorrectPassword() {
		/**
		 * Given
		 */
		logon = new Logon(username, password);
		
		/**
		 * When
		 */
		User user = userService.login(logon);
		
		/**
		 * Then
		 */
		assertNotNull(user);
		assertNull(user.getPassword());
		assertEquals(createdUser, user);
	}

	@Test
	public void authenticationTestWithIncorrectPassword() {
		/**
		 * Given
		 */
		logon = new Logon(username, password+"test");
		
		/**
		 * When
		 */
		User u = userService.login(logon);
		
		/**
		 * Then
		 */
		assertNull(u);

	}

	@Test
	public void authenticationTestWithIncorrectUsername() {
		/**
		 * Given
		 */
		logon = new Logon(null, password);
		
		/**
		 * When
		 */
		User u = userService.login(logon);
		
		/**
		 * Then
		 */
		assertNull(u);
	}

}
