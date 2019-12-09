package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.UserType;

@Entity
@Table(name="RESIDENT")
@PrimaryKeyJoinColumn(name="USER_ID")
public class Resident extends User {
	
	@Column(name="BIRTH_DAY")
	private Timestamp birthDay;
	
	@OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ROOM_ID", nullable = false)	
	private Room room;

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
