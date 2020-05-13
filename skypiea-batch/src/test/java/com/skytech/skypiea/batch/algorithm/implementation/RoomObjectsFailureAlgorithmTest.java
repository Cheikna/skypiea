package com.skytech.skypiea.batch.algorithm.implementation;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;

import java.sql.Timestamp;
import java.util.Calendar;

import org.apache.commons.lang3.RandomUtils;
import org.junit.Test;

import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;

public class RoomObjectsFailureAlgorithmTest {
	
	private RoomObjectsFailureAlgorithm failureAlgo = new RoomObjectsFailureAlgorithm();

	@Test
	public void testcheckAlarmClockStateChangingToBroken() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.HOUR, 3);
		Timestamp t = new Timestamp(c.getTimeInMillis());
		Message m = new Message();
		m.setValue1(t.toString());
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.setCurrentState(State.OPERATIONAL);
		NonMedicalConnectedObject nonMedicalConnectedObject = new NonMedicalConnectedObject();
		nonMedicalConnectedObject.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		
		cacheInfo = failureAlgo.check(nonMedicalConnectedObject, m, cacheInfo);
		State newState = cacheInfo.getCurrentState();
		
		assertEquals(newState, State.BROKEN);
	}

	@Test
	public void testcheckAlarmClockStateChangingToBrokenBecauseOfWrongTimeFormat() {
		Message m = new Message();
		m.setValue1("2018-89-567");
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.setCurrentState(State.OPERATIONAL);
		NonMedicalConnectedObject nonMedicalConnectedObject = new NonMedicalConnectedObject();
		nonMedicalConnectedObject.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		
		cacheInfo = failureAlgo.check(nonMedicalConnectedObject, m, cacheInfo);
		State newState = cacheInfo.getCurrentState();
		
		assertEquals(newState, State.BROKEN);
	}

	@Test
	public void testcheckAlarmClockStateNotChanging() {
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MINUTE, RandomUtils.nextInt(0, failureAlgo.getACCEPTABLE_CLOCK_DELAY_IN_MINUTES().intValue()));
		Timestamp t = new Timestamp(c.getTimeInMillis());
		Message m = new Message();
		m.setValue1(t.toString());
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.setCurrentState(State.OPERATIONAL);
		NonMedicalConnectedObject nonMedicalConnectedObject = new NonMedicalConnectedObject();
		nonMedicalConnectedObject.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
		
		cacheInfo = failureAlgo.check(nonMedicalConnectedObject, m, cacheInfo);
		State newState = cacheInfo.getCurrentState();
		
		assertEquals(newState, State.OPERATIONAL);
	}
	

	@Test
	public void testcheckTemperatureControllerStateChangingToBroken() {
		Long lastValue = 20L;
		Long messageValue = lastValue + failureAlgo.getACCEPTABLE_TEMPERATURE_GAP().intValue() + 1;
		Message m = new Message();
		m.setValue1(messageValue.toString());
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.add(lastValue.toString());
		cacheInfo.setCurrentState(State.OPERATIONAL);
		NonMedicalConnectedObject nonMedicalConnectedObject = new NonMedicalConnectedObject();
		nonMedicalConnectedObject.setNonMedicalObjectType(NonMedicalObjectType.TEMPERATURE_CONTROLLER);
		
		cacheInfo = failureAlgo.check(nonMedicalConnectedObject, m, cacheInfo);
		State newState = cacheInfo.getCurrentState();
		
		assertEquals(newState, State.BROKEN);
	}

	@Test
	public void testcheckTemperatureControllerStateNotChanging() {
		Long lastValue = 20L;
		Long messageValue = lastValue + failureAlgo.getACCEPTABLE_TEMPERATURE_GAP().intValue();
		Message m = new Message();
		m.setValue1(messageValue.toString());
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.add(lastValue.toString());
		cacheInfo.setCurrentState(State.OPERATIONAL);
		NonMedicalConnectedObject nonMedicalConnectedObject = new NonMedicalConnectedObject();
		nonMedicalConnectedObject.setNonMedicalObjectType(NonMedicalObjectType.TEMPERATURE_CONTROLLER);
		
		cacheInfo = failureAlgo.check(nonMedicalConnectedObject, m, cacheInfo);
		State newState = cacheInfo.getCurrentState();
		
		assertEquals(newState, State.OPERATIONAL);
	}

	@Test
	public void testcheckTemperatureControllerStateNotChangingWithNoDataInCache() {
		Long lastValue = 20L;
		Long messageValue = lastValue + failureAlgo.getACCEPTABLE_TEMPERATURE_GAP().intValue();
		Message m = new Message();
		m.setValue1(messageValue.toString());
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.setCurrentState(State.OPERATIONAL);
		NonMedicalConnectedObject nonMedicalConnectedObject = new NonMedicalConnectedObject();
		nonMedicalConnectedObject.setNonMedicalObjectType(NonMedicalObjectType.TEMPERATURE_CONTROLLER);
		
		cacheInfo = failureAlgo.check(nonMedicalConnectedObject, m, cacheInfo);
		State newState = cacheInfo.getCurrentState();
		
		assertEquals(newState, State.OPERATIONAL);
	}

}
