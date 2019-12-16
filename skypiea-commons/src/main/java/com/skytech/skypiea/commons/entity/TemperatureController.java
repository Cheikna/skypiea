package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="TEMPERATURE_CONTROLLER")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class TemperatureController extends NonMedicalConnectedObject  {

	@Column(name="THRESHOLD")
	private float threshold;	
	
	@Column(name="TEMPERATURE_MAX")
	private float temperatureMax;

	@Column(name="TEMPERATURE_MIN")
	private float temperatureMin;
	
	@Column(name="TEMPERATURE_SETTLED")
	private float temperatureSettled;
	
	@Column(name="CURRENT_TEMPERATURE")
	private float currentTemperature;
	
	@Column(name="IS_HEALTHING_CONNECTED")
	private boolean isHealthingConnected;
	
	@Column(name="IS_AIR_CONDITIONNER_CONNECTED")
	private boolean isAirConditionnerConnected;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;


	public TemperatureController() {
		super();
	}

	public TemperatureController(Long id, Long version, Timestamp lastParameterModificationDate,
			String brand, String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			Timestamp installationDate, String svgPoint, int threshold,
			int temperatureMax, int temperatureMin, int temperatureSettled, float currentTemperature, boolean isHealthingConnected,
			boolean isAirConditionnerConnected, Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state, NonMedicalObjectType.TEMPERATURE_CONTROLLER, installationDate, svgPoint);
		this.threshold = threshold;
		this.temperatureMax = temperatureMax;
		this.temperatureMin = temperatureMin;
		this.temperatureSettled = temperatureSettled;
		this.currentTemperature = currentTemperature;
		this.isHealthingConnected = isHealthingConnected;
		this.isAirConditionnerConnected = isAirConditionnerConnected;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
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
