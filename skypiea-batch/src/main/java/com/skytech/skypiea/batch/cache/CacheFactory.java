package com.skytech.skypiea.batch.cache;

public class CacheFactory {
	
	private static final MemoryCache memoryCache = new MemoryCache();

	public static MemoryCache getMemoryCache() {
		return memoryCache;
	}

}
