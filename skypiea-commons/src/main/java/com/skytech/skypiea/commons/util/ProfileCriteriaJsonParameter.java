package com.skytech.skypiea.commons.util;

import com.skytech.skypiea.commons.entity.Profile;

public class ProfileCriteriaJsonParameter {
	private Profile profile;
	private int hourTelevision;
	private String isSmoker;
	private int hoursOutside;
	private int income;
	private String isCook;
	private int sportsHours; 
	private boolean isSporty;
	
	public ProfileCriteriaJsonParameter() {
		super();
	}
	
	public ProfileCriteriaJsonParameter(Profile profile, int hourTelevision, String isSmoker, int hoursOutside,
			int income, String isCook, int sportsHours, boolean isSporty) {
		super();
		this.profile = profile;
		this.hourTelevision = hourTelevision;
		this.isSmoker = isSmoker;
		this.hoursOutside = hoursOutside;
		this.income = income;
		this.isCook = isCook;
		this.sportsHours = sportsHours;
		this.isSporty = isSporty;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public int getHourTelevision() {
		return hourTelevision;
	}

	public void setHourTelevision(int hourTelevision) {
		this.hourTelevision = hourTelevision;
	}

	public String getIsSmoker() {
		return isSmoker;
	}

	public void setIsSmoker(String isSmoker) {
		this.isSmoker = isSmoker;
	}

	public int getHoursOutside() {
		return hoursOutside;
	}

	public void setHoursOutside(int hoursOutside) {
		this.hoursOutside = hoursOutside;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public String getIsCook() {
		return isCook;
	}

	public void setIsCook(String isCook) {
		this.isCook = isCook;
	}

	public int getSportsHours() {
		return sportsHours;
	}

	public void setSportsHours(int sportsHours) {
		this.sportsHours = sportsHours;
	}

	public boolean getIsSporty() {
		return isSporty;
	}

	public void setSporty(boolean isSporty) {
		this.isSporty = isSporty;
	}
	
	

}
