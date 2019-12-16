package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.skytech.skypiea.commons.enumeration.UserType;

@JsonTypeInfo(use = Id.NAME,
include = JsonTypeInfo.As.PROPERTY,
property = "type")
@JsonSubTypes({ 
	@Type(value = Staff.class, name = "staff"), 
	@Type(value = Resident.class, name = "resident")
})
@Entity
@Table(name="SKYPIEA_USER")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class User extends com.skytech.skypiea.commons.entity.Entity {

	@Column(name="LAST_NAME")
	protected String lastName;

	@Column(name="FIRST_NAME")
	protected String firstName;

	@Column(name="USERNAME")
	protected String username;

	@Column(name="PASSWORD")
	protected String password;

	@Enumerated(EnumType.STRING)
	@Column(name="USER_TYPE")
	protected UserType userType;

	@Column(name="LAST_CONNECTION_DATE")
	protected Timestamp lastConnectionDate;

	public User() {	}

	public User(Long id, Long version, String lastName, String firstName, String username, String password,
			UserType userType, Timestamp lastConnectionDate) {
		super(id, version);
		this.lastName = lastName;
		this.firstName = firstName;
		this.username = username;
		this.password = password;
		this.userType = userType;
		this.lastConnectionDate = lastConnectionDate;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
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

	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public Timestamp getLastConnectionDate() {
		return lastConnectionDate;
	}

	public void setLastConnectionDate(Timestamp lastConnectionDate) {
		this.lastConnectionDate = lastConnectionDate;
	}

	@Override
	public String toString() {
		return "User [lastName=" + lastName + ", firstName=" + firstName + ", username=" + username + ", password="
				+ password + ", userType=" + userType + ", lastConnectionDate="
				+ lastConnectionDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((lastConnectionDate == null) ? 0 : lastConnectionDate.hashCode());
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((userType == null) ? 0 : userType.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (lastConnectionDate == null) {
			if (other.lastConnectionDate != null)
				return false;
		} else if (!lastConnectionDate.equals(other.lastConnectionDate))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (userType != other.userType)
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}	

}
