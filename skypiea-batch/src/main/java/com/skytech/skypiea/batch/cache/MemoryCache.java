package com.skytech.skypiea.batch.cache;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;

public class MemoryCache {
	
	private Logger log = LoggerFactory.getLogger(MemoryCache.class);
	
	public List<NonMedicalConnectedObject> nonMedicalConnectedObjects = Collections 
            .synchronizedList(new ArrayList<NonMedicalConnectedObject>());

	public Map<Long, CacheInfo> cacheInfoByObjectId = Collections.synchronizedMap(new HashMap<Long, CacheInfo>());
	
	public synchronized List<NonMedicalConnectedObject> getNonMedicalConnectedObjects() {
		return nonMedicalConnectedObjects;
	}
	
	public synchronized void setNonMedicalConnectedObjects(Collection<NonMedicalConnectedObject> objects) {
		nonMedicalConnectedObjects = Collections.synchronizedList(new ArrayList<>(objects));
	}
	
	public synchronized CacheInfo getCacheInfoByObjectId(Long objectId) {
		CacheInfo cacheInfo = null;
		try {
			cacheInfo = cacheInfoByObjectId.get(objectId);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return cacheInfo;
	}
	
	/**
	 * 
	 * @param objectId
	 * @param cacheInfo
	 * @return
	 *  @true if the value has been updated (=an info with the ID already exists)
	 *  @false if the value did not exist (=it is a new value which will be inserted)
	 */
	public synchronized boolean addCacheInfoByObjectId(Long objectId, CacheInfo cacheInfo) {
		CacheInfo previousInfo = cacheInfoByObjectId.put(objectId, cacheInfo);
		return previousInfo != null;
	}
	
	public synchronized NonMedicalConnectedObject getNonMedicalConnectedObjectById(Long objectId) {
		boolean isObjectFound = false;
		NonMedicalConnectedObject object = null;
		NonMedicalConnectedObject currentObject = null;
		int size = nonMedicalConnectedObjects.size();
		int i = 0;
		while(i < size && !isObjectFound) {
			currentObject = nonMedicalConnectedObjects.get(i);
			if(currentObject.getId() == objectId) {
				object = currentObject;
				isObjectFound = true;
			}
					
			i++;
		}
		return object;
	}

}
