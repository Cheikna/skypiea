package com.skytech.skypiea.commons.enumeration;

public enum NonMedicalObjectType {
	
	BINARY_SENSOR(""),
	
	SHUTTER(""),
	
	SUNSHINE_SENSOR("lux"),
	
	SMOKE_SENSOR("ppm"),
	
	DOOR_SENSOR(""),
	
	BULB("lux"),
	
	TEMPERATURE_CONTROLLER("°C"),
	
	ALARM_CLOCK("");
	
	private String measurementUnit;
	
	private NonMedicalObjectType(String measurementUnit) {
		this.measurementUnit = measurementUnit;
	}

	public String getMeasurementUnit() {
		return measurementUnit;
	}	
}
