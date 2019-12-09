package com.skytech.skypiea.commons.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.Wing;

@Entity
@Table(name="ROOM")
public class Room extends com.skytech.skypiea.commons.entity.Entity {
	
	@Column(name="DOOR_NUMBER")
	private Long doorNumber;
	
	@Column(name="FLOOR")
	private int floor;
	
	@Column(name="WIDTH")
	private float width;
	
	@Column(name="LENGTH")
	private float length;
	
	@Column(name="HEIGHT")
	private float height;
	
	@Column(name="WING")
	private Wing wing;
	
	@OneToOne(mappedBy = "room")
	private Resident resident;
	
	@OneToMany(mappedBy="room")
	private Set<NonMedicalConnectedObject> nonMedicalConnectedObjects;
	

	public Room() {
		super();
	}	

	public Room(Long id, Long version, Long doorNumber, int floor, float width, float length, float height, Wing wing) {
		super(id, version);
		this.doorNumber = doorNumber;
		this.floor = floor;
		this.width = width;
		this.length = length;
		this.height = height;
		this.wing = wing;
	}


	public Long getDoorNumber() {
		return doorNumber;
	}

	public void setDoorNumber(Long doorNumber) {
		this.doorNumber = doorNumber;
	}

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
	}

	public float getWidth() {
		return width;
	}

	public void setWidth(float width) {
		this.width = width;
	}

	public float getLength() {
		return length;
	}

	public void setLength(float length) {
		this.length = length;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public Wing getWing() {
		return wing;
	}

	public void setWing(Wing wing) {
		this.wing = wing;
	}

	public Resident getResident() {
		return resident;
	}

	public void setResident(Resident resident) {
		this.resident = resident;
	}
	
	
}

