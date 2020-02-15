package com.skytech.skypiea.batch.cache;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Timestamp;

import org.javatuples.Pair;
import org.junit.Test;

public class CacheInfoTest {

	@Test
	public void testGetLastValue() {
		CacheInfo cacheInfo = new CacheInfo();
		cacheInfo.add("1");
		cacheInfo.add("2");
		Pair<Timestamp, String> last = cacheInfo.getLastValue();
		assertNotNull(last);
		assertEquals("2", last.getValue1());
	}

	@Test
	public void testCacheInfoMessageLimit() {
		CacheInfo cacheInfo = new CacheInfo();
		String oldestValue = "old";
		cacheInfo.add(oldestValue);
		cacheInfo.add("2");
		assertEquals(2, cacheInfo.getNumberOfSavedMessage());
		cacheInfo.add("3");
		Pair<Timestamp, String> oldestInfo = cacheInfo.add("4");
		assertEquals(3, cacheInfo.getNumberOfSavedMessage());
		assertNotNull(oldestInfo);
		assertEquals(oldestValue, oldestInfo.getValue1());
	}

}
