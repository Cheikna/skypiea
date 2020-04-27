package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PostLoad;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.skytech.skypiea.commons.enumeration.NotificationObject;
import com.skytech.skypiea.commons.enumeration.NotificationState;

@Entity
@Table(name="NOTIFICATION")
public class Notification extends NotificationAbstract {
	
	@Column(name="SENDING_DATE")
	private Timestamp sendingDate;
	
	@Column(name="READING_DATE")
	private Timestamp readingDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name="NOTIFICATION_STATE")
	private NotificationState notificationState;
	
	@Column(name="IS_GROUPED_MESSAGE")
	private Boolean isGroupedMessage;
	
	@JsonBackReference
	@ManyToOne
    @JoinColumn(name = "RESIDENT_ID")
	private Resident resident;
	
	@Transient
	private String recipientName;
	
	public Notification() {
		super();
	}

	public Notification(Long id, Long version, NotificationObject notificationObject, String messageObject, String messageBody, Timestamp sendingDate,
			Timestamp readingDate, NotificationState notificationState, Boolean isGroupedMessage) {
		super(id, version, notificationObject, messageObject, messageBody);
		this.sendingDate = sendingDate;
		this.readingDate = readingDate;
		this.notificationState = notificationState;
		this.isGroupedMessage = isGroupedMessage;
	}

	public Timestamp getSendingDate() {
		return sendingDate;
	}

	public void setSendingDate(Timestamp sendingDate) {
		this.sendingDate = sendingDate;
	}

	public Timestamp getReadingDate() {
		return readingDate;
	}

	public void setReadingDate(Timestamp readingDate) {
		this.readingDate = readingDate;
	}

	public NotificationState getNotificationState() {
		return notificationState;
	}

	public void setNotificationState(NotificationState notificationState) {
		this.notificationState = notificationState;
	}

	public Resident getResident() {
		return resident;
	}

	public void setResident(Resident resident) {
		this.resident = resident;
	}		
	
	public Boolean getIsGroupedMessage() {
		return isGroupedMessage;
	}

	public void setIsGroupedMessage(Boolean isGroupedMessage) {
		this.isGroupedMessage = isGroupedMessage;
	}	
	
	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	@PostLoad
	public void afterLoad() {
		recipientName = "";
		if(resident != null) {
			String lastName = resident.getLastName();
			String firstName = resident.getFirstName();
			if(lastName != null) {
				recipientName += lastName + " ";
			}
			if(firstName != null) {
				recipientName += firstName;
			}
		}
	}

	public void clone(Notification notification) {
		this.messageObject = notification.messageObject;
		this.messageBody = notification.messageBody;
		this.sendingDate = notification.sendingDate;
		this.readingDate = notification.readingDate;
		this.notificationState = notification.notificationState;
		this.isGroupedMessage = notification.isGroupedMessage;
	}	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((isGroupedMessage == null) ? 0 : isGroupedMessage.hashCode());
		result = prime * result + ((notificationState == null) ? 0 : notificationState.hashCode());
		result = prime * result + ((readingDate == null) ? 0 : readingDate.hashCode());
		result = prime * result + ((recipientName == null) ? 0 : recipientName.hashCode());
		result = prime * result + ((resident == null) ? 0 : resident.hashCode());
		result = prime * result + ((sendingDate == null) ? 0 : sendingDate.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Notification other = (Notification) obj;
		if (isGroupedMessage == null) {
			if (other.isGroupedMessage != null)
				return false;
		} else if (!isGroupedMessage.equals(other.isGroupedMessage))
			return false;
		if (notificationState != other.notificationState)
			return false;
		if (readingDate == null) {
			if (other.readingDate != null)
				return false;
		} else if (!readingDate.equals(other.readingDate))
			return false;
		if (recipientName == null) {
			if (other.recipientName != null)
				return false;
		} else if (!recipientName.equals(other.recipientName))
			return false;
		if (resident == null) {
			if (other.resident != null)
				return false;
		} else if (!resident.equals(other.resident))
			return false;
		if (sendingDate == null) {
			if (other.sendingDate != null)
				return false;
		} else if (!sendingDate.equals(other.sendingDate))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Notification [messageObject=" + messageObject + ", messageBody=" + messageBody + ", sendingDate="
				+ sendingDate + ", readingDate=" + readingDate + ", notificationState=" + notificationState
				+ ", isGroupedMessage=" + isGroupedMessage + ", resident=" + resident + ", recipientName="
				+ recipientName + "]";
	}
}
