package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name="CLIENT")
public class Client extends com.skytech.skypiea.commons.entity.Entity{
	
	@Column(name="LAST_NAME")
	protected String last_name;

	@Column(name="FIRST_NAME")
	protected String first_name;
	
	@Column(name="AGE")
	protected Integer age;
	
	@Column(name="EMAIL")
	protected String email;

	@Column(name="STREET_NUMBER")
	protected Integer street_number;
	
	@Column(name="STREET_NAME")
	protected String street_name;
	
	@Column(name="ZIP_CODE")
	protected String zip_code;
	
	@Column(name="CITY")
	protected String city;
	
	@Column(name="PHONE_NUMBER")
	protected String phone_number;
	
	public Client() {
		
	}
	
	public Client (String last_name, String first_name, Integer age, String email, Integer street_number, String street_name, String zip_code, String city, String phone_number) {
		this.last_name = last_name;
		this.first_name = first_name;
		this.age = age;
		this.email = email;
		this.street_number = street_number;
		this.street_name = street_name;
		this.zip_code = zip_code;
		this.city = city;
		this.phone_number = phone_number;
	}

	public String getLastName() {
		return last_name;
	}

	public void setLastName(String lastName) {
		this.last_name = lastName;
	}

	public String getFirstName() {
		return first_name;
	}

	public void setFirstName(String firstName) {
		this.first_name = firstName;
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

	public String getStreetName() {
		return street_name;
	}

	public void setStreetName(String street_name) {
		this.street_name = street_name;
	}

	public String getZipcode() {
		return zip_code;
	}

	public void setZipcode(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhoneNumber() {
		return phone_number;
	}

	public void setPhoneNumber(String phone_number) {
		this.phone_number = phone_number;
	}
	
	
	

}
