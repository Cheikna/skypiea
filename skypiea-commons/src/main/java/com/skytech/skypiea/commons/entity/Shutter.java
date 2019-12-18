package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="SHUTTER")
public class Shutter extends ObjectSetting  {

	@Column(name="IS_AUTOMATIC_MODE_ENABLED")
	private Boolean isAutomaticModeEnabled; 
	
	@Column(name="WINDOW_COVERAGE")
	private Float windowCoverage;

	public Shutter() {
		super();
	}	

	public Shutter(Long id, Long version, Timestamp savingDate, boolean isAutomaticModeEnabled, float windowCoverage) {
		super(id, version, savingDate);
		this.isAutomaticModeEnabled = isAutomaticModeEnabled;
		this.windowCoverage = windowCoverage;
	}

	public boolean isAutomaticModeEnabled() {
		return isAutomaticModeEnabled;
	}

	public void setAutomaticModeEnabled(boolean isAutomaticModeEnabled) {
		this.isAutomaticModeEnabled = isAutomaticModeEnabled;
	}

	public float getWindowCoverage() {
		return windowCoverage;
	}

	public void setWindowCoverage(float windowCoverage) {
		this.windowCoverage = windowCoverage;
	}	
}
