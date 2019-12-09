package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.UserType;

@Entity
@Table(name="STAFF")
@PrimaryKeyJoinColumn(name="ID")
public class Staff extends User {

	public Staff() {
		super();
	}

	public Staff(Long id, Long version, String lastName, String firstName, String username, String password,
			Timestamp lastConnectionDate) {
		super(id, version, lastName, firstName, username, password, UserType.STAFF, lastConnectionDate);
	}
	
}
