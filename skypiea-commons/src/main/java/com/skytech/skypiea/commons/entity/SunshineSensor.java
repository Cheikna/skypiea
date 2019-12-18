package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="SUNSHINE_SENSOR")
public class SunshineSensor extends ObjectSetting {
	
	@Column(name="EXTERNAL_TEMPERATURE")
	private Float externalTemperature;
	
	@Column(name="EXTERNAL_SUNSHINE")
	private Float externalSunshine;


	public SunshineSensor() {
		super();
	}	

	public SunshineSensor(Long id, Long version, Timestamp savingDate, float externalTemperature,
			float externalSunshine) {
		super(id, version, savingDate);
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
