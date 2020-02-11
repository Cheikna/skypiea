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
	
	@Column(name="CODE")
	private String code;
	
	public DoorSensor() {
		super();
	}	

	public DoorSensor(Long id, Long version, Timestamp savingDate, boolean isDoorLocked, boolean isDoorOpened,
			String code) {
		super(id, version, savingDate);
		this.isDoorLocked = isDoorLocked;
		this.isDoorOpened = isDoorOpened;
		this.code = code;
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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}	
}
