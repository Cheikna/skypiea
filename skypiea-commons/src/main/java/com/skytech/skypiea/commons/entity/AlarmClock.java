package com.skytech.skypiea.commons.entity;


import java.sql.Timestamp;

import javax.persistence.*;
import javax.persistence.Entity;


@Entity
@Table(name="ALARM_CLOCK")
@PrimaryKeyJoinColumn(name="ID")
public class AlarmClock extends NonMedicalConnectedObject {
	
	@Column(name="CURRENT_DAY")
	private Timestamp currentDay; 
	
}
