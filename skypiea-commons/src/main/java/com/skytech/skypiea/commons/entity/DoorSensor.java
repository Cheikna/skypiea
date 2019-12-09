package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="DOOR_SENSOR")
@PrimaryKeyJoinColumn(name="ID")
public class DoorSensor extends NonMedicalConnectedObject  {
	
	@Column(name="IS_DOOR_LOCKED")
	private boolean isDoorLocked;
	
	@Column(name="IS_DOOR_OPENED")
	private boolean isDoorOpened;
	
	public DoorSensor() {
		super();
	}

	public DoorSensor(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistory, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			boolean isDoorLocked, boolean isDoorOpened, Timestamp installationDate) {
		super(id, version, lastParameterModificationDate, isHistory, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state, NonMedicalObjectType.DOOR_SENSOR, installationDate);
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
