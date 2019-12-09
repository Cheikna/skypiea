package com.skytech.skypiea.commons.entity;

public class ElectronicTag {
	private long id;
	private int residentID;
	private int idPosX;
	private int idPosY;
	
	public ElectronicTag(long id, int residentID, int idPosX, int idPosY) {
		this.id = id;
		this.residentID = residentID;
		this.idPosX = idPosX;
		this.idPosY = idPosY;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getResidentID() {
		return residentID;
	}

	public void setResidentID(int residentID) {
		this.residentID = residentID;
	}

	public int getIdPosX() {
		return idPosX;
	}

	public void setIdPosX(int idPosX) {
		this.idPosX = idPosX;
	}

	public int getIdPosY() {
		return idPosY;
	}

	public void setIdPosY(int idPosY) {
		this.idPosY = idPosY;
	}


	
}
