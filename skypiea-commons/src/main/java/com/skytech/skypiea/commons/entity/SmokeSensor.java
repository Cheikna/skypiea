package com.skytech.skypiea.commons.entity;


import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="SMOKE_SENSOR")
public class SmokeSensor extends ObjectSetting  {

	@Column(name="THRESHOLD")
	private Float threshold;	
	
	@Column(name="SENSITIVITY")
	private String sensitivity;


	public SmokeSensor() {
		super();
	}

	public SmokeSensor(Long id, Long version, Timestamp savingDate, float threshold, String sensitivity) {
		super(id, version, savingDate);
		this.threshold = threshold;
		this.sensitivity = sensitivity;
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
}
