package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

@Table(name="SHUTTER")
public class Shutter extends NonMedicalConnectedObject  {

	@Column(name="WINDOW_COVERAGE")
	private int windowCoverage; 
	
	@Column(name="WINDOW_POSITION")
	private int windowPosition;

	public int getWindowCoverage() {
		return windowCoverage;
	}

	public void setWindowCoverage(int windowCoverage) {
		this.windowCoverage = windowCoverage;
	}

	public int getWindowPosition() {
		return windowPosition;
	}

	public void setWindowPosition(int windowPosition) {
		this.windowPosition = windowPosition;
	}

	@Override
	public String toString() {
		return "Shutter [windowCoverage=" + windowCoverage + ", windowPosition=" + windowPosition + ", toString()="
				+ super.toString() + "]";
	} 
	
	
}
