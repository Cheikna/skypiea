package com.skytech.skypiea.commons.entity;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class ElectronicTag {
	
	//private static Logger log = LoggerFactory.getLogger(Character.class);
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name="RESIDENT_ID")
	private int residentID;
	
	@Transient
	private ArrayList<HistoryMoving> historyMoving;
	
	public ElectronicTag(long id, int residentID, int idPosX, int idPosY, ArrayList<HistoryMoving> historyMoving) {
		this.id = id;
		this.residentID = residentID;
		this.historyMoving = historyMoving;
	}
	
	

	@Override
	public String toString() {
		return "ElectronicTag [id=" + id + ", residentID=" + residentID + ", historyMoving=" + historyMoving + "]";
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
