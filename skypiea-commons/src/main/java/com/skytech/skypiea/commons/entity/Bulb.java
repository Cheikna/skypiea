package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="BULB")
@PrimaryKeyJoinColumn(name="ID")
public class Bulb extends NonMedicalConnectedObject {
	
	@Column(name="CURRENT_COLOR")
	private String currentColor;

	public Bulb() {
		super();
	}

	public Bulb(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistory, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			Timestamp installationDate) {
		super(id, version, lastParameterModificationDate, isHistory, brand, ipAddress, macAddress, lastMeasurementDate, status,
				state, NonMedicalObjectType.BULB, installationDate);
	}

	public String getCurrentColor() {
		return currentColor;
	}

	public void setCurrentColor(String currentColor) {
		this.currentColor = currentColor;
	}	
	
}
