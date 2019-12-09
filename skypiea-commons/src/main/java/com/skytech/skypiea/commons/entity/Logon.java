package com.skytech.skypiea.commons.entity;

/**
 * This class is only used to make the authentication and it is not persistable which
 * means that there is no Logon table in the database
 *
 */
public class Logon {
	
	private String username;
	private String password;

	public Logon() {}

	public Logon(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
