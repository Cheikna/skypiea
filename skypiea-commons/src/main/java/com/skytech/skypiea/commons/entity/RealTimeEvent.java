package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.EventType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.util.DateUtil;

@Entity
@Table(name="REAL_TIME_EVENT")
public class RealTimeEvent extends Event {
	
	@Column(name="LAST_CHECKING_TIME")
	private Timestamp lastCheckingTime;
	
	@Enumerated(EnumType.STRING)
	@Column(name="CURRENT_STATE")
	private State currentState;
	
	@Column(name="CHECKING_COUNT")
	private Long checkingCount;
	
	
	public RealTimeEvent() {
		super();
	}	

	public RealTimeEvent(Long id, Long version, EventType eventType, Timestamp startTime, String description,
			Float lastMeasuredValue, Timestamp lastCheckingTime, State currentState, Long checkingCount) {
		super(id, version, eventType, startTime, description, lastMeasuredValue);
		this.lastCheckingTime = lastCheckingTime;
		this.currentState = currentState;
		this.checkingCount = checkingCount;
	}

	public Timestamp getLastCheckingTime() {
		return lastCheckingTime;
	}

	public void setLastCheckingTime(Timestamp lastCheckingTime) {
		this.lastCheckingTime = lastCheckingTime;
	}

	public State getCurrentState() {
		return currentState;
	}

	public void setCurrentState(State currentState) {
		this.currentState = currentState;
	}

	public Long getCheckingCount() {
		return checkingCount;
	}
	
	public void setCheckingCount(Long checkingCount) {
		this.checkingCount = checkingCount;
	}
	
	public void setForMissingState(String comments) {
		this.eventType = EventType.FAILURE;
		this.startTime = DateUtil.getCurrentTimestamp();
		this.description = comments;
		this.currentState = State.MISSING;
	}

	@Override
	public String toString() {
		return "RealTimeEvent [lastCheckingTime=" + lastCheckingTime + ", currentState=" + currentState
				+ ", checkingCount=" + checkingCount + ", eventType=" + eventType + ", startTime=" + startTime
				+ ", description=" + description + ", lastMeasuredValue=" + lastMeasuredValue + ", id=" + id
				+ ", version=" + version + "]";
	}
}
