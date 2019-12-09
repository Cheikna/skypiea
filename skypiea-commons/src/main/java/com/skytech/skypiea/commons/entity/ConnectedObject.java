package com.skytech.skypiea.commons.entity;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="CONNECTED_OBJECT")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class ConnectedObject extends com.skytech.skypiea.commons.entity.Entity {

	@Column(name="LAST_PARAMETER_MODIFICATION_DATE")
	protected Timestamp lastParameterModificationDate; 
	
	@Column(name="IS_HISTORY")
	protected boolean isHistory;
	
	@Column(name="BRAND")
	protected String brand;	
	
	@Column(name="IP_ADDRESS")
	protected String ipAddress;
	
	@Column(name="MAC_ADDRESS")
	protected String macAddress;
	
	@Column(name="LAST_MEASUREMENT_DATE")
	protected String lastMeasurementDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS")
	protected Status status; 
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATE")
	protected State state;

	public ConnectedObject() {
		super();
	}	

	public ConnectedObject(Long id, Long version, Timestamp lastParameterModificationDate, boolean isHistory,
			String brand, String ipAddress, String macAddress, String lastMeasurementDate, Status status, State state) {
		super(id, version);
		this.lastParameterModificationDate = lastParameterModificationDate;
		this.isHistory = isHistory;
		this.brand = brand;
		this.ipAddress = ipAddress;
		this.macAddress = macAddress;
		this.lastMeasurementDate = lastMeasurementDate;
		this.status = status;
		this.state = state;
	}

	public Timestamp getLastParameterModification() {
		return lastParameterModificationDate;
	}

	public void setLastParameterModification(Timestamp lastParameterModificationDate) {
		this.lastParameterModificationDate = lastParameterModificationDate;
	}

	public boolean isHistory() {
		return isHistory;
	}

	public void setHistory(boolean isHistory) {
		this.isHistory = isHistory;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getMacAddress() {
		return macAddress;
	}

	public void setMacAddress(String macAddress) {
		this.macAddress = macAddress;
	}

	public String getLastMeasurementDate() {
		return lastMeasurementDate;
	}

	public void setLastMeasurementDate(String lastMeasurementDate) {
		this.lastMeasurementDate = lastMeasurementDate;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}	
}
