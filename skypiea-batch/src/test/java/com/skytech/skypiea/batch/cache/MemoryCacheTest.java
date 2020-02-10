package com.skytech.skypiea.batch.cache;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.HashSet;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;

public class MemoryCacheTest {
	
	private MemoryCache memoryCache;
	private String brand1 = "brand1";
	private String brand2 = "brand2";
	private String brand3 = "brand3";
	
	@Before
	public void init() {		
		memoryCache = new MemoryCache();
	}

	@Test
	public void testAddCacheInfoByObjectIdNewCache() {
		CacheInfo cacheInfo = new CacheInfo("1");
		boolean oldValueExistance = memoryCache.addCacheInfoByObjectId(1L, cacheInfo);
		assertFalse(oldValueExistance);
	}

	@Test
	public void testAddCacheInfoByObjectIdUpdateCache() {
		CacheInfo cacheInfo = new CacheInfo("1");
		memoryCache.addCacheInfoByObjectId(1L, cacheInfo);
		boolean oldValueExistance = memoryCache.addCacheInfoByObjectId(1L, cacheInfo);
		assertTrue(oldValueExistance);
	}
	
	@Test
	public void testGetNonMedicalConnectedObjectById() {
		NonMedicalConnectedObject obj1 = new NonMedicalConnectedObject();
		obj1.setId(1L);
		obj1.setBrand(brand1);

		NonMedicalConnectedObject obj2 = new NonMedicalConnectedObject();
		obj2.setId(2L);
		obj2.setBrand(brand2);

		NonMedicalConnectedObject obj3 = new NonMedicalConnectedObject();
		obj3.setId(3L);
		obj3.setBrand(brand3);
		
		Set<NonMedicalConnectedObject> objects = new HashSet<NonMedicalConnectedObject>();
		objects.add(obj1);
		objects.add(obj2);
		objects.add(obj3);
		memoryCache.setNonMedicalConnectedObjects(objects);
		assertEquals(obj2, memoryCache.getNonMedicalConnectedObjectById(2L));		
	}
	
	 @Test
	 public void testCacheInfoByObjectId() {
		 CacheInfo cacheInfo1 = new CacheInfo("1");
		 CacheInfo cacheInfo2 = new CacheInfo("2");
		 
		 memoryCache.addCacheInfoByObjectId(1L, cacheInfo1);
		 memoryCache.addCacheInfoByObjectId(2L, cacheInfo2);
		 
		 CacheInfo findCache = memoryCache.getCacheInfoByObjectId(2L);
		 assertNotNull(findCache);
		 assertEquals("2", findCache.getLastValue().getValue1());
		 
		 assertNull(memoryCache.getCacheInfoByObjectId(3L));
	 }

}
