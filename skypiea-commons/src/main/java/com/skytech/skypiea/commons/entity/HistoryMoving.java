package com.skytech.skypiea.commons.entity;

import java.security.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="HISTORY_MOVING")
public class HistoryMoving extends com.skytech.skypiea.commons.entity.Entity{
	//private static Logger log = LoggerFactory.getLogger(Character.class);	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="ELECTRONIC_TAG_ID", nullable=false)
	protected ElectronicTag electronicTag;
	
	@Column(name="POSX")
	private int posX;
	
	@Column(name="POSY")
	private int posY;
	
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

	@Override
	public String toString() {
		return "HistoryMoving [id=" + id + ", posX=" + posX + ", posY=" + posY + ", time=" + time + "]";
	}

	public ElectronicTag getElectronicTag() {
		return electronicTag;
	}

	public void setElectronicTag(ElectronicTag electronicTag) {
		this.electronicTag = electronicTag;
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
