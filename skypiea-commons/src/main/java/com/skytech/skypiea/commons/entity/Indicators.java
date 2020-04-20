package com.skytech.skypiea.commons.entity;

import javax.persistence.Table;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
@Table(name="INDICATORS")
public class Indicators extends com.skytech.skypiea.commons.entity.Entity{

	@Column(name="name")
	private String indicator;

	public Indicators() {
		super();
	}
	
	public Indicators(Long id, Long version, String indicator) {
		super(id, version);
		this.indicator = indicator;
	}
	
	public String getIndicator() {
		return indicator;
	}

	public void setIndicator(String indicator) {
		this.indicator = indicator;
	}
	
}
