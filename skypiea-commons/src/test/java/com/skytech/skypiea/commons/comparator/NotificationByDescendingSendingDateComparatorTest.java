package com.skytech.skypiea.commons.comparator;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;

import org.junit.Test;

import com.skytech.skypiea.commons.entity.Notification;

public class NotificationByDescendingSendingDateComparatorTest {

	
	// FIXME Important: In theses tests, the sendingDate in MANDATORY otherwise nullPointerException
	
	
	@Test
	public void testUnorderedListInDescendingOrderFromHighestToLowestSendingDate() {
		/**
		 * Given
		 */	
		Calendar c1 = Calendar.getInstance();
		c1.set(2020, 1, 1, 12, 30);
		Timestamp t1 = new Timestamp(c1.getTimeInMillis());
		
		Calendar c2 = Calendar.getInstance();
		c2.set(2020, 1, 1, 12, 31);
		Timestamp t2 = new Timestamp(c2.getTimeInMillis());		

		Calendar c3 = Calendar.getInstance();
		c3.set(2020, 2, 2, 12, 30);
		Timestamp t3 = new Timestamp(c3.getTimeInMillis());
		
		Notification n1 = new Notification();
		n1.setSendingDate(t1);
		
		Notification n2 = new Notification();
		n2.setSendingDate(t2);
		
		Notification n3 = new Notification();
		n3.setSendingDate(t3);
		
		List<Notification> notifications = Arrays.asList(n1, n3, n2);		
		
		/**
		 * When
		 */	
		Collections.sort(notifications, new NotificationByDescendingSendingDateComparator());
		Boolean isOrdered = isNotificationsListInDescendingOrder(notifications);
		
		/**
		 * Then
		 */	
		assertTrue(isOrdered);		
	}
	
	@Test
	public void testAlreadyOrderedListWichImpliesNoModificationOfCollection() {
		/**
		 * Given
		 */
		Calendar c1 = Calendar.getInstance();
		c1.set(2020, 1, 1, 12, 30);
		Timestamp t1 = new Timestamp(c1.getTimeInMillis());
		
		Calendar c2 = Calendar.getInstance();
		c2.set(2020, 1, 1, 12, 31);
		Timestamp t2 = new Timestamp(c2.getTimeInMillis());		

		Calendar c3 = Calendar.getInstance();
		c3.set(2020, 2, 2, 12, 30);
		Timestamp t3 = new Timestamp(c3.getTimeInMillis());
		
		Notification n1 = new Notification();
		n1.setSendingDate(t1);
		
		Notification n2 = new Notification();
		n2.setSendingDate(t2);
		
		Notification n3 = new Notification();
		n3.setSendingDate(t3);
		
		List<Notification> notifications = Arrays.asList(n3, n2, n1);		
		
		/**
		 * When
		 */		
		Collections.sort(notifications, new NotificationByDescendingSendingDateComparator());		
		Boolean isOrdered = isNotificationsListInDescendingOrder(notifications);
		
		/**
		 * Then
		 */
		assertTrue(isOrdered);	
	}
	
	private boolean isNotificationsListInDescendingOrder(List<Notification> notifications) {
		boolean isOrdered = true;
		int numberOfNotifications = notifications.size();
		for(int i = 0; i < numberOfNotifications-1; i++) {
			if(notifications.get(i).getSendingDate().getTime() < notifications.get(i+1).getSendingDate().getTime()) {
				isOrdered = false;
			}
		}
		return isOrdered;
	}

}
