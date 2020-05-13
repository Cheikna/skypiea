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
	private int posX;
	
	@Column(name="POSY")
	private int posY;
	
	@Column(name="SAVING_TIME")
	private Timestamp time;
	

	public HistoryMoving() {
		super();
	}

	public HistoryMoving(Long id, Long version, int posX, int posY, Timestamp time) {
		super(id, version);
		this.posX = posX;
		this.posY = posY;
		this.time = time;
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
