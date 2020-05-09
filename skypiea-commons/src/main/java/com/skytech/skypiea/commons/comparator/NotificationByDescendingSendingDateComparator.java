package com.skytech.skypiea.commons.comparator;

import java.sql.Timestamp;
import java.util.Comparator;

import com.skytech.skypiea.commons.entity.Notification;

public class NotificationByDescendingSendingDateComparator implements Comparator<Notification> {

	@Override
	public int compare(Notification notif1, Notification notif2) {
		Timestamp sendingDate1 = notif1.getSendingDate();
		Timestamp sendingDate2 = notif2.getSendingDate();
		if(sendingDate1 != null && sendingDate2 != null) {
			if(sendingDate1.getTime() > sendingDate2.getTime()) {
				return -1;
			} else {
				return 1;
			}
		} else if(sendingDate1 != null) {
			return 1;
		} else if(sendingDate2 != null) {
			return -1;
		} 
		return 0;
	}

}
