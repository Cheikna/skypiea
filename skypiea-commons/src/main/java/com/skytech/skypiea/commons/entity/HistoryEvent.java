package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.EventType;
import com.skytech.skypiea.commons.enumeration.State;

@Entity
@Table(name="HISTORY_EVENT")
public class HistoryEvent extends Event {
	
	@Column(name="END_TIME")
	private Timestamp endTime;
	
	@Enumerated(EnumType.STRING)
	@Column(name="REACHED_STATE")
	private State reachedState;
	
	
	public HistoryEvent() {
		super();
	}		
	
	public HistoryEvent(Long id, Long version, EventType eventType, Timestamp startTime, String description,
			Float lastMeasuredValue, Timestamp endTime, State reachedState) {
		super(id, version, eventType, startTime, description, lastMeasuredValue);
		this.endTime = endTime;
		this.reachedState = reachedState;
	}

	public Timestamp getEndTime() {
		return endTime;
	}

	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}

	public State getReachedState() {
		return reachedState;
	}

	public void setReachedState(State reachedState) {
		this.reachedState = reachedState;
	}

	public void cloneFromRealTimeEvent(RealTimeEvent realTimeEvent) {
		this.eventType = realTimeEvent.eventType;
		this.startTime = realTimeEvent.startTime;
		this.description = realTimeEvent.description;
		this.lastMeasuredValue = realTimeEvent.lastMeasuredValue;
		this.endTime = realTimeEvent.getLastCheckingTime();
		this.reachedState = realTimeEvent.getCurrentState();
	}

}
