package com.skytech.skypiea.commons.entity;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.BinarySensorType;

@Entity
@Table(name="BINARY_SENSOR")
@PrimaryKeyJoinColumn(name="ID")
public class BinarySensor extends NonMedicalConnectedObject {
	
	@Column(name="HAS_DETECTED")
	private boolean hasDetected; 
	
	@Column(name="TYPE")
	private BinarySensorType type;

	public boolean isHasDetected() {
		return hasDetected;
	}

	public void setHasDetected(boolean hasDetected) {
		this.hasDetected = hasDetected;
	}

	public BinarySensorType getType() {
		return type;
	}

	public void setType(BinarySensorType type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "BinarySensor [hasDetected=" + hasDetected + ", type=" + type + ", toString()=" + super.toString() + "]";
	} 
	
	
}