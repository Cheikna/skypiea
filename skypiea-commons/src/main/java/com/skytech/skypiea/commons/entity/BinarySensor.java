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
@PrimaryKeyJoinColumn(name="ID")
public class BinarySensor extends NonMedicalConnectedObject {
	
	@Column(name="IS_ACTIVE")
	private boolean isActive; 
	
	@Column(name="BINARY_SENSOR_TYPE")
	private BinarySensorType type;

	public BinarySensor() {
		super();
	}	

	public BinarySensor(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistoricy,
			String brand, String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			boolean isActive, BinarySensorType type, Timestamp installationDate) {
		super(id, version, lastParameterModificationDate, isHistoricy, brand, ipAddress, macAddress,
				lastMeasurementDate, status, state, NonMedicalObjectType.BINARY_SENSOR, installationDate);
		this.isActive = isActive;
		this.type = type;
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
	
	
	
	
}
