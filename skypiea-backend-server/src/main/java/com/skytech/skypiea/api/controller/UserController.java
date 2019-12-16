package com.skytech.skypiea.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.UserService;
import com.skytech.skypiea.commons.entity.Logon;
import com.skytech.skypiea.commons.entity.User;

@RestController
@RequestMapping("/users")
@CrossOrigin(origins="*", allowedHeaders="*")
public class UserController {
	
	@Autowired
	private UserService userService;

	@PostMapping("/authenticate")
	public User authenticate(@RequestBody Logon logon) {
		return userService.login(logon);
	}	
}
