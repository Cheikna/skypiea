package com.skytech.skypiea.commons.entity;

import java.util.Date;

import javax.persistence.*;
import javax.persistence.Entity;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="SMOKE_SENSOR")
@PrimaryKeyJoinColumn(name="ID")
public class SmokeSensor extends NonMedicalConnectedObject {
	
	
	@Column(name="THRESHOLD")
	private int threshold;	
	
	@Column(name="SENSITIVITY")
	private String sensitivity;
	
	@JoinColumn(name = "ID_ROOM")
    private Room room;

	

	public int getThreshold() {
		return threshold;
	}

	public void setThreshold(int threshold) {
		this.threshold = threshold;
	}

	public String getSensitivity() {
		return sensitivity;
	}

	public void setSensitivity(String sensitivity) {
		this.sensitivity = sensitivity;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}
	
	@Override
	public String toString() {
		return "SmokeSensor [threshold=" + threshold + ", sensitivity=" + sensitivity + ", room =" + room + ", toString()="
				+ super.toString() + "]";
	} 
	
}