package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.UserType;

@Entity
@Table(name="RESIDENT")
@PrimaryKeyJoinColumn(name="ID")
public class Resident extends User{
	
	@Column(name="BIRTH_DAY")
	private Timestamp birthDay;

	public Resident() {
		super();
	}

	public Resident(Long id, Long version, String lastName, String firstName, String username, String password,
			Timestamp lastConnectionDate, Timestamp birthDay) {
		super(id, version, lastName, firstName, username, password, UserType.RESIDENT, lastConnectionDate);
		this.birthDay = birthDay;
	}

	public Timestamp getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Timestamp birthDay) {
		this.birthDay = birthDay;
	}	

}
