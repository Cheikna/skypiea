package com.skytech.skypiea.commons.entity;

import java.sql.Time;

import javax.persistence.*;
import javax.persistence.Entity;

import com.skytech.skypiea.commons.enumeration.Day;

@Entity
@Table(name="CLOCK_PROGRAM")
public class ClockProgram extends com.skytech.skypiea.commons.entity.Entity {
	
	@Column(name="HOUR")
	private Time hour;
	
	@Enumerated(EnumType.STRING)
	@Column(name="DAY")
	private Day day;
	
	@Column(name="NAME")
	private String name;	

	public ClockProgram() {
		super();
	}	

	public ClockProgram(Long id, Long version, Time hour, Day day, String name) {
		super(id, version);
		this.hour = hour;
		this.day = day;
		this.name = name;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	
	
}
