package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

import com.skytech.skypiea.commons.enumeration.Wing;

@Table(name="ROOM")

@PrimaryKeyJoinColumn(name="ID")
public class Room extends Entity{
	
	@Column(name="DOOR_NUMBER")
	private Long doorNumber;
	
	@Column(name="FLOOR")
	private int floor;
	
	@Column(name="IS_OCCUPED")
	private boolean isOccuped;
	
	@Column(name="WIDTH")
	private float width;
	
	@Column(name="LENGTH")
	private float length;
	
	@Column(name="HEIGHT")
	private float height;
	
	@Column(name="WING")
	private Wing wing;
}

