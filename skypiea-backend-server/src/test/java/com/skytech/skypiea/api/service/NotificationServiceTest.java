package com.skytech.skypiea.api.service;


import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.NotificationRepository;
import com.skytech.skypiea.commons.entity.Notification;
import com.skytech.skypiea.commons.entity.Resident;
import com.skytech.skypiea.commons.enumeration.NotificationState;
import com.skytech.skypiea.commons.enumeration.UserType;
import com.skytech.skypiea.commons.util.DateUtil;

@ComponentScan(basePackageClasses = {
		NotificationService.class,
		NotificationRepository.class,
		ResidentService.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class NotificationServiceTest {
	
	@Autowired
	private NotificationService notificationService;
	
	@Autowired
	private NotificationRepository notificationRepository;

	@Autowired
	private ResidentService residentService;
	
	private final int NUMBER_OF_NOTIFICATIONS = 10;
	
	private List<Notification> notifications = new ArrayList<Notification>();
	
	@Before
	public void init() {
		for(int i = 0; i < NUMBER_OF_NOTIFICATIONS; i++) {
			notifications.add(prepareNotification("object"+(i), "message"+(i)));			
		}
	}
	
	@Test
	public void testFindAllByDescendantOrder() {
		notifications.forEach((notif) -> {
			notificationRepository.save(notif);
		});
		List<Notification> notificationsFromRepository = notificationRepository.findAll();
		List<Notification> notificationsFromService = notificationService.findAll();
		assertNotNull(notificationsFromRepository);
		System.out.println(notificationsFromService);
		assertNotNull(notificationsFromService);
		assertThat(notificationsFromService, hasSize(notificationsFromRepository.size()));
		int numberOfNotifs = notificationsFromService.size();
		boolean isOrdered = true;
		for(int i = 0; i < numberOfNotifs -1; i++) {
			isOrdered = isOrdered 
					&& (notificationsFromService.get(i).getSendingDate().getTime() >= notificationsFromService.get(i+1).getSendingDate().getTime());
		}
		
		assertTrue(isOrdered);
		
	}
	
	@Test
	public void testFindAllByResidentId() {
		AtomicReference<List<Notification>> savedNotifs  = new AtomicReference<>(new ArrayList<Notification>());
		Resident resident = residentService.createOrUpdate(new Resident(0L, 0L, "DANSOKO", "Cheikna", "cheikna", null, UserType.RESIDENT, null, null, null));
		notifications.forEach((notif) -> {
			notif.setResident(resident);
			Notification savedNotif = notificationRepository.save(notif);
			savedNotifs.get().add(savedNotif);
		});
		List<Notification> notificationsFromService = notificationService.findAllByResidentId(resident.getId());
		assertThat(notificationsFromService, hasSize(savedNotifs.get().size()));
		//FIXME, TODO Cheikna 
		//Check if we have the same notification in notificationsFromService and savedNotifs.get() lists
		
	}
	
	@Test
	public void testSendToOneResident() {
		Resident resident = residentService.createOrUpdate(new Resident(0L, 0L, "DANSOKO", "Cheikna", "cheikna", null, UserType.RESIDENT, null, null, null));
		Long residentId = resident.getId();
		Notification notifBeforeSaving = notifications.get(3);
		notifBeforeSaving.setResident(resident);
		Notification notifAfterSaving = notificationService.send(notifBeforeSaving, residentId);
		List<Notification> notifsRetrievedAfterSaving = notificationService.findAllByResidentId(residentId);
		assertThat(notifsRetrievedAfterSaving, hasSize(1));
		assertEquals(notifAfterSaving, notifsRetrievedAfterSaving.get(0));
	}
	
	@Test
	public void testSendToAllOfTheResidents() {
		Resident r1 = residentService.createOrUpdate(new Resident(0L, 0L, "DANSOKO1", "Cheikna1", "cheikna1", null, UserType.RESIDENT, null, null, null));
		Resident r2 = residentService.createOrUpdate(new Resident(0L, 0L, "DANSOKO2", "Cheikna2", "cheikna2", null, UserType.RESIDENT, null, null, null));
		Resident r3 = residentService.createOrUpdate(new Resident(0L, 0L, "DANSOKO3", "Cheikna3", "cheikna3", null, UserType.RESIDENT, null, null, null));
		List<Resident> residents = residentService.findAll();
		
		Notification notificationToSend = notifications.get(6);		
		List<Notification> notifsSentToResidents = notificationService.sendToAllResidents(notificationToSend);
		// Check if all residents have received the notification
		assertThat(notifsSentToResidents, hasSize(residents.size()));

		Notification notificationToCompare = new Notification();
		notificationToCompare.clone(notifsSentToResidents.get(0));
		residents.forEach(res-> {
			List<Notification> notifs = notificationService.findAllByResidentId(res.getId());
			assertThat(notifs, hasSize(1));
			Notification residentNotif = new Notification();
			residentNotif.clone(notifs.get(0));
			assertEquals(residentNotif, notificationToCompare);
		});
		
	}
	
	@Test
	public void testNotificationStateChange() {
		Notification notifNotSaved = notifications.get(0);
		Notification notifSaved = notificationRepository.save(notifNotSaved);
		Notification notifRead = notificationService.readNotification(notifSaved.getId());
		
		// Check if it is the same notification an that not another one has been created
		Notification retrievedNotif = notificationService.findById(notifSaved.getId());
		assertNotNull(retrievedNotif);
		assertEquals(NotificationState.READ, retrievedNotif.getNotificationState());
		
	}
	
	private Notification prepareNotification(String messageObject, String messageBody) {
		Timestamp current = DateUtil.getCurrentTimestamp();
		return new Notification(0L, 0L, messageObject, messageBody, DateUtil.getRandomDateUntil(current), null, NotificationState.SENT, false);
	}

}
