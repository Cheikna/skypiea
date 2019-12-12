package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="DOOR_SENSOR")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class DoorSensor extends NonMedicalConnectedObject  {
	
	@Column(name="IS_DOOR_LOCKED")
	private boolean isDoorLocked;
	
	@Column(name="IS_DOOR_OPENED")
	private boolean isDoorOpened;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;
	
	public DoorSensor() {
		super();
	}

	public DoorSensor(Long id, Long version, Timestamp lastParameterModificationDate, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			boolean isDoorLocked, boolean isDoorOpened, Timestamp installationDate, String svgPoint, 
			Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state, NonMedicalObjectType.DOOR_SENSOR, installationDate, svgPoint);
		this.isDoorLocked = isDoorLocked;
		this.isDoorOpened = isDoorOpened;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
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
