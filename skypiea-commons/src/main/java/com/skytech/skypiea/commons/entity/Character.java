package com.skytech.skypiea.commons.entity;

import javax.persistence.*;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;


@Entity
@Table(name="CHARACTER")
public class Character {
	
	//private static Logger log = LoggerFactory.getLogger(Character.class);
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@Column(name="NAME")
	private String name;	
	

	public Character() {
	}

	public Character(String name) {
		this.name = name;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Character [id=" + id + ", name=" + name + "]";
	}

}
