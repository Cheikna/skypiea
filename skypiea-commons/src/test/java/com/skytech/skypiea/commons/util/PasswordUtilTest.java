package com.skytech.skypiea.commons.util;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class PasswordUtilTest {
	
	private String password;
	
	@Before
	public void init() {
		password = "skypiea";
	}

	@Test
	public void testEncode() {
		assertNotEquals(password, PasswordUtil.encode(password));
	}

	@Test
	public void testVerify() {
		String encodedPassword = PasswordUtil.encode(password);
		assertTrue(PasswordUtil.verify(password, encodedPassword));
	}

}
