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

	@Column(name="STREET_NUMBER")
	protected Integer streetNumber;
	
	@Column(name="STREET_NAME")
	protected String streetName;
	
	@Column(name="ZIP_CODE")
	protected String zipCode;
	
	@Column(name="CITY")
	protected String city;
	
	@Column(name="PHONE_NUMBER")
	protected String phoneNumber;
	
	@Column(name="COUNTRY")
	protected String country;

	public Client() {
		
	}
	
	public Client (String lastName, String firstName, Integer age, String email, Integer streetNumber, String streetName, String zipCode, String city, String phoneNumber) {
		this.lastName = lastName;
		this.firstName = firstName;
		this.age = age;
		this.email = email;
		this.streetNumber = streetNumber;
		this.streetName = streetName;
		this.zipCode = zipCode;
		this.city = city;
		this.phoneNumber = phoneNumber;
	}
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
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

	public Integer getStreetNumber() {
		return streetNumber;
	}

	public void setStreetNumber(Integer streetNumber) {
		this.streetNumber = streetNumber;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
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
