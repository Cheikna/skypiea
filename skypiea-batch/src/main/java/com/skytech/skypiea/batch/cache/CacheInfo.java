package com.skytech.skypiea.batch.cache;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.math.NumberUtils;
import org.javatuples.Pair;

import com.skytech.skypiea.commons.entity.RealTimeEvent;
import com.skytech.skypiea.commons.enumeration.EventType;
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
	private Timestamp lastCheckingDate;
	private State currentState;
	private Long warningMessageCount;
	private String comments;
	private boolean isCacheInfoNeedToBeSavedInDatabase;

	// We use string type so that we can do some type conversion after
	private List<Pair<Timestamp, String>> valuesReached;

	public CacheInfo() {
		this.valuesReached = new ArrayList<Pair<Timestamp, String>>();
		this.creationDate = DateUtil.getCurrentTimestamp();
		this.lastCheckingDate = DateUtil.getCurrentTimestamp();
		this.warningMessageCount = 0L;
		this.isCacheInfoNeedToBeSavedInDatabase = true;
	}	

	public CacheInfo(String value) {
		this();
		add(value);
	}

	public Timestamp getCreationDate() {
		return creationDate;
	}

	public Timestamp getStateChangingDate() {
		return stateChangingDate;
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

	public int getNumberOfSavedMessage() {
		return (valuesReached != null) ? valuesReached.size() : 0;
	}

	public void increaseWarningMessageCount() {
		warningMessageCount++;
	}

	public void setWarningMessageCount(Long warningMessageCount) {
		this.warningMessageCount = warningMessageCount;
	}

	public Long getWarningMessageCount() {
		return warningMessageCount;
	}

	public State getCurrentState() {
		return currentState;
	}

	public void setCurrentState(State newState) {		
		if(newState != currentState) {
			stateChangingDate = DateUtil.getCurrentTimestamp();
			isCacheInfoNeedToBeSavedInDatabase = true;
		}
		lastCheckingDate = DateUtil.getCurrentTimestamp();
		currentState = newState;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String newComments) {
		// We need to save the changes in the database if the old comment and the new one are different
		this.isCacheInfoNeedToBeSavedInDatabase = (!newComments.equalsIgnoreCase(comments));
		this.comments = newComments;
	}	

	public boolean isCacheInfoNeedToBeSavedInDatabase() {
		return isCacheInfoNeedToBeSavedInDatabase;
	}

	public void setIsCacheInfoNeedToBeSavedInDatabase(boolean isCacheInfoNeedToBeSavedInDatabase) {
		this.isCacheInfoNeedToBeSavedInDatabase = isCacheInfoNeedToBeSavedInDatabase;
	}

	public Integer getMaxNumberOfValuesToKeep() {
		return maxNumberOfValuesToKeep;
	}		

	public Timestamp getLastCheckingDate() {
		return lastCheckingDate;
	}

	public void setLastCheckingDate(Timestamp lastCheckingDate) {
		this.lastCheckingDate = lastCheckingDate;
	}

	public void reset() {
		this.warningMessageCount = 0L;
		this.comments = "";
	}
	
	public RealTimeEvent convertToRealTimeEvent(EventType eventType) {
		if(this.currentState == State.OPERATIONAL) {
			return null;
		}
		
		RealTimeEvent realTimeEvent = new RealTimeEvent();
		realTimeEvent.setEventType(eventType);
		realTimeEvent.setStartTime(this.stateChangingDate);
		realTimeEvent.setDescription(this.comments);
		
		Pair<Timestamp, String> lastPairValue = this.getLastValue();
		if(lastPairValue != null) {
			String lastValue = lastPairValue.getValue1();
			realTimeEvent.setLastMeasuredValue(NumberUtils.toFloat(lastValue, 0f));			
		}
		
		realTimeEvent.setLastCheckingTime(this.getLastCheckingDate());
		realTimeEvent.setCurrentState(this.currentState);
		return realTimeEvent;
	}
}
