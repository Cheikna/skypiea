package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="SHUTTER")
@PrimaryKeyJoinColumn(name="ID")
public class Shutter extends NonMedicalConnectedObject  {

	@Column(name="IS_AUTOMATIC_MODE_ENABLED")
	private boolean isAutomaticModeEnabled; 
	
	@Column(name="WINDOW_COVERAGE")
	private float windowCoverage;

	public Shutter() {
		super();
	}

	public Shutter(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistory, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			boolean isAutomaticModeEnabled, float windowCoverage, Timestamp installationDate) {
		super(id, version, lastParameterModificationDate, isHistory, brand, ipAddress, macAddress,
				lastMeasurementDate, status, state, NonMedicalObjectType.SHUTTER, installationDate);
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
