package com.skytech.skypiea.commons.entity;



import javax.persistence.*;
import javax.persistence.Entity;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="TEMPERATURE_CONTROLLER")
@PrimaryKeyJoinColumn(name="ID")
public class TemperatureController extends NonMedicalConnectedObject{
	
	
	@Column(name="THRESHOLD")
	private int threshold;	
	
	@Column(name="TEMPERATURE_MAX")
	private int temperatureMax;

	@Column(name="TEMPERATURE_MIN")
	private int temperatureMin;
	
	@Column(name="TEMPERATURE_SETTLED ")
	private int temperatureSettled;
	
	@Column(name="IS_HEALTHING_CONNECTED")
	private boolean isHealthingConnected;
	
	@Column(name="IS_AIR_CONDITIONNER_CONNECTED")
	private boolean isAirConditionnerConnected;
	
	@JoinColumn(name = "ID_ROOM")
    private Room room;

	

	public int getThreshold() {
		return threshold;
	}

	public void setThreshold(int threshold) {
		this.threshold = threshold;
	}

	public int getTemperatureMax() {
		return temperatureMax;
	}

	public void setTemperatureMax(int temperatureMax) {
		this.temperatureMax = temperatureMax;
	}

	public int getTemperatureMin() {
		return temperatureMin;
	}

	public void setTemperatureMin(int temperatureMin) {
		this.temperatureMin = temperatureMin;
	}

	public int getTemperatureSettled() {
		return temperatureSettled;
	}

	public void setTemperatureSettled(int temperatureSettled) {
		this.temperatureSettled = temperatureSettled;
	}

	public boolean getIsHealthingConnected() {
		return isHealthingConnected;
	}

	public void setIsHealthingConnected(boolean isHealthingConnected) {
		this.isHealthingConnected = isHealthingConnected;
	}

	public boolean getIsAirConditionnerConnected() {
		return isAirConditionnerConnected;
	}

	public void setIsAirConditionnerConnected(boolean isAirConditionnerConnected) {
		this.isAirConditionnerConnected = isAirConditionnerConnected;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}
	
	@Override
	public String toString() {
		return "TemperatureController [threshold=" + threshold + ", temperature Max=" + temperatureMax + ", temperature Min=" + temperatureMin + ", temperature Settled=" + temperatureSettled +  ",is_Healthing_Connected =" + isHealthingConnected + ",is_Air_Conditionner_Connected =" + isAirConditionnerConnected + ",room =" + room +", toString()="
				+ super.toString() + "]";
	} 
}
	
	