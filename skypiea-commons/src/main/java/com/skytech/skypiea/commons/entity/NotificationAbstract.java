package com.skytech.skypiea.commons.entity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class NotificationAbstract extends Entity {
	
	@Column(name="MESSAGE_OBJECT")
	protected String messageObject;
	
	@Column(name="MESSAGE_BODY")
	protected String messageBody;	
	
	
	public NotificationAbstract() {
		super();
	}

	public NotificationAbstract(Long id, Long version, String messageObject, String messageBody) {
		super(id, version);
		this.messageObject = messageObject;
		this.messageBody = messageBody;
	}

	public String getMessageObject() {
		return messageObject;
	}

	public void setMessageObject(String messageObject) {
		this.messageObject = messageObject;
	}

	public String getMessageBody() {
		return messageBody;
	}

	public void setMessageBody(String messageBody) {
		this.messageBody = messageBody;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((messageBody == null) ? 0 : messageBody.hashCode());
		result = prime * result + ((messageObject == null) ? 0 : messageObject.hashCode());
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
		NotificationAbstract other = (NotificationAbstract) obj;
		if (messageBody == null) {
			if (other.messageBody != null)
				return false;
		} else if (!messageBody.equals(other.messageBody))
			return false;
		if (messageObject == null) {
			if (other.messageObject != null)
				return false;
		} else if (!messageObject.equals(other.messageObject))
			return false;
		return true;
	}
	
}
