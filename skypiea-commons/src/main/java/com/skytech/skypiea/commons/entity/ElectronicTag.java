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
	
	@OneToMany(cascade=CascadeType.ALL)    
	@JoinColumn(name = "electronic_tag_id")
	private Set<HistoryMoving> historyMoving;
	

	public ElectronicTag() {
		super();
	}

	public ElectronicTag(Long id, Long version) {
		super(id, version);
	}

	public Resident getResident() {
		return resident;
	}
	public void setResident(Resident resident) {
		this.resident = resident;
	}

	public Set<HistoryMoving> getHistoryMoving() {
		return historyMoving;
	}

	public void setHistoryMoving(Set<HistoryMoving> historyMoving) {
		this.historyMoving = historyMoving;
	}	
	
}
