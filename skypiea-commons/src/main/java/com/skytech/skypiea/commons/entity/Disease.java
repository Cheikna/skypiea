package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.skytech.skypiea.commons.enumeration.DiseaseType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name="DISEASE")
public class Disease extends com.skytech.skypiea.commons.entity.Entity{


	@Enumerated(EnumType.STRING)
	@Column(name="TYPE_OF_DISEASE")
	protected DiseaseType typeOfDisease;

	@Column(name="DURATION")
	protected String duration;
	
	@Column(name="TREATMENT")
	protected String treatment;
	
	@ManyToOne
    @JoinColumn(name = "CLIENT_ID")
	private Client client;
	
	
	public Disease() {
		super();
	}
	
	public Disease(Long id, Long version, DiseaseType typeOfDisease, String duration, String treatment) {
		super(id, version);
		this.typeOfDisease = typeOfDisease;
		this.duration = duration;
		this.treatment = treatment;
	}

	public DiseaseType getTypeOfDisease() {
		return typeOfDisease;
	}

	public void setTypeOfDisease(DiseaseType typeOfDisease) {
		this.typeOfDisease = typeOfDisease;
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

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	@Override
	public String toString() {
		return "Disease [typeOfDisease=" + typeOfDisease + ", duration=" + duration + ", treatment=" + treatment + "]";
	}

	
	
	

}
