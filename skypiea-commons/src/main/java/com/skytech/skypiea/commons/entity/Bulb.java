package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

@Table(name="BULB")
public class Bulb extends NonMedicalConnectedObject{
	
	@Column(name="CURRENT_COLOR")
	private String currentColor;

	public String getCurrentColor() {
		return currentColor;
	}

	public void setCurrentColor(String currentColor) {
		this.currentColor = currentColor;
	}

	@Override
	public String toString() {
		return "Bulb [currentColor=" + currentColor + ", toString()=" + super.toString() + "]";
	}

	

	
	
	
}
