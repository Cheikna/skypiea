package com.skytech.skypiea.commons.entity;

import javax.persistence.*;
import javax.persistence.Entity;

@Entity
@Table(name="SUNSHINE_SENSOR")
@PrimaryKeyJoinColumn(name="ID")
public class SunshineSensor extends NonMedicalConnectedObject   {
	

}
