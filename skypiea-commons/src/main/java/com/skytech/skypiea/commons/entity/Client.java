package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name="CLIENT")
public class Client extends com.skytech.skypiea.commons.entity.Entity{
	
	@Column(name="LAST_NAME")
	protected String lastName;

	@Column(name="FIRST_NAME")
	protected String firstName;
	
	@Column(name="AGE")
	protected Integer age;
	
	@Column(name="EMAIL")
	protected String email;
	
	@Column(name="ROADNAME")
	protected String roadname;
	
	@Column(name="ZIPCODE")
	protected String zipcode;
	
	@Column(name="CITY")
	protected String city;
	
	@Column(name="PHONENUMBER")
	protected String phoneNumber;
	
	public Client() {
		
	}
	
	public Client (String lastName, String firstName, Integer age, String email, String roadName, String zipcode, String city, String phoneNumber) {
		this.lastName = lastName;
		this.firstName = firstName;
		this.age = age;
		this.email = email;
		this.roadname = roadName;
		this.zipcode = zipcode;
		this.city = city;
		this.phoneNumber = phoneNumber;
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

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRoadname() {
		return roadname;
	}

	public void setRoadname(String roadname) {
		this.roadname = roadname;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	

}
