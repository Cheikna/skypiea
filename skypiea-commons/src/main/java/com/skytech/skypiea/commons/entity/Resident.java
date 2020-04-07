package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.skytech.skypiea.commons.enumeration.UserType;

@Entity
@Table(name="RESIDENT")
public class Resident extends User {
	
	@Column(name="BIRTH_DAY")
	private Timestamp birthDay;
	@Column(name="SUPERVISION")
	private String supervision;
	
	@JsonManagedReference
	@OneToMany(mappedBy="resident", cascade=CascadeType.ALL)
	private Set<Notification> notifications;

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

	public Set<Notification> getNotifications() {
		return notifications;
	}

	public void setNotifications(Set<Notification> notifications) {
		this.notifications = notifications;
	}
	
}
