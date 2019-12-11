package com.skytech.skypiea.commons.entity;

import java.security.Timestamp;

public class HistoryMoving {
	private long id;
	private int posX;
	private int posY;
	private Timestamp time;
	
	public HistoryMoving(long id, int posX, int posY, Timestamp time) {
		this.id = id;
		this.posX = posX;
		this.posY = posY;
		this.time = time;
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
