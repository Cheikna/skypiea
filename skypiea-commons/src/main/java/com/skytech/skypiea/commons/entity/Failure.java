package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="FAILURE")
public class Failure extends com.skytech.skypiea.commons.entity.Entity {
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "NON_MEDICAL_CONNECTECD_OBJECT_ID")
	private NonMedicalConnectedObject nonMedicalConnectedObject;
	
	@Column(name="INFORMATION")
	private String information;
	
	@Column(name="FAILURE_DATE")
	private Timestamp failureDate;	

	public Failure() {
		super();
	}

	public Failure(Long id, Long version, String information, Timestamp failureDate) {
		super(id, version);
		this.information = information;
		this.failureDate = failureDate;
	}

	public NonMedicalConnectedObject getNonMedicalConnectedObject() {
		return nonMedicalConnectedObject;
	}

	public void setNonMedicalConnectedObject(NonMedicalConnectedObject nonMedicalConnectedObject) {
		this.nonMedicalConnectedObject = nonMedicalConnectedObject;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	public Timestamp getFailureDate() {
		return failureDate;
	}

	public void setFailureDate(Timestamp failureDate) {
		this.failureDate = failureDate;
	}	

}
