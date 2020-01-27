package com.skytech.skypiea.commons.entity;


import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="SMOKE_SENSOR")
public class SmokeSensor extends ObjectSetting  {

	@Column(name="MIN_THRESHOLD")
	private Float minThreshold;	
	
	@Column(name="THRESHOLD")
	private Float threshold;
	
	@Column(name="MAX_THRESHOLD")
	private Float maxThreshold;	
	
	@Column(name="SENSITIVITY")
	private String sensitivity;


	public SmokeSensor() {
		super();
	}

	public SmokeSensor(Long id, Long version, Timestamp savingDate, Float threshold, String sensitivity,
			Float minThreshold, Float maxThreshold) {
		super(id, version, savingDate);
		this.threshold = threshold;
		this.sensitivity = sensitivity;
		this.minThreshold = minThreshold;
		this.maxThreshold = maxThreshold;
	}

	public float getThreshold() {
		return threshold;
	}

	public void setThreshold(Float threshold) {
		this.threshold = threshold;
	}

	public String getSensitivity() {
		return sensitivity;
	}

	public void setSensitivity(String sensitivity) {
		this.sensitivity = sensitivity;
	}

	public Float getMinThreshold() {
		return minThreshold;
	}

	public void setMinThreshold(Float minThreshold) {
		this.minThreshold = minThreshold;
	}

	public Float getMaxThreshold() {
		return maxThreshold;
	}

	public void setMaxThreshold(Float maxThreshold) {
		this.maxThreshold = maxThreshold;
	} 
	
	
}
