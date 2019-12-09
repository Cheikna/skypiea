package com.skytech.skypiea.commons.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;

@MappedSuperclass
public abstract class Entity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	protected Long id;
	
	@Version
	protected Long version;
	
	//Empty constructor
	public Entity() {}

	public Entity(Long id, Long version) {
		this.id = id;
		this.version = version;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getVersion() {
		return version;
	}

	public void setVersion(Long version) {
		this.version = version;
	}

}
