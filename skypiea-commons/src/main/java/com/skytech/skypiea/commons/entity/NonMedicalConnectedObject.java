package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PostLoad;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name="NON_MEDICAL_CONNECTED_OBJECT")
public class NonMedicalConnectedObject extends ConnectedObject {	
	
	@Column(name="INSTALLATION_DATE")
	private Timestamp installationDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name="NON_MEDICAL_OBJECT_TYPE")
	private NonMedicalObjectType nonMedicalObjectType;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ROOM_ID", nullable = false)
	private Room room;
	
	@Column(name="SVG_POINT")
	private String svgPoint;
	
	@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "NON_MEDICAL_CONNECTED_OBJECT_ID")
	private Set<ObjectSetting> objectSettings;
	
	@Transient
	private ObjectSetting currentSetting;

	public NonMedicalConnectedObject() {
		super();
	}

	public NonMedicalConnectedObject(Long id, Long version, Timestamp lastParameterModificationDate,
			String brand, String ipAddress, String macAddress, Timestamp lastMeasurementDate,
			Status status, State state, NonMedicalObjectType nonMedicalObjectType, Timestamp installationDate, String svgPoint) {
		super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate,
				status, state);
		this.nonMedicalObjectType = nonMedicalObjectType;
		this.installationDate = installationDate;
		this.svgPoint = svgPoint;
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

	public String getSvgPoint() {
		return svgPoint;
	}

	public void setSvgPoint(String svgPoint) {
		this.svgPoint = svgPoint;
	}

	public Set<ObjectSetting> getObjectSettings() {
		return objectSettings;
	}

	public void setObjectSettings(Set<ObjectSetting> objectSettings) {
		this.objectSettings = objectSettings;
	}

	public ObjectSetting getCurrentSetting() {
		return currentSetting;
	}

	public void setCurrentSetting(ObjectSetting currentSetting) {
		this.currentSetting = currentSetting;
	}	
	
	@PostLoad
	public void initCurrentSetting() {
		if(this.objectSettings != null && this.objectSettings.size() > 0) {
			// Create a list from the objectSettings set
			List<ObjectSetting> listToSort = objectSettings.stream().collect(Collectors.toList());
			// Order the list from the newest to the oldest
			Collections.sort(listToSort, (obj1, obj2) -> obj2.getSavingDate().compareTo(obj1.getSavingDate()));
			// Retrieve to first element of the list which is the newest
			this.currentSetting = listToSort.get(0);
		}
	}

}
