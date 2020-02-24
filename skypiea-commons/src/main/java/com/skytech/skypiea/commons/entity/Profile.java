package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="PROFILE")
public class Profile extends com.skytech.skypiea.commons.entity.Entity {
	
	@OneToOne
    @JoinColumn(name = "CLIENT_ID")
	private Client client;
	
	@Column(name="CRITERIA")
	protected String criteria;
	
	
	public Profile() {
		super();
	}

	public Profile(Long id, Long version, Client client, String criteria) {
		super(id, version);
		this.client = client;
		this.criteria = criteria;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public String getCriteria() {
		return criteria;
	}

	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}

	@Override
	public String toString() {
		return "Profile [client=" + client + ", criteria=" + criteria + "]";
	}
	
	

}
