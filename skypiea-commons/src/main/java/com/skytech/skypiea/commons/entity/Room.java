package com.skytech.skypiea.commons.entity;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
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
	
	@Enumerated(EnumType.STRING)
	@Column(name="WING")
	private Wing wing;
	
	@Column(name="SVG_POINT")
	private String svgPoint;	
	
	@OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name = "RESIDENT_ID")
	private Resident resident;
	
	@JsonManagedReference(value="room")
	@OneToMany(mappedBy="room", cascade=CascadeType.ALL)
	private Set<NonMedicalConnectedObject> nonMedicalConnectedObjects;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATE")
	private State state;
	
	@Transient
	private Map<NonMedicalObjectType, Integer> objectQuantityByType;
	
	@Transient
	private int numberOfNonMedicalObjects;
	

	public Room() {
		super();
	}	

	public Room(Long id, Long version, Long doorNumber, int floor, float width, float length, float height, Wing wing,
			String svgPoint) {
		super(id, version);
		this.doorNumber = doorNumber;
		this.floor = floor;
		this.width = width;
		this.length = length;
		this.height = height;
		this.wing = wing;
		this.svgPoint = svgPoint;
		//this.objectQuantityByType = new HashMap<String, Integer>();
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

	public Set<NonMedicalConnectedObject> getNonMedicalConnectedObjects() {
		return nonMedicalConnectedObjects;
	}

	public void setNonMedicalConnectedObjects(Set<NonMedicalConnectedObject> nonMedicalConnectedObjects) {
		this.nonMedicalConnectedObjects = nonMedicalConnectedObjects;
	}	

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	public Map<NonMedicalObjectType, Integer> getObjectQuantityByType() {
		return objectQuantityByType;
	}

	public void setObjectQuantityByType(Map<NonMedicalObjectType, Integer> objectQuantityByType) {
		this.objectQuantityByType = objectQuantityByType;
	}		
	
	public int getNumberOfNonMedicalObjects() {
		return numberOfNonMedicalObjects;
	}

	public void setNumberOfNonMedicalObjects(int numberOfNonMedicalObjects) {
		this.numberOfNonMedicalObjects = numberOfNonMedicalObjects;
	}

	/**
	 * Fill the map with the quantity of objects by type
	 */
	@Transient
	public void initObjectQuantityByType() {
		objectQuantityByType = new HashMap<NonMedicalObjectType, Integer>();
		if(this.nonMedicalConnectedObjects != null && nonMedicalConnectedObjects.size() > 0) {
			nonMedicalConnectedObjects.forEach((object) -> {
				NonMedicalObjectType objectType = object.getNonMedicalObjectType();
				Integer quantity;
				try {
					// Try to retrieve the previous quantity of the object type
					// and add 1 to the quantity if the type already exists in the hashmap
					quantity = objectQuantityByType.get(objectType) + 1;
				}
				catch(Exception e) {
					// If the key does not exist
					quantity = 1;
				}
				objectQuantityByType.put(objectType, quantity);
			});
		}
	}

	public String getSvgPoint() {
		return svgPoint;
	}

	public void setSvgPoint(String svgPoint) {
		this.svgPoint = svgPoint;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((doorNumber == null) ? 0 : doorNumber.hashCode());
		result = prime * result + floor;
		result = prime * result + Float.floatToIntBits(height);
		result = prime * result + Float.floatToIntBits(length);
		result = prime * result + ((svgPoint == null) ? 0 : svgPoint.hashCode());
		result = prime * result + Float.floatToIntBits(width);
		result = prime * result + ((wing == null) ? 0 : wing.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Room other = (Room) obj;
		if (doorNumber == null) {
			if (other.doorNumber != null)
				return false;
		} else if (!doorNumber.equals(other.doorNumber))
			return false;
		if (floor != other.floor)
			return false;
		if (Float.floatToIntBits(height) != Float.floatToIntBits(other.height))
			return false;
		if (Float.floatToIntBits(length) != Float.floatToIntBits(other.length))
			return false;
		if (svgPoint == null) {
			if (other.svgPoint != null)
				return false;
		} else if (!svgPoint.equals(other.svgPoint))
			return false;
		if (Float.floatToIntBits(width) != Float.floatToIntBits(other.width))
			return false;
		if (wing != other.wing)
			return false;
		return true;
	}
}

