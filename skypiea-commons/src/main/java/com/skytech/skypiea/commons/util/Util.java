package com.skytech.skypiea.commons.util;

import java.util.Collection;
import java.util.Iterator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.commons.entity.ConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;

public class Util {
	
	private static Logger log = LoggerFactory.getLogger(Util.class);
	
	public static ConnectedObject getObjectWithHighestState(Collection<? extends ConnectedObject> objects) {
		if(objects == null) {
			return null;
		}
		
		int size = objects.size();
		if(size <= 0) {
			return null;
		}
		
		Iterator<? extends ConnectedObject> iterator = objects.iterator();
		// Retrieve the first element of the collection
		ConnectedObject highestObject = iterator.next();
		State currentHighestState = highestObject.getState();
		
		ConnectedObject objectToCheck = null;
		State stateToCheck = null;
		// Loop in the collection until there is no object to check
		while(iterator.hasNext()) {
			// Go to the next object of the collection
			objectToCheck = iterator.next();
			log.debug("===> Checking object : " + objectToCheck.toString());
			stateToCheck = objectToCheck.getState();
			
			/*
			 * We change the highest object only if the current object to check has the state
			 * and that the state level of the object to check is higher than the current highest object
			 */
			if(stateToCheck != null && (stateToCheck.getLevel() > currentHighestState.getLevel())) {
				highestObject = objectToCheck;
				currentHighestState = highestObject.getState();
			}
		}
		
		return highestObject;
	}

}
