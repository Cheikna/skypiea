package com.skytech.skypiea.batch.cache;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.javatuples.Pair;

import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.util.DateUtil;

public class CacheInfo {
	
	/**
	 * The number max of values to keep in cache for one object
	 */
	private final int maxNumberOfValuesToKeep = 3;
	/**
	 * Create date of this cache info
	 */
	private Timestamp creationDate;
	private Timestamp stateChangingDate;
	private State currentState;
	// We use string type so that we can do some type conversion after
	private List<Pair<Timestamp, String>> valuesReached;
	
	public CacheInfo() {
		valuesReached = new ArrayList<Pair<Timestamp, String>>();
		this.creationDate = DateUtil.getCurrentTimestamp();
	}	
	
	public CacheInfo(String value) {
		this();
		add(value);
	}

	public Timestamp getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Timestamp creationDate) {
		this.creationDate = creationDate;
	}

	public Timestamp getStateChangingDate() {
		return stateChangingDate;
	}

	public void setStateChangingDate(Timestamp stateChangingDate) {
		this.stateChangingDate = stateChangingDate;
	}

	public int getNumberOfReceivedMessage() {
		return valuesReached.size();
	}	

	public List<Pair<Timestamp, String>> getValuesReached() {
		return valuesReached;
	}

	public Pair<Timestamp, String> getLastValue() {
		if(valuesReached != null) {
			int lastIndex = valuesReached.size() - 1;
			if(lastIndex >= 0) {
				return valuesReached.get(lastIndex);
			}
		}
		return null;
	}
	
	public Pair<Timestamp, String> add(String value) {
		this.valuesReached.add(new Pair<>(DateUtil.getCurrentTimestamp(), value));
		if(valuesReached.size() > maxNumberOfValuesToKeep) {
			// We remove the oldest value witch is at the first position
			return valuesReached.remove(0);
		}
		return null;
	}

	public State getCurrentState() {
		return currentState;
	}

	public void setCurrentState(State currentState) {
		this.currentState = currentState;
	}

	public Integer getMaxNumberOfValuesToKeep() {
		return maxNumberOfValuesToKeep;
	}	
}
