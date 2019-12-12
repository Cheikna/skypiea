package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.BinarySensorType;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="BINARY_SENSOR")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class BinarySensor extends NonMedicalConnectedObject {
	
	@Column(name="IS_ACTIVE")
	private boolean isActive; 
	
	@Column(name="BINARY_SENSOR_TYPE")
	private BinarySensorType type;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;

	public BinarySensor() {
		super();
	}	

	public BinarySensor(Long id, Long version, Timestamp lastParameterModificationDate,
			String brand, String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			boolean isActive, BinarySensorType type, Timestamp installationDate, String svgPoint, Boolean isCurrentSettings,
			Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress,
				lastMeasurementDate, status, state, NonMedicalObjectType.BINARY_SENSOR, installationDate, svgPoint);
		this.isActive = isActive;
		this.type = type;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public BinarySensorType getType() {
		return type;
	}

	public void setType(BinarySensorType type) {
		this.type = type;
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
