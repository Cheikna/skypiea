package com.skytech.skypiea.commons.enumeration;

public enum NonMedicalObjectType {
	
	BINARY_SENSOR("Binary sensor"),
	
	SHUTTER("Shutter"),
	
	SUNSHINE_SENSOR("Sunshine sensor"),
	
	SHOWER("Shower"),
	
	DOOR_SENSOR("Door sensor"),
	
	BULB("Bulb"),
	
	TEMPERATURE_CONTROLLER("Temperature controller"),
	
	ALARM_CLOCK("Alarm clock");
	
	private String name;

	NonMedicalObjectType(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	
	
}
