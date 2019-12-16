package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="SUNSHINE_SENSOR")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class SunshineSensor extends NonMedicalConnectedObject {
	
	@Column(name="EXTERNAL_TEMPERATURE")
	private float externalTemperature;
	
	@Column(name="EXTERNAL_SUNSHINE")
	private float externalSunshine;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;


	public SunshineSensor() {
		super();
	}
	
	public SunshineSensor(Long id, Long version, Timestamp lastParameterModificationDate,
			String brand, String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			float externalTemperature, float externalSunshine, Timestamp installationDate, String svgPoint,
			Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress,
				lastMeasurementDate, status, state, NonMedicalObjectType.SUNSHINE_SENSOR, installationDate, svgPoint);
		this.externalTemperature = externalTemperature;
		this.externalSunshine = externalSunshine;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
	}

	public float getExternalTemperature() {
		return externalTemperature;
	}

	public void setExternalTemperature(float externalTemperature) {
		this.externalTemperature = externalTemperature;
	}

	public float getExternalSunshine() {
		return externalSunshine;
	}

	public void setExternalSunshine(float externalSunshine) {
		this.externalSunshine = externalSunshine;
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
