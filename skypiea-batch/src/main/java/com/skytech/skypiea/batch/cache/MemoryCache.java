package com.skytech.skypiea.batch.cache;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;

import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;

public class MemoryCache {
	
	private Logger log = LoggerFactory.getLogger(MemoryCache.class);
	
	public Set<NonMedicalConnectedObject> nonMedicalConnectedObjects = Collections 
            .synchronizedSet(new HashSet<NonMedicalConnectedObject>());

	public Set<MedicalConnectedObject> medicalConnectedObjects = Collections
            .synchronizedSet(new HashSet<MedicalConnectedObject>());

	public Map<Long, CacheInfo> cacheInfoByNonMedicalConnectedObjectId = Collections.synchronizedMap(new HashMap<Long, CacheInfo>());

	public Map<Long, CacheInfo> cacheInfoByMedicalConnectedObjectId = Collections.synchronizedMap(new HashMap<Long, CacheInfo>());

	public synchronized Set<NonMedicalConnectedObject> getNonMedicalConnectedObjects() {
		return nonMedicalConnectedObjects;
	}
	public synchronized Set<MedicalConnectedObject> getMedicalConnectedObjects() {
		return medicalConnectedObjects;
	}
	
	public synchronized void setNonMedicalConnectedObjects(Collection<NonMedicalConnectedObject> objects) {
		nonMedicalConnectedObjects = Collections.synchronizedSet(new HashSet<>(objects));
	}
	public synchronized void setMedicalConnectedObjects(Collection<MedicalConnectedObject> objects) {
		medicalConnectedObjects = Collections.synchronizedSet(new HashSet<>(objects));
	}
	
	public synchronized void addNonMedicalConnectedObject(NonMedicalConnectedObject object) {
		nonMedicalConnectedObjects.add(object);
	}
	public synchronized void addMedicalConnectedObject(MedicalConnectedObject object) {
		medicalConnectedObjects.add(object);
	}
	
	public synchronized CacheInfo getCacheInfoByNonMedicalConnectedObjectId(Long objectId) {
		CacheInfo cacheInfo = null;
		try {
			cacheInfo = cacheInfoByNonMedicalConnectedObjectId.get(objectId);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return cacheInfo;
	}
	public synchronized CacheInfo getCacheInfoByMedicalConnectedObjectId(Long objectId) {
		CacheInfo cacheInfo = null;
		try {
			cacheInfo = cacheInfoByMedicalConnectedObjectId.get(objectId);
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
	public synchronized boolean addCacheInfoByNonMedicalConnectedObjectId(Long objectId, CacheInfo cacheInfo) {
		CacheInfo previousInfo = cacheInfoByNonMedicalConnectedObjectId.put(objectId, cacheInfo);
		return previousInfo != null;
	}
	public synchronized boolean addCacheInfoByMedicalConnectedObjectId(Long objectId, CacheInfo cacheInfo) {
		CacheInfo previousInfo = cacheInfoByMedicalConnectedObjectId.put(objectId, cacheInfo);
		return previousInfo != null;
	}
	
	public synchronized CacheInfo removeCacheInfoByNonMedicalConnectedObjectId(Long objectId) {
		CacheInfo previousInfo = null;
		try {
			previousInfo = cacheInfoByNonMedicalConnectedObjectId.remove(objectId);
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
		return previousInfo;
	}
	
	public synchronized NonMedicalConnectedObject getNonMedicalConnectedObjectByPredicate(Predicate<NonMedicalConnectedObject> predicate) {
		boolean isObjectFound = false;
		NonMedicalConnectedObject object = null;
		NonMedicalConnectedObject currentObject = null;
		Iterator<NonMedicalConnectedObject> iterator = nonMedicalConnectedObjects.iterator();
		
		while(iterator.hasNext() && !isObjectFound) {
			currentObject = iterator.next();
			if(predicate.test(currentObject)) {
				object = currentObject;
				isObjectFound = true;
			}
		}
		return object;
	}

	public synchronized MedicalConnectedObject getMedicalConnectedObjectByPredicate(Predicate<MedicalConnectedObject> predicate) {
		boolean isObjectFound = false;
		MedicalConnectedObject object = null;
		MedicalConnectedObject currentObject = null;
		Iterator<MedicalConnectedObject> iterator = medicalConnectedObjects.iterator();

		while(iterator.hasNext() && !isObjectFound) {
			currentObject = iterator.next();
			if(predicate.test(currentObject)) {
				object = currentObject;
				isObjectFound = true;
			}
		}
		return object;
	}


	
	public synchronized NonMedicalConnectedObject getNonMedicalConnectedObjectById(Long objectId) {
		Predicate<NonMedicalConnectedObject> predicate = (obj) -> {
			return obj.getId() == objectId;
		};
		return getNonMedicalConnectedObjectByPredicate(predicate);
	}
	
	public synchronized NonMedicalConnectedObject getNonMedicalConnectedObjectByIpAddress(String ipAddress) {
		Predicate<NonMedicalConnectedObject> predicate = (obj) -> {
			return obj.getIpAddress().equalsIgnoreCase(ipAddress);
		};
		return getNonMedicalConnectedObjectByPredicate(predicate);
	}

    public synchronized MedicalConnectedObject getMedicalConnectedObjectByIpAddress(String ipAddress) {
		Predicate<MedicalConnectedObject> predicate = (obj) -> {
			return obj.getIpAddress().equalsIgnoreCase(ipAddress);
		};
		return getMedicalConnectedObjectByPredicate(predicate);
    }

}
