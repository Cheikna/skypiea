package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;


@Entity
@Table(name="NON_MEDICAL_CONNECTED_OBJECT")
@PrimaryKeyJoinColumn(name="ID")
public abstract class NonMedicalConnectedObject extends ConnectedObject {
	
	@Column(name="INSTALLATION_DATE")
	protected Timestamp installationDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name="NON_MEDICAL_OBJECT_TYPE")
	protected NonMedicalObjectType nonMedicalObjectType;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ROOM_ID", nullable = false)
	protected Room room;

	public NonMedicalConnectedObject() {
		super();
	}

	public NonMedicalConnectedObject(Long id, Long version, Timestamp lastParameterModificationDate,
			boolean isHistory, String brand, String ipAddress, String macAddress, String lastMeasurementDate,
			Status status, State state, NonMedicalObjectType nonMedicalObjectType, Timestamp installationDate) {
		super(id, version, lastParameterModificationDate, isHistory, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state);
		this.nonMedicalObjectType = nonMedicalObjectType;
		this.installationDate = installationDate;
	}

	public Timestamp getInstallationDate() {
		return installationDate;
	}

	public void setInstallationDate(Timestamp installationDate) {
		this.installationDate = installationDate;
	}

	public NonMedicalObjectType getNonMedicalObjectType() {
		return nonMedicalObjectType;
	}

	public void setNonMedicalObjectType(NonMedicalObjectType nonMedicalObjectType) {
		this.nonMedicalObjectType = nonMedicalObjectType;
	}

}
