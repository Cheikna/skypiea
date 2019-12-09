package com.skytech.skypiea.commons.entity;



import javax.persistence.*;
import javax.persistence.Entity;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="TemperatureController")
@PrimaryKeyJoinColumn(name="ID")
public class TemperatureController extends NonMedicalConnectedObject{
	
	
	@Column(name="threshold")
	private int threshold;	
	
	@Column(name="temperature_Max")
	private int temperature_Max;

	@Column(name="temperature_Min")
	private int temperature_Min;
	
	@Column(name="temperature_Settled ")
	private int temperature_Settled;
	
	@Column(name="is_Healthing_Connected")
	private boolean is_Healthing_Connected;
	
	@Column(name="is_Air_Conditionner_Connected")
	private boolean is_Air_Conditionner_Connected;
	
	@JoinColumn(name = "id_Room")
    private Room room;

	

	public int getThreshold() {
		return threshold;
	}

	public void setThreshold(int threshold) {
		this.threshold = threshold;
	}

	public int getTemperature_Max() {
		return temperature_Max;
	}

	public void setTemperature_Max(int temperature_Max) {
		this.temperature_Max = temperature_Max;
	}

	public int getTemperature_Min() {
		return temperature_Min;
	}

	public void setTemperature_Min(int temperature_Min) {
		this.temperature_Min = temperature_Min;
	}

	public int getTemperature_Settled() {
		return temperature_Settled;
	}

	public void setTemperature_Settled(int temperature_Settled) {
		this.temperature_Settled = temperature_Settled;
	}

	public boolean isIs_Healthing_Connected() {
		return is_Healthing_Connected;
	}

	public void setIs_Healthing_Connected(boolean is_Healthing_Connected) {
		this.is_Healthing_Connected = is_Healthing_Connected;
	}

	public boolean isIs_Air_Conditionner_Connected() {
		return is_Air_Conditionner_Connected;
	}

	public void setIs_Air_Conditionner_Connected(boolean is_Air_Conditionner_Connected) {
		this.is_Air_Conditionner_Connected = is_Air_Conditionner_Connected;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}
	
	@Override
	public String toString() {
		return "TemperatureController [threshold=" + threshold + ", temperature Max=" + temperature_Max + ", temperature Min=" + temperature_Min + ", temperature Settled=" + temperature_Settled +  ",is_Healthing_Connected =" + is_Healthing_Connected + ",is_Air_Conditionner_Connected =" + is_Air_Conditionner_Connected + ",room =" + room +", toString()="
				+ super.toString() + "]";
	} 
}
	
	