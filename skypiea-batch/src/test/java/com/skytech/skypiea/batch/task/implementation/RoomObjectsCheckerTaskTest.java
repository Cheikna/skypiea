package com.skytech.skypiea.batch.task.implementation;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.util.Calendar;

import org.junit.Test;

import com.skytech.skypiea.batch.cache.CacheFactory;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;
import com.skytech.skypiea.commons.util.DateUtil;

public class RoomObjectsCheckerTaskTest {
	
	private RoomStateCheckerTask roomStateCheckerTask = new RoomStateCheckerTask();
	
	@Test
	public void testCheckConnectedObjectActivityChangeToMissingWithoutCacheDataAndStatusON() {
		NonMedicalConnectedObject nco = new NonMedicalConnectedObject();
		nco.setId(1L);
		nco.setFrequency(3000L);
		nco.setStatus(Status.ON);
		nco.setState(State.OPERATIONAL);
		
		State newState = roomStateCheckerTask.checkConnectedObjectActivity.apply(nco);
		
		assertEquals(State.MISSING, newState);
	}
	
	@Test
	public void testCheckConnectedObjectActivityNoChangeWithoutCacheDataAndStatusOFF() {
		NonMedicalConnectedObject nco = new NonMedicalConnectedObject();
		nco.setId(1L);
		nco.setFrequency(3000L);
		nco.setStatus(Status.OFF);
		nco.setState(State.OPERATIONAL);
		
		State newState = roomStateCheckerTask.checkConnectedObjectActivity.apply(nco);
		
		assertEquals(State.OPERATIONAL, newState);
	}
	
	@Test
	public void testCheckConnectedObjectActivityChangeToMissingWithCacheDataAndStatusON() {
		NonMedicalConnectedObject nco = new NonMedicalConnectedObject();
		nco.setId(1L);
		nco.setFrequency(3000L);
		nco.setStatus(Status.ON);
		nco.setState(State.OPERATIONAL);		
		CacheInfo objectCacheInfo = new CacheInfo();
		Calendar c = Calendar.getInstance();
		c.set(2019, 1, 1);
		objectCacheInfo.setLastCheckingDate(new Timestamp(c.getTimeInMillis()));
		
		CacheFactory.getMemoryCache().addCacheInfoByNonMedicalConnectedObjectId(nco.getId(), objectCacheInfo);
		State newState = roomStateCheckerTask.checkConnectedObjectActivity.apply(nco);
		
		assertEquals(State.MISSING, newState);
	}

	
	@Test
	public void testCheckConnectedObjectActivityNoChangeWithCacheDataAndStatusON() {
		NonMedicalConnectedObject nco = new NonMedicalConnectedObject();
		nco.setId(1L);
		nco.setFrequency(3000L);
		nco.setStatus(Status.ON);
		nco.setState(State.OPERATIONAL);		
		CacheInfo objectCacheInfo = new CacheInfo();
		objectCacheInfo.setLastCheckingDate(DateUtil.getCurrentTimestamp());
		
		CacheFactory.getMemoryCache().addCacheInfoByNonMedicalConnectedObjectId(nco.getId(), objectCacheInfo);
		State newState = roomStateCheckerTask.checkConnectedObjectActivity.apply(nco);
		
		assertEquals(State.OPERATIONAL, newState);
	}

}
