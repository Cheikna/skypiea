package com.skytech.skypiea.api.controller;

import java.util.List;

import org.javatuples.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.NotificationService;
import com.skytech.skypiea.commons.entity.Notification;
import com.skytech.skypiea.commons.entity.NotificationTemplate;

@RestController
@RequestMapping("/notifications")
@CrossOrigin(origins="*", allowedHeaders="*")
public class NotificationController {
	
	@Autowired
	private NotificationService notificationService;
	
	@GetMapping("")
	public List<Notification> findAll(){
		return notificationService.findAll();
	}	
	
	@GetMapping("/templates-and-notifications")
	public Pair<List<NotificationTemplate>, List<Notification>> findAllTemplatesAndNotifications(){
		return notificationService.findAllTemplatesAndNotifications();
	}
	
	@GetMapping("/residents/{residentId}")
	public List<Notification> findAllByResidentId(@PathVariable Long residentId){
		return notificationService.findAllByResidentId(residentId);
	}
	
	@PostMapping("/residents/{residentId}")
	public Notification send(@RequestBody Notification notification, @PathVariable Long residentId) {
		return notificationService.send(notification, residentId);
	}
	
	@PostMapping("/residents")
	public List<Notification> sendToAllResidents(@RequestBody Notification notification) {
		return notificationService.sendToAllResidents(notification);
	}
	
	@PutMapping("/{notificationId}/read")
	public Notification readNotification(@PathVariable Long notificationId) {
		return notificationService.readNotification(notificationId);
	}
}