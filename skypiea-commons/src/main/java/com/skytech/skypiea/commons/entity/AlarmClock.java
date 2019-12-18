package com.skytech.skypiea.commons.entity;


import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


@Entity
@Table(name="ALARM_CLOCK")
public class AlarmClock extends ObjectSetting {
	
	@Column(name="NOW_TIME")
	private Timestamp currentTime;
	
	public AlarmClock() {
		super();
	}

	public AlarmClock(Long id, Long version,  Timestamp savingDate, Timestamp currentTime) {
		super(id, version, savingDate);
		this.currentTime = currentTime;
	}

	public Timestamp getCurrentTime() {
		return currentTime;
	}

	public void setCurrentTime(Timestamp currentTime) {
		this.currentTime = currentTime;
	}	
}
