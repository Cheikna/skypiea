package com.skytech.skypiea.commons.entity;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;


@Table(name="CONNECTED_OBJECT")
public abstract class ConnectedObject extends Entity {

	@Column(name="LAST_PARAMETER_MODIFICATION")
	private Timestamp lastParameterModification; 
	
	@Column(name="IS_HISTORICY")
	private boolean isHistoricy;
	
	@Column(name="BRAND")
	private String brand ;	
	
	@Column(name="IP_ADDRESS")
	private String ipAddress;
	
	@Column(name="MAC_ADDRESS")
	private String macAddress;
	
	@Column(name="LAST_MEASUREMENT_DATE")
	private String lastMeasurementDate;
	
	@Column(name="STATUS")
	private Status status; 
	
	@Column(name="STATE")
	private State state;

	public Timestamp getLastParameterModification() {
		return lastParameterModification;
	}

	public void setLastParameterModification(Timestamp lastParameterModification) {
		this.lastParameterModification = lastParameterModification;
	}

	public boolean isHistoricy() {
		return isHistoricy;
	}

	public void setHistoricy(boolean isHistoricy) {
		this.isHistoricy = isHistoricy;
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

	@Override
	public String toString() {
		return "ConnectedObject [lastParameterModification=" + lastParameterModification + ", isHistoricy="
				+ isHistoricy + ", brand=" + brand + ", ipAddress=" + ipAddress + ", macAddress=" + macAddress
				+ ", lastMeasurementDate=" + lastMeasurementDate + ", status=" + status + ", state=" + state
				+ ", toString()=" + super.toString() + "]";
	}

	

	
}
