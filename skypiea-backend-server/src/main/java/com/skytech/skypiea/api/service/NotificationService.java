package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicReference;

import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.NotificationRepository;
import com.skytech.skypiea.api.repository.NotificationTemplateRepository;
import com.skytech.skypiea.commons.comparator.NotificationByDescendingSendingDateComparator;
import com.skytech.skypiea.commons.entity.Notification;
import com.skytech.skypiea.commons.entity.NotificationTemplate;
import com.skytech.skypiea.commons.entity.Resident;
import com.skytech.skypiea.commons.enumeration.NotificationState;
import com.skytech.skypiea.commons.util.DateUtil;

@Service
public class NotificationService {
	
	private static Logger log = LoggerFactory.getLogger(NotificationService.class);
	
	@Autowired
	private NotificationRepository notificationRepository;
	
	@Autowired
	private NotificationTemplateRepository notificationTemplateRepository;

	@Autowired
	private ResidentService residentService;
	
	public Notification findById(Long id) {
		Notification notification = null;
		try {
			Optional<Notification> notificationOptional = notificationRepository.findById(id);
			if(notificationOptional.isPresent()) {
				notification = notificationRepository.findById(id).get();
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.getMessage();
		}
		
		return notification;
	}
	
	public Pair<List<NotificationTemplate>, List<Notification>> findAllTemplatesAndNotifications(){
		return new Pair<List<NotificationTemplate>, List<Notification>>(findAllNotificationTemplates(), findAll());
	}

	public List<Notification> findAll(){
		List<Notification> notifications = null;
		try {
			notifications = notificationRepository.findAll();
			if(notifications != null) {
				Collections.sort(notifications, new NotificationByDescendingSendingDateComparator());
			}
			
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return notifications;
	}
	
	public List<NotificationTemplate> findAllNotificationTemplates(){
		List<NotificationTemplate> notificationTemplates = null;
		try {
			notificationTemplates = notificationTemplateRepository.findAll();
			
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return notificationTemplates;
	}
	
	public List<Notification> findAllByResidentId(Long residentId){
		List<Notification> notifications = null;
		try {
			notifications = notificationRepository.findAllByResidentId(residentId);
			if(notifications != null) {
				Collections.sort(notifications, new NotificationByDescendingSendingDateComparator());
			}
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return notifications;
	}
	
	public Notification send(Notification notification, Long residentId) {
		notification.setIsGroupedMessage(false);
		notification.setSendingDate(DateUtil.getCurrentTimestamp());
		notification.setNotificationState(NotificationState.SENT);
		
		Resident recipient = residentService.findById(residentId);
		Notification savedNotification = null;
		
		if(recipient != null && notification != null) {
			savedNotification = send(notification, recipient);	
		}
		
		return savedNotification;
	}
	
	private Notification send(Notification notification, Resident resident) {
		Notification savedNotification = null;
		
		try {
			notification.setResident(resident);
			savedNotification = notificationRepository.save(notification);	
			if(savedNotification != null) {
				savedNotification.afterLoad();
			}
		} catch (Exception e) {
			log.error(e.getMessage());
		}	
		return savedNotification;
	}
	
	public List<Notification> sendToAllResidents(Notification notification) {
		
		notification.setIsGroupedMessage(true);
		notification.setSendingDate(DateUtil.getCurrentTimestamp());
		notification.setNotificationState(NotificationState.SENT);
		
		List<Resident> residents = residentService.findAll();
		AtomicReference<List<Notification>> notifications = new AtomicReference<>(new ArrayList<Notification>());
		
		if(residents != null && notification != null) {
			residents.forEach((resident) -> {
				Notification clonedNotification = new Notification();
				clonedNotification.clone(notification);
				Notification sentNotification = send(clonedNotification, resident);
				notifications.get().add(sentNotification);				
			});
		}		
		return notifications.get();
	}
	
	public Notification readNotification(Long notificationId) {
		Notification notification = null;
		try {
			notification = findById(notificationId);
			if(notification != null) {
				notification.setNotificationState(NotificationState.READ);
				notification.setReadingDate(DateUtil.getCurrentTimestamp());
				notification = notificationRepository.save(notification);
			}
		} catch (Exception e) {
			log.error(e.getMessage());
			e.getMessage();
		}
		return notification;
	}

}
