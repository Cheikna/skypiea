package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="BULB")
@PrimaryKeyJoinColumn(name="PARENT_ID")
public class Bulb extends NonMedicalConnectedObject {
	
	@Column(name="CURRENT_COLOR")
	private String currentColor;
	
	@Column(name="IS_CURRENT_SETTINGS")
	private boolean isCurrentSettings;
	
	@Column(name="SAVING_DATE")
	private Timestamp savingDate;

	public Bulb(Long id, Long version, Timestamp lastParameterModificationDate, String brand,
			String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state,
			Timestamp installationDate, String svgPoint, Boolean isCurrentSettings, Timestamp savingDate) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate, status,
				state, NonMedicalObjectType.BULB, installationDate, svgPoint);
		this.isCurrentSettings = isCurrentSettings;
		this.savingDate = savingDate;
	}

	public Bulb() {
		super();
	}
	
	public String getCurrentColor() {
		return this.currentColor;
	}

	public void setCurrentColor(String currentColor) {
		this.currentColor = currentColor;
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
