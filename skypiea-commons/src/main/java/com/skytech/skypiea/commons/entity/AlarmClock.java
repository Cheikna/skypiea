package com.skytech.skypiea.commons.entity;

import java.sql.Time;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.Day;

@Entity
@Table(name="ALARM_CLOCK")
@PrimaryKeyJoinColumn(name="ID")
public class AlarmClock extends NonMedicalConnectedObject {
	
	@Column(name="HOUR")
	private Time hour;
	
	@Column(name="DAY")
	private Day day;

	public Time getHour() {
		return hour;
	}

	public void setHour(Time hour) {
		this.hour = hour;
	}

	public Day getDay() {
		return day;
	}

	public void setDay(Day day) {
		this.day = day;
	}

	@Override
	public String toString() {
		return "AlarmClock [hour=" + hour + ", day=" + day + ", toString()=" + super.toString() + "]";
	} 
	
	
}
