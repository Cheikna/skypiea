package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="BULB")
public class Bulb extends ObjectSetting {
	
	@Column(name="CURRENT_COLOR")
	private String currentColor;	


	public Bulb(Long id, Long version, Timestamp savingDate, String currentColor) {
		super(id, version, savingDate);
		this.currentColor = currentColor;
	}

	public Bulb() {
		super();
	}
	
	public String getCurrentColor() {
		return this.currentColor;
	}

	public void setCurrentColor(String currentColor) {
		this.currentColor = currentColor;
	}	
	
}
