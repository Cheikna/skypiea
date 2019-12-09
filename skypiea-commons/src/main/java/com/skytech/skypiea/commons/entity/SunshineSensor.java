package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

@Table(name="SUNSHINE_SENSOR")
public class SunshineSensor extends NonMedicalConnectedObject   {

	@Override
	public String toString() {
		return "SunshineSensor [toString()=" + super.toString() + "]";
	}
	

}
