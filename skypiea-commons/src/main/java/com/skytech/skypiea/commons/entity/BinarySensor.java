package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.BinarySensorType;

@Entity
@Table(name="BINARY_SENSOR")
public class BinarySensor extends ObjectSetting {
	
	@Column(name="IS_ACTIVE")
	private Boolean isActive; 
	
	@Column(name="BINARY_SENSOR_TYPE")
	private BinarySensorType type;

	public BinarySensor() {
		super();
	}	

	public BinarySensor(Long id, Long version, Timestamp savingDate, boolean isActive, BinarySensorType type,
			boolean isCurrentSettings) {
		super(id, version, savingDate);
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
