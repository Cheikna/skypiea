package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="HEATER")
public class Heater extends com.skytech.skypiea.commons.entity.Entity {
	
	@Column(name="MEASUREMENT_DATE")
	private Timestamp measurementDate;
	
	@Column(name="TEMPERATURE")
	private float temperature;	

	public Heater() {
		super();
	}

	public Heater(Long id, Long version, Timestamp measurementDate, float temperature) {
		super(id, version);
		this.measurementDate = measurementDate;
		this.temperature = temperature;
	}

	public Timestamp getMeasurementDate() {
		return measurementDate;
	}

	public void setMeasurementDate(Timestamp measurementDate) {
		this.measurementDate = measurementDate;
	}

	public float getTemperature() {
		return temperature;
	}

	public void setTemperature(float temperature) {
		this.temperature = temperature;
	}	

}
