package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.skytech.skypiea.commons.enumeration.Status;

@JsonTypeInfo(use = Id.NAME,
include = JsonTypeInfo.As.PROPERTY,
property = "type")
@JsonSubTypes({ 
	@Type(value = AlarmClock.class, name = "alarmClock"), 
	@Type(value = BinarySensor.class, name = "binarySensor"), 
	@Type(value = Bulb.class, name = "bulb"), 
	@Type(value = DoorSensor.class, name = "doorSensor"),
	@Type(value = Shutter.class, name = "shutter"), 
	@Type(value = SmokeSensor.class, name = "smokeSensor"),
	@Type(value = TemperatureController.class, name = "temperatureController"), 
	@Type(value = SunshineSensor.class, name = "sunshineSensor"),
})
@Entity
@Table(name="OBJECT_SETTING")
@Inheritance(strategy=InheritanceType.JOINED)
public class ObjectSetting extends com.skytech.skypiea.commons.entity.Entity {
	
	@Column(name="SAVING_DATE")
	protected Timestamp savingDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS")
	protected Status status; 
	
	@JsonBackReference(value="nonMedicalConnectedObject")
	@ManyToOne
	@JoinColumn(name = "NON_MEDICAL_CONNECTED_OBJECT_ID")
	private NonMedicalConnectedObject nonMedicalConnectedObject;
	
	public ObjectSetting() {
		super();
	}

	public ObjectSetting(Long id, Long version, Timestamp savingDate, Status status) {
		super(id, version);
		this.savingDate = savingDate;
		this.status = status;
	}

	public ObjectSetting(Long id, Long version, Timestamp savingDate) {
		this(id, version, savingDate, null);
	}

	public Timestamp getSavingDate() {
		return savingDate;
	}

	public void setSavingDate(Timestamp savingDate) {
		this.savingDate = savingDate;
	}	

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((savingDate == null) ? 0 : savingDate.hashCode());
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
		ObjectSetting other = (ObjectSetting) obj;
		if (savingDate == null) {
			if (other.savingDate != null)
				return false;
		} else if (!savingDate.equals(other.savingDate))
			return false;
		return true;
	}

	public NonMedicalConnectedObject getNonMedicalConnectedObject() {
		return nonMedicalConnectedObject;
	}

	public void setNonMedicalConnectedObject(NonMedicalConnectedObject nonMedicalConnectedObject) {
		this.nonMedicalConnectedObject = nonMedicalConnectedObject;
	}
}
