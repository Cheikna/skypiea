package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Entity;


@Entity
@Table(name="FAILURE_FACT")
public class FailureFact extends com.skytech.skypiea.commons.entity.Entity {
	

	@Column(name="OBJECT_TYPE")
	protected String objectType; 

	@Column(name="MAC_ADDRESS")
	protected String macAddress;

	@Column(name="START_DATE")
	private Timestamp startDate;

	@Column(name="END_DATE")
	protected Timestamp endDate;

	public FailureFact() {
		super();
	}	

	public FailureFact(Long id, Long version, String objectType, String macAddress, Timestamp startDate, Timestamp endDate) {
		super(id, version);
		this.objectType = objectType;
		this.macAddress = macAddress;
		this.startDate = startDate;
		this.endDate = endDate;

	}

	public String getObjectType() {
		return objectType;
	}

	public void setObjectType(String objectType) {
		this.objectType = objectType;
	}

	public String getMacAddress() {
		return macAddress;
	}

	public void setMacAddress(String macAddress) {
		this.macAddress = macAddress;
	}

	public Timestamp getStartDate() {
		return startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

}
