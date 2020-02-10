package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

import com.skytech.skypiea.commons.enumeration.EventType;

@MappedSuperclass
public abstract class Event extends com.skytech.skypiea.commons.entity.Entity {

	@Enumerated(EnumType.STRING)
	@Column(name="EVENT_TYPE")
	protected EventType eventType;
	
	@Column(name="START_TIME")
	protected Timestamp startTime;
	
	@Column(name="DESCRIPTION")
	protected String description;
	
	@Column(name="LAST_MEASURED_VALUE")
	protected Float lastMeasuredValue;
	
	
	public Event() {
		super();
	}	

	public Event(Long id, Long version, EventType eventType, Timestamp startTime, String description,
			Float lastMeasuredValue) {
		super(id, version);
		this.eventType = eventType;
		this.startTime = startTime;
		this.description = description;
		this.lastMeasuredValue = lastMeasuredValue;
	}

	public EventType getEventType() {
		return eventType;
	}

	public void setEventType(EventType eventType) {
		this.eventType = eventType;
	}

	public Timestamp getStartTime() {
		return startTime;
	}

	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Float getLastMeasuredValue() {
		return lastMeasuredValue;
	}


	public void setLastMeasuredValue(Float lastMeasuredValue) {
		this.lastMeasuredValue = lastMeasuredValue;
	}
}
