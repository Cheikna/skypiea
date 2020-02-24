package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.UserType;

@Entity
@Table(name="RESIDENT")
public class Resident extends User {
	
	@Column(name="BIRTH_DAY")
	private Timestamp birthDay;
	@Column(name="SUPERVISION")
	private String supervision;

	public Resident() {		
		super();
	}

	public Resident(Long id, Long version, String lastName, String firstName, String username, String password, UserType userType, Timestamp lastConnectionDate, Timestamp birthDay, String supervision) {
		super(id, version, lastName, firstName, username, password, userType, lastConnectionDate);
		this.birthDay = birthDay;
		this.supervision = supervision;
	}

	public String getSupervision() {
		return supervision;
	}

	public void setSupervision(String supervision) {
		this.supervision = supervision;
	}

	public Timestamp getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Timestamp birthDay) {
		this.birthDay = birthDay;
	}
}
