package com.skytech.skypiea.commons.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.skytech.skypiea.commons.enumeration.NotificationObject;

@Entity
@Table(name="NOTIFICATION_TEMPLATE")
public class NotificationTemplate extends NotificationAbstract {	
	
	public NotificationTemplate() {
		super();
	}

	public NotificationTemplate(Long id, Long version, NotificationObject notificationObject, String messageObject, String messageBody) {
		super(id, version, notificationObject, messageObject, messageBody);
	}
	
}
