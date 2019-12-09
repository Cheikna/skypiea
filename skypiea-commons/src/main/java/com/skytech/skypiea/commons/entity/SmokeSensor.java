package com.skytech.skypiea.commons.entity;

import java.util.Date;

import javax.persistence.*;
import javax.persistence.Entity;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="SmokeSensor")
@PrimaryKeyJoinColumn(name="ID")
public class SmokeSensor extends NonMedicalConnectedObject {
	
	
	@Column(name="threshold")
	private int threshold;	
	
	@Column(name="sensitivity")
	private String sensitivity;
	
	@JoinColumn(name = "id_Room")
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