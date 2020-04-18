package com.skytech.skypiea.commons.util;

public class ClientDetails{
	private String lastName;
	private String firstName;
	private int age;
	private String adress;
	private String phoneNumber;
	private String email;
	private int numberOfDisease;
	private String cinephile;
	private String smoker;
	private String sedentary;
	private int income;
	private String cooker;
	private String sporty;
	
	public ClientDetails() {
		super();
	}

	public ClientDetails(String lastName, String firstName, int age, String adress, String phoneNumber, String email,
			int numberOfDisease, String cinephile, String smoker, String sedentary, int income, String cooker,
			String sporty) {
		super();
		this.lastName = lastName;
		this.firstName = firstName;
		this.age = age;
		this.adress = adress;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.numberOfDisease = numberOfDisease;
		this.cinephile = cinephile;
		this.smoker = smoker;
		this.sedentary = sedentary;
		this.income = income;
		this.cooker = cooker;
		this.sporty = sporty;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getNumberOfDisease() {
		return numberOfDisease;
	}

	public void setNumberOfDisease(int numberOfDisease) {
		this.numberOfDisease = numberOfDisease;
	}

	public String getCinephile() {
		return cinephile;
	}

	public void setCinephile(String cinephile) {
		this.cinephile = cinephile;
	}

	public String getSmoker() {
		return smoker;
	}

	public void setSmoker(String smoker) {
		this.smoker = smoker;
	}

	public String getSedentary() {
		return sedentary;
	}

	public void setSedentary(String sedentary) {
		this.sedentary = sedentary;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public String getCooker() {
		return cooker;
	}

	public void setCooker(String cooker) {
		this.cooker = cooker;
	}

	public String getSporty() {
		return sporty;
	}

	public void setSporty(String sporty) {
		this.sporty = sporty;
	}

	@Override
	public String toString() {
		return "ClientDetails [lastName=" + lastName + ", firstName=" + firstName + ", age=" + age + ", adress="
				+ adress + ", phoneNumber=" + phoneNumber + ", email=" + email + ", numberOfDisease=" + numberOfDisease
				+ ", cinephile=" + cinephile + ", smoker=" + smoker + ", sedentary=" + sedentary + ", income=" + income
				+ ", cooker=" + cooker + ", sporty=" + sporty + "]";
	}
	
	
	
	
}
