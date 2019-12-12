package com.skytech.skypiea.commons.entity;

import java.security.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HistoryMoving {
	//private static Logger log = LoggerFactory.getLogger(Character.class);
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name="POSX")
	private int posX;
	
	@Column(name="POSY")
	private int posY;
	
	@Column(name="SAVING_TIME")
	private Timestamp time;
	
	public HistoryMoving(long id, int posX, int posY, Timestamp time) {
		this.id = id;
		this.posX = posX;
		this.posY = posY;
		this.time = time;
	}

	@Override
	public String toString() {
		return "HistoryMoving [id=" + id + ", posX=" + posX + ", posY=" + posY + ", time=" + time + "]";
	}



	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getPosX() {
		return posX;
	}

	public void setPosX(int posX) {
		this.posX = posX;
	}

	public int getPosY() {
		return posY;
	}

	public void setPosY(int posY) {
		this.posY = posY;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}
	
	
	
}
