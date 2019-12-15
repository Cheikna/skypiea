package com.skytech.skypiea.commons.entity;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ELECTRONIC_TAG")
public class ElectronicTag extends com.skytech.skypiea.commons.entity.Entity {
	//private static Logger log = LoggerFactory.getLogger(Character.class);
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="RESIDENT_ID")
	private Resident resident;
	
	@OneToMany(mappedBy="electronicTag")
	private Set<HistoryMoving> historyMoving;
	

	public ElectronicTag() {
		super();
		// TODO Auto-generated constructor stub
	}



	public ElectronicTag(Long id, Long version, Resident resident) {
		super(id, version);
		this.resident = resident;
	}



	@Override
	public String toString() {
		return "ElectronicTag [id=" + id + ", resident=" + resident + ", historyMoving=" + historyMoving + "]";
	}

	public Resident getResident() {
		return resident;
	}



	public void setResident(Resident resident) {
		this.resident = resident;
	}


	public Long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Set<HistoryMoving> getHistoryMoving() {
		return historyMoving;
	}

	public void setHistoryMoving(Set<HistoryMoving> historyMoving) {
		this.historyMoving = historyMoving;
	}
}
