package com.skytech.skypiea.commons.entity;

import java.util.Set;

import javax.persistence.Table;


import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;

@Entity
@Table(name="MEDICAL_RECORD")
public class MedicalRecord extends com.skytech.skypiea.commons.entity.Entity{

	@ManyToMany
	@JoinColumn(name="ID_CLIENT")
	private Set<Client> clients;
	
	@JoinColumn(name="ID_DISEASE")
	private int idDisease;
	
	public MedicalRecord() {
		super();
	}

	public MedicalRecord(Long id, Long version, Set<Client> clients, int idDisease) {
		super(id, version);
		this.clients = clients;
		this.idDisease = idDisease;
	}

	public Set<Client> getClients() {
		return clients;
	}

	public void setClients(Set<Client> clients) {
		this.clients = clients;
	}

	public int getIdDisease() {
		return idDisease;
	}

	public void setIdDisease(int idDisease) {
		this.idDisease = idDisease;
	}
	
	

}
