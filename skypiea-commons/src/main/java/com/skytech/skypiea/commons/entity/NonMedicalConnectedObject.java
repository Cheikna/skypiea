package com.skytech.skypiea.commons.entity;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;


@Entity
@Table(name="NON_MEDICAL_CONNECTED_OBJECT")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class NonMedicalConnectedObject extends ConnectedObject {

	

}
