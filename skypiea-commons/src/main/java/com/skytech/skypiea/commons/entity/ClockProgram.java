package com.skytech.skypiea.commons.entity;

import java.sql.Time;

import javax.persistence.*;

import com.skytech.skypiea.commons.enumeration.Day;

@Table(name="CLOCK_PROGRAM")
public class ClockProgram {
	
	@Id
	@Column(name="ID")
	private int idClockProgram;
	
	@Column(name="HOUR")
	private Time hour;
	
	@Column(name="DAY")
	private Day day;
	
	@Column(name="NAME")
	private String name;

	public int getIdClockProgram() {
		return idClockProgram;
	}

	public void setIdClockProgram(int idClockProgram) {
		this.idClockProgram = idClockProgram;
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

	@Override
	public String toString() {
		return "ClockProgram [idClockProgram=" + idClockProgram + ", hour=" + hour + ", day=" + day + ", name=" + name
				+ "]";
	}
	
	
}
