package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="DOOR_SENSOR")
public class DoorSensor extends ObjectSetting  {
	
	@Column(name="IS_DOOR_LOCKED")
	private Boolean isDoorLocked;
	
	@Column(name="IS_DOOR_OPENED")
	private Boolean isDoorOpened;
	
	public DoorSensor() {
		super();
	}	

	public DoorSensor(Long id, Long version, Timestamp savingDate, boolean isDoorLocked, boolean isDoorOpened) {
		super(id, version, savingDate);
		this.isDoorLocked = isDoorLocked;
		this.isDoorOpened = isDoorOpened;
	}

	public boolean isDoorLocked() {
		return isDoorLocked;
	}

	public void setDoorLocked(boolean isDoorLocked) {
		this.isDoorLocked = isDoorLocked;
	}

	public boolean isDoorOpened() {
		return isDoorOpened;
	}

	public void setDoorOpened(boolean isDoorOpened) {
		this.isDoorOpened = isDoorOpened;
	}	
}
