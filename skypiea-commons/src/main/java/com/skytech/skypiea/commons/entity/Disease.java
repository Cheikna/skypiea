package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.Disease;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name="MEDICAL_RECORD")
public class MedicalRecord extends com.skytech.skypiea.commons.entity.Entity{


	@Enumerated(EnumType.STRING)
	@Column(name="DISEASE")
	protected Disease disease;

	@Column(name="DURATION")
	protected String duration;
	
	@Column(name="TREATMENT")
	protected String treatment;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn (name="ID_CLIENT", nullable=false)
	private Client client;
	
	
	public MedicalRecord() {
		
	}
	
	public MedicalRecord(Long id, Long version, Disease disease, String duration, String treatment) {
		super(id, version);
		this.disease = disease;
		this.duration = duration;
		this.treatment = treatment;
	}

	public Disease getDisease() {
		return disease;
	}

	public void setDisease(Disease disease) {
		this.disease = disease;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getTreatment() {
		return treatment;
	}

	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	
	

	
	
	
	

}
