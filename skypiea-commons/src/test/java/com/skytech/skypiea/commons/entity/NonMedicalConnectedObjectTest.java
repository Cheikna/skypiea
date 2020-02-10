package com.skytech.skypiea.commons.entity;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

import org.junit.Test;

public class NonMedicalConnectedObjectTest {

	@Test
	public void testInitCurrentSetting() {
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY,10);
		
		Calendar cal2 = Calendar.getInstance();
		cal2.set(Calendar.HOUR_OF_DAY,13);
		
		Calendar cal3 = Calendar.getInstance();
		cal3.set(Calendar.HOUR_OF_DAY,17);
		
		Timestamp ts = new Timestamp(cal.getTime().getTime());		
		Timestamp ts2 = new Timestamp(cal2.getTime().getTime());		
		Timestamp ts3 = new Timestamp(cal3.getTime().getTime());

		NonMedicalConnectedObject obj = new NonMedicalConnectedObject();
		Set<ObjectSetting> settings = new HashSet<ObjectSetting>();
		
		ObjectSetting set1 = new Bulb();
		set1.setSavingDate(ts);

		ObjectSetting set2 = new Bulb();
		set2.setSavingDate(ts2);

		ObjectSetting set3 = new Bulb();
		set3.setSavingDate(ts3);
		
		settings.add(set1);
		settings.add(set3);
		settings.add(set2);
		
		//settings.forEach((set) -> System.out.println(set.getSavingDate()));
		
		obj.setObjectSettings(settings);
		obj.initAfterLoad();
		
		ObjectSetting lastSetting = obj.getCurrentSetting();
		assertEquals(ts3, lastSetting.getSavingDate());		
	}

}
