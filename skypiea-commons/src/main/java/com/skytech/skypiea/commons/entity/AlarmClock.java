package com.skytech.skypiea.commons.entity;


import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;


@Entity
@Table(name="ALARM_CLOCK")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class AlarmClock extends NonMedicalConnectedObject {
	
	@Column(name="NOW_TIME")
	private Timestamp currentTime;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;
	
	public AlarmClock() {
		super();
	}

	public AlarmClock(Long id, Long version, Timestamp lastParameterModificationDate, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			 Timestamp installationDate, Timestamp currentTime, String svgPoint, Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state, NonMedicalObjectType.ALARM_CLOCK, installationDate, svgPoint);
		this.currentTime = currentTime;
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
	}

	public Timestamp getCurrentTime() {
		return currentTime;
	}

	public void setCurrentTime(Timestamp currentTime) {
		this.currentTime = currentTime;
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
