package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="ALARM_CLOCK_SCENARIO")
public class AlarmClockScenario {
		
		@Id
		@Column(name="ID")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		protected Long id;
		
		@JsonBackReference(value="nonMedicalConnectedObject")
		@ManyToOne
	    @JoinColumn(name = "NON_MEDICAL_CONNECTED_OBJECT_ID")
		private NonMedicalConnectedObject nonMedicalConnectedObject;
		
		@JsonBackReference(value="room")
		@ManyToOne
	    @JoinColumn(name = "ROOM_ID")
		private Room room;
		
		@Column(name="STATUS")
		private String status;
		
		@Column(name="START_HOUR")
		private  Timestamp startHour;
		

		public AlarmClockScenario() {
			super();
		}
		

		public AlarmClockScenario(Long id) {
			super();
			this.id = id;
		}

		public AlarmClockScenario(Long id, NonMedicalConnectedObject nonMedicalConnectedObject, Room room, String status, Timestamp startHour) {
			this.id = id;
			this.nonMedicalConnectedObject = nonMedicalConnectedObject;
			this.room = room;
			this.status = status;
			this.startHour = startHour;
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public NonMedicalConnectedObject getNonMedicalConnectedObject() {
			return nonMedicalConnectedObject;
		}

		public void setNonMedicalConnectedObject(NonMedicalConnectedObject nonMedicalConnectedObject) {
			this.nonMedicalConnectedObject = nonMedicalConnectedObject;
		}

		public Room getRoom() {
			return room;
		}

		public void setRoom(Room room) {
			this.room = room;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public Timestamp getStartHour() {
			return startHour;
		}

		public void setStartHour(Timestamp startHour) {
			this.startHour = startHour;
		}
		
		
		

}
