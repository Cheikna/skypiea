package com.skytech.skypiea.commons.entity;
import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="CONNECTED_OBJECT")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class ConnectedObject extends com.skytech.skypiea.commons.entity.Entity {

	@Column(name="LAST_PARAMETER_MODIFICATION_DATE")
	protected Timestamp lastParameterModificationDate; 
	
	@Column(name="BRAND")
	protected String brand;	
	
	@Column(name="IP_ADDRESS")
	protected String ipAddress;
	
	@Column(name="MAC_ADDRESS")
	protected String macAddress;
	
	@Column(name="LAST_MEASUREMENT_DATE")
	protected Timestamp lastMeasurementDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS")
	protected Status status; 
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATE")
	protected State state;
	
	@Column(name="SENSITIVITY")
	protected Long sensitivity;
	
	@OneToOne(cascade=CascadeType.ALL, orphanRemoval=true)
    @JoinColumn(name = "REAL_TIME_EVENT_ID")
	protected RealTimeEvent realTimeEvent;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "CONNECTED_OBJECT_ID")
	protected Set<HistoryEvent> historyEvents;

	public ConnectedObject() {
		super();
	}	

	public ConnectedObject(Long id, Long version, Timestamp lastParameterModificationDate,
			String brand, String ipAddress, String macAddress, Timestamp lastMeasurementDate, Status status, State state,
			Long sensitivity) {
		super(id, version);
		this.lastParameterModificationDate = lastParameterModificationDate;
		this.brand = brand;
		this.ipAddress = ipAddress;
		this.macAddress = macAddress;
		this.lastMeasurementDate = lastMeasurementDate;
		this.status = status;
		this.state = state;
		this.sensitivity = sensitivity;
	}

	public Timestamp getLastParameterModification() {
		return lastParameterModificationDate;
	}

	public void setLastParameterModification(Timestamp lastParameterModificationDate) {
		this.lastParameterModificationDate = lastParameterModificationDate;
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

	public Timestamp getLastMeasurementDate() {
		return lastMeasurementDate;
	}

	public void setLastMeasurementDate(Timestamp lastMeasurementDate) {
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

	public Timestamp getLastParameterModificationDate() {
		return lastParameterModificationDate;
	}

	public void setLastParameterModificationDate(Timestamp lastParameterModificationDate) {
		this.lastParameterModificationDate = lastParameterModificationDate;
	}

	public Long getSensitivity() {
		return sensitivity;
	}

	public void setSensitivity(Long sensitivity) {
		this.sensitivity = sensitivity;
	}

	public RealTimeEvent getRealTimeEvent() {
		return realTimeEvent;
	}

	public void setRealTimeEvent(RealTimeEvent realTimeEvent) {
		this.realTimeEvent = realTimeEvent;
	}

	public Set<HistoryEvent> getHistoryEvents() {
		return historyEvents;
	}

	public void setHistoryEvents(Set<HistoryEvent> historyEvents) {
		this.historyEvents = historyEvents;
	}	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((brand == null) ? 0 : brand.hashCode());
		result = prime * result + ((ipAddress == null) ? 0 : ipAddress.hashCode());
		result = prime * result + ((lastMeasurementDate == null) ? 0 : lastMeasurementDate.hashCode());
		result = prime * result
				+ ((lastParameterModificationDate == null) ? 0 : lastParameterModificationDate.hashCode());
		result = prime * result + ((macAddress == null) ? 0 : macAddress.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		ConnectedObject other = (ConnectedObject) obj;
		if (brand == null) {
			if (other.brand != null)
				return false;
		} else if (!brand.equals(other.brand))
			return false;
		if (ipAddress == null) {
			if (other.ipAddress != null)
				return false;
		} else if (!ipAddress.equals(other.ipAddress))
			return false;
		if (lastMeasurementDate == null) {
			if (other.lastMeasurementDate != null)
				return false;
		} else if (!lastMeasurementDate.equals(other.lastMeasurementDate))
			return false;
		if (lastParameterModificationDate == null) {
			if (other.lastParameterModificationDate != null)
				return false;
		} else if (!lastParameterModificationDate.equals(other.lastParameterModificationDate))
			return false;
		if (macAddress == null) {
			if (other.macAddress != null)
				return false;
		} else if (!macAddress.equals(other.macAddress))
			return false;
		if (state != other.state)
			return false;
		if (status != other.status)
			return false;
		return true;
	}
}
