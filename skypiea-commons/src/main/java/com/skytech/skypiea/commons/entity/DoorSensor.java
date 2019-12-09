package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

@Table(name="DOOR_SENSOR")
public class DoorSensor extends NonMedicalConnectedObject  {
	
	@Column(name="IS_DOOR_LOCKED")
	private boolean isDoorLocked;
	
	@Column(name="IS_DOOR_OPENED")
	private boolean isDoorOpened;

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

	@Override
	public String toString() {
		return "DoorSensor [isDoorLocked=" + isDoorLocked + ", isDoorOpened=" + isDoorOpened + ", toString()="
				+ super.toString() + "]";
	}
	
	

}
