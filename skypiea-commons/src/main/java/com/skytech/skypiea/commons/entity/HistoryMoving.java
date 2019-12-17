package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="HISTORY_MOVING")
public class HistoryMoving extends com.skytech.skypiea.commons.entity.Entity{
	//private static Logger log = LoggerFactory.getLogger(Character.class);	
	
	@Column(name="POSX")
	private float posX;
	
	@Column(name="POSY")
	private float posY;
	
	@Column(name="SAVING_TIME")
	private Timestamp time;
	

	public HistoryMoving() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HistoryMoving(Long id, Long version, int posX, int posY, Timestamp time) {
		super(id, version);
		this.posX = posX;
		this.posY = posY;
		this.time = time;
	}
	
	public float getPosX() {
		return posX;
	}

	public void setPosX(float posX) {
		this.posX = posX;
	}

	public float getPosY() {
		return posY;
	}

	public void setPosY(float posY) {
		this.posY = posY;
	}

	public Timestamp getTime() {
		return time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}	
}
