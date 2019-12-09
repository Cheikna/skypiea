package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

import com.skytech.skypiea.commons.enumeration.Wing;

@Table(name="NON_MEDICAL_CONNECTED_OBJECT")
public class Room extends Entity{
	
	@Column(name="DOOR_NUMBER")
	private String doorNumber;
	
	@Column(name="FLOOR")
	private int floor;
	
	@Column(name="IS_OCCUPED")
	private boolean isOccuped;
	
	@Column(name="WIDTH")
	private int width;
	
	@Column(name="LENGTH")
	private int length;
	
	@Column(name="HEIGHT")
	private int height;
	
	@Column(name="WING")
	private Wing wing;
}

