package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;

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
public abstract class ObjectSetting extends com.skytech.skypiea.commons.entity.Entity {
	
	@Column(name="SAVING_DATE")
	protected Timestamp savingDate;
	
	public ObjectSetting() {
		super();
	}

	public ObjectSetting(Long id, Long version, Timestamp savingDate) {
		super(id, version);
		this.savingDate = savingDate;
	}

	public Timestamp getSavingDate() {
		return savingDate;
	}

	public void setSavingDate(Timestamp savingDate) {
		this.savingDate = savingDate;
	}

}
