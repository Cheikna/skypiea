package com.skytech.skypiea.commons.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="NOTIFICATION_TEMPLATE")
public class NotificationTemplate extends NotificationAbstract {	
	
	public NotificationTemplate() {
		super();
	}

	public NotificationTemplate(Long id, Long version, String messageObject, String messageBody) {
		super(id, version, messageObject, messageBody);
	}	

	@Override
	public String toString() {
		return "NotificationTemplate [messageObject=" + messageObject + ", messageBody=" + messageBody + "]";
	}

	
}
