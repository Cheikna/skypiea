package com.skytech.skypiea.commons.entity;

import java.util.Date;

import javax.persistence.*;
import javax.persistence.Entity;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="Bathtub")
@PrimaryKeyJoinColumn(name="ID")
public class Bathtub extends NonMedicalConnectedObject{
	
	
	
	
	@Column(name="water_Level")
	private int water_Level;	
	
	@Column(name="bathtub_Height")
	private int bathtub_Height;

	@Column(name="is_Tap_Opened")
	private boolean is_Tap_Opened;
	
	@Column(name="tap_Opening_Date")
	private Date tap_Opening_Date;
	
	@Column(name="tap_Closure_Date")
	private Date tap_Closure_Date;
	
	@JoinColumn(name = "id_Room")
    private Room room;

	public int getWater_Level() {
		return water_Level;
	}

	public void setWater_Level(int water_Level) {
		this.water_Level = water_Level;
	}

	public int getBathtub_Height() {
		return bathtub_Height;
	}

	public void setBathtub_Height(int bathtub_Height) {
		this.bathtub_Height = bathtub_Height;
	}

	public boolean isIs_Tap_Opened() {
		return is_Tap_Opened;
	}

	public void setIs_Tap_Opened(boolean is_Tap_Opened) {
		this.is_Tap_Opened = is_Tap_Opened;
	}

	public Date getTap_Opening_Date() {
		return tap_Opening_Date;
	}

	public void setTap_Opening_Date(Date tap_Opening_Date) {
		this.tap_Opening_Date = tap_Opening_Date;
	}

	public Date getTap_Closure_Date() {
		return tap_Closure_Date;
	}

	public void setTap_Closure_Date(Date tap_Closure_Date) {
		this.tap_Closure_Date = tap_Closure_Date;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	@Override
	public String toString() {
		return "Bathtub [waterLevel=" + water_Level + ", Bathtub Height=" + bathtub_Height + ", is_Tap_Opened=" + is_Tap_Opened + ", tap_Opening_Date=" + tap_Opening_Date +  ",tap_Closure_Date =" + tap_Closure_Date + ",room =" + room +", toString()="
				+ super.toString() + "]";
	} 
	
}