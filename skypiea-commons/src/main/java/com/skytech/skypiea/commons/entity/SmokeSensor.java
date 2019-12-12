package com.skytech.skypiea.commons.entity;

import java.util.Date;
import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="SMOKE_SENSOR")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class SmokeSensor extends NonMedicalConnectedObject  {

	@Column(name="THRESHOLD")
	private float threshold;	
	
	@Column(name="SENSITIVITY")
	private String sensitivity;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;


	public SmokeSensor() {
		super();
	}

	public SmokeSensor(Long id, Long version, Timestamp lastParameterModificationDate, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			Timestamp installationDate, String svgPoint, int threshold,
			String sensitivity, Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state, NonMedicalObjectType.SMOKE_SENSOR, installationDate, svgPoint);
		this.threshold = threshold;
		this.sensitivity = sensitivity;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
	}

	public float getThreshold() {
		return threshold;
	}

	public void setThreshold(float threshold) {
		this.threshold = threshold;
	}

	public String getSensitivity() {
		return sensitivity;
	}

	public void setSensitivity(String sensitivity) {
		this.sensitivity = sensitivity;
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
