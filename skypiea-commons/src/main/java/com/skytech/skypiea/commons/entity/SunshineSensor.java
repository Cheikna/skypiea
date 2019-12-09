package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="SUNSHINE_SENSOR")
@PrimaryKeyJoinColumn(name="ID")
public class SunshineSensor extends NonMedicalConnectedObject {
	
	@Column(name="EXTERNAL_TEMPERATURE")
	private float externalTemperature;
	
	@Column(name="EXTERNAL_SUNSHINE")
	private float externalSunshine;


	public SunshineSensor() {
		super();
	}
	
	public SunshineSensor(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistoricy,
			String brand, String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			float externalTemperature, float externalSunshine, Timestamp installationDate) {
		super(id, version, lastParameterModificationDate, isHistoricy, brand, ipAddress, macAddress,
				lastMeasurementDate, status, state, NonMedicalObjectType.SUNSHINE_SENSOR, installationDate);
		this.externalTemperature = externalTemperature;
		this.externalSunshine = externalSunshine;
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
	
	
	

}
