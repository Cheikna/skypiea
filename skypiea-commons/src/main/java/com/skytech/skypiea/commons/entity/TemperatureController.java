package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="TEMPERATURE_CONTROLLER")
public class TemperatureController extends ObjectSetting  {

	@Column(name="THRESHOLD")
	private Float threshold;	
	
	@Column(name="TEMPERATURE_MAX")
	private Float temperatureMax;

	@Column(name="TEMPERATURE_MIN")
	private Float temperatureMin;
	
	@Column(name="TEMPERATURE_SETTLED")
	private Float temperatureSettled;
	
	@Column(name="CURRENT_TEMPERATURE")
	private Float currentTemperature;
	
	@Column(name="IS_HEALTHING_CONNECTED")
	private Boolean isHealthingConnected;
	
	@Column(name="IS_AIR_CONDITIONNER_CONNECTED")
	private Boolean isAirConditionnerConnected;


	public TemperatureController() {
		super();
	}

	public TemperatureController(Long id, Long version, Timestamp savingDate, float threshold, float temperatureMax,
			float temperatureMin, float temperatureSettled, float currentTemperature, boolean isHealthingConnected,
			boolean isAirConditionnerConnected) {
		super(id, version, savingDate);
		this.threshold = threshold;
		this.temperatureMax = temperatureMax;
		this.temperatureMin = temperatureMin;
		this.temperatureSettled = temperatureSettled;
		this.currentTemperature = currentTemperature;
		this.isHealthingConnected = isHealthingConnected;
		this.isAirConditionnerConnected = isAirConditionnerConnected;
	}

	public float getThreshold() {
		return threshold;
	}

	public void setThreshold(float threshold) {
		this.threshold = threshold;
	}

	public float getTemperatureMax() {
		return temperatureMax;
	}

	public void setTemperatureMax(float temperatureMax) {
		this.temperatureMax = temperatureMax;
	}

	public float getTemperatureMin() {
		return temperatureMin;
	}

	public void setTemperatureMin(float temperatureMin) {
		this.temperatureMin = temperatureMin;
	}

	public float getTemperatureSettled() {
		return temperatureSettled;
	}

	public void setTemperatureSettled(float temperatureSettled) {
		this.temperatureSettled = temperatureSettled;
	}	

	public float getCurrentTemperature() {
		return currentTemperature;
	}

	public void setCurrentTemperature(float currentTemperature) {
		this.currentTemperature = currentTemperature;
	}

	public boolean isHealthingConnected() {
		return isHealthingConnected;
	}

	public void setHealthingConnected(boolean isHealthingConnected) {
		this.isHealthingConnected = isHealthingConnected;
	}

	public boolean isAirConditionnerConnected() {
		return isAirConditionnerConnected;
	}

	public void setAirConditionnerConnected(boolean isAirConditionnerConnected) {
		this.isAirConditionnerConnected = isAirConditionnerConnected;
	}
}
