package com.skytech.skypiea.commons.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordUtil {
	
	private static BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	public static String encode(String encodedPassword) {
		return passwordEncoder.encode(encodedPassword);
	}
	
	public static boolean verify(String plainPassword, String encodedPassword) {
		return passwordEncoder.matches(plainPassword, encodedPassword);
	}

}
