package com.skytech.skypiea.commons.object.statistic;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.junit.Test;

import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.entity.TemperatureController;
import com.skytech.skypiea.commons.enumeration.Status;

public class TemperatureControllerStatisticTest {

	@Test
	public void testStatisticsWithStatus() {
		/**
		 * Given
		 */
		List<Float> temps = new ArrayList<>();
		temps.add(20f);
		temps.add(32f);
		temps.add(56f);
		
		Calendar calendar = Calendar.getInstance();
		TemperatureController t1 = new TemperatureController();
		calendar.set(2020, 1, 1, 10,10);
		t1.setSavingDate(new Timestamp(calendar.getTime().getTime()));
		t1.setStatus(Status.ON);
		t1.setTemperatureSettled(temps.get(0));
		

		TemperatureController t2 = new TemperatureController();
		calendar.set(2020, 1, 1, 10,16);
		t2.setSavingDate(new Timestamp(calendar.getTime().getTime()));
		t2.setStatus(Status.OFF);
		t2.setTemperatureSettled(temps.get(1));
		

		TemperatureController t3 = new TemperatureController();
		calendar.set(2020, 1, 1, 10,22);
		t3.setSavingDate(new Timestamp(calendar.getTime().getTime()));
		t3.setStatus(Status.ON);
		t3.setTemperatureSettled(temps.get(2));
		
		Set<ObjectSetting> settings = new HashSet<ObjectSetting>();
		settings.add(t1);
		settings.add(t2);
		settings.add(t3);
		TemperatureControllerStatistic stat = new TemperatureControllerStatistic(settings, null);
		Long changes = 2L;
		Long onStatus = 1L;
		Long offStatus = 1L;
		
		/**
		 * When
		 */
		Double avg = temps.stream().mapToDouble(Float::floatValue).average().orElse(0);
		Double min = temps.stream().mapToDouble(Float::floatValue).min().orElse(0);
		Double max = temps.stream().mapToDouble(Float::floatValue).max().orElse(0);		
		stat.initStatistics();
		
		/**
		 * Then
		 */
		assertEquals(min, stat.getMinSettledTemperature());
		assertEquals(max, stat.getMaxSettledTemperature());
		assertEquals(avg, stat.getAverageSettledTemperature());
		assertEquals(changes, stat.getNumberOfStatusChanges());
		
		//The last is not counted because it is the current state		
		assertEquals(onStatus, stat.getTotalChangesOnEachStatus().get(Status.ON));
		assertEquals(offStatus, stat.getTotalChangesOnEachStatus().get(Status.OFF));
	}
	
	@Test
	public void testStatisticsWithState() {
		/*Calendar calendar = Calendar.getInstance();
		TemperatureController t1 = new TemperatureController();
		calendar.set(2020, 1, 1, 10,10);
		t1.setSavingDate(new Timestamp(calendar.getTime().getTime()));
		t1.setCurrentTemperature(20f);
		t1.setStatus(Status.ON);
		t1.setTemperatureSettled(23);*/
	}

}
