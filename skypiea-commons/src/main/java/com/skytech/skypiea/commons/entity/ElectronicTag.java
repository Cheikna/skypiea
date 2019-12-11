package com.skytech.skypiea.commons.entity;
import java.util.ArrayList;

public class ETag {
	private long id;
	private int residentID;
	private ArrayList<HistoryMoving> historyMoving;
	
	public ETag(long id, int residentID, int idPosX, int idPosY, ArrayList<HistoryMoving> historyMoving) {
		this.id = id;
		this.residentID = residentID;
		this.historyMoving = historyMoving;
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

	public ArrayList<HistoryMoving> getHistoryMoving() {
		return historyMoving;
	}

	public void setHistoryMoving(ArrayList<HistoryMoving> historyMoving) {
		this.historyMoving = historyMoving;
	}
}
