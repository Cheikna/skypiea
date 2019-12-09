package com.skytech.skypiea.commons.entity;

import java.util.Date;

import javax.persistence.*;
import javax.persistence.Entity;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="BATHTUB")
@PrimaryKeyJoinColumn(name="ID")
public class Bathtub extends NonMedicalConnectedObject{
	
	
	
	
	@Column(name="WATER_LEVEL")
	private int waterLevel;	
	
	@Column(name="BATHTUB_HEIGHT")
	private int bathtubHeight;

	@Column(name="IS_TAP_OPENED")
	private boolean isTapOpened;
	
	@Column(name="TAP_OPENING_DATE")
	private Date tapOpeningDate;
	
	@Column(name="TAP_CLOSURE_DATE")
	private Date tapClosureDate;
	
	@JoinColumn(name = "ID_ROOM")
    private Room room;

	public int getWaterLevel() {
		return waterLevel;
	}
	

	public void setWaterLevel(int waterLevel) {
		this.waterLevel = waterLevel;
	}

	public int getBathtubHeight() {
		return bathtubHeight;
	}

	public void setBathtub_Height(int bathtubHeight) {
		this.bathtubHeight = bathtubHeight;
	}

	public boolean getIsTapOpened() {
		return isTapOpened;
	}

	public void setIsTapOpened(boolean isTapOpened) {
		this.isTapOpened = isTapOpened;
	}

	public Date getTapOpeningDate() {
		return tapOpeningDate;
	}

	public void setTapOpeningDate(Date tapOpeningDate) {
		this.tapOpeningDate = tapOpeningDate;
	}

	public Date getTapClosureDate() {
		return tapClosureDate;
	}

	public void setTapClosureDate(Date tapClosureDate) {
		this.tapClosureDate = tapClosureDate;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@Override
	public String toString() {
		return "Bathtub [waterLevel=" + waterLevel + ", Bathtub Height=" + bathtubHeight + ", is_Tap_Opened=" + isTapOpened + ", tap_Opening_Date=" + tapOpeningDate +  ",tap_Closure_Date =" + tapClosureDate + ",room =" + room +", toString()="
				+ super.toString() + "]";
	} 
	
}