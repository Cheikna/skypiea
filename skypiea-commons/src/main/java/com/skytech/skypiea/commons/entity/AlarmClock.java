package com.skytech.skypiea.commons.entity;


import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;


@Entity
@Table(name="ALARM_CLOCK")
@PrimaryKeyJoinColumn(name="ID")
public class AlarmClock extends NonMedicalConnectedObject {
	
	@Column(name="CURRENT_TIME")
	private Timestamp currentTime;
	
	public AlarmClock() {
		super();
	}

	public AlarmClock(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistory, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			 Timestamp installationDate, Timestamp currentTime) {
		super(id, version, lastParameterModificationDate, isHistory, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state, NonMedicalObjectType.ALARM_CLOCK, installationDate);
		this.currentTime = currentTime;
	}

	public Timestamp getCurrentTime() {
		return currentTime;
	}

	public void setCurrentTime(Timestamp currentTime) {
		this.currentTime = currentTime;
	} 
	
}
