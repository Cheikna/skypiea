package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="SHUTTER")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class Shutter extends NonMedicalConnectedObject  {

	@Column(name="IS_AUTOMATIC_MODE_ENABLED")
	private boolean isAutomaticModeEnabled; 
	
	@Column(name="WINDOW_COVERAGE")
	private float windowCoverage;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;

	public Shutter() {
		super();
	}

	public Shutter(Long id, Long version, Timestamp lastParameterModificationDate, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			boolean isAutomaticModeEnabled, float windowCoverage, Timestamp installationDate, String svgPoint
			, Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress,
				lastMeasurementDate, status, state, NonMedicalObjectType.SHUTTER, installationDate, svgPoint);
		this.isAutomaticModeEnabled = isAutomaticModeEnabled;
		this.windowCoverage = windowCoverage;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
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

	public boolean isCurrentSettings() {
		return isCurrentSettings;
	}

	public void setCurrentSettings(boolean isCurrentSettings) {
		this.isCurrentSettings = isCurrentSettings;
	} 
	
	public Timestamp getSavingDate() {
		return savingDate;
	}

	public void setSavingDate(Timestamp savingDate) {
		this.savingDate = savingDate;
	} 
	
}
