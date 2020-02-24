package com.skytech.skypiea.commons.object.statistic;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

import org.javatuples.Triplet;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;


public abstract class NonMedicalObjectStatistic {
	
	private Map<Status, Long> totalChangesOnEachStatus;
	private Map<Status, Long> totalTimeOnEachStatus;
	private Map<State, Long> totalChangesOnEachState;
	private Long numberOfStatusChanges;
	private Long numberOfStateChanges;
	private Long totalStatusTime;
	private List<ObjectSetting> settings;
	private Set<HistoryEvent> events;
	
	public NonMedicalObjectStatistic(Set<ObjectSetting> settings, Set<HistoryEvent> events) {
		if(settings != null) {
			this.settings = settings.stream().sorted(Comparator.comparing(ObjectSetting::getSavingDate)).collect(Collectors.toList());
		}
		this.events = events;
		numberOfStateChanges = 0L;
		numberOfStatusChanges = 0L;			
		totalChangesOnEachStatus = new HashMap<Status, Long>();
		totalTimeOnEachStatus = new HashMap<Status, Long>();
		totalChangesOnEachState = new HashMap<State, Long>();
	}

	
	public void initStatistics() {
		if(settings != null) {
			AtomicReference<Status> previousStatus = new AtomicReference<Status>(null);
			AtomicReference<Long> previousTimeOnStatus = new AtomicReference<Long>(null);
			settings.forEach((setting) -> {
				Status currentStatus = setting.getStatus();
				Long currentTime = setting.getSavingDate().getTime();
				
				if(previousStatus.get() != null && previousStatus.get() != currentStatus) {
					numberOfStatusChanges++;
					totalChangesOnEachStatus.merge(previousStatus.get(), 1L, (val, opt) -> val+1);
					Long difference = (currentTime - previousTimeOnStatus.get());
					totalTimeOnEachStatus.merge(previousStatus.get(), difference, (val, opt) -> (val + difference));
					
				}
				
				previousStatus.set(currentStatus);
				previousTimeOnStatus.set(currentTime);
				
				initSpecificStatistics(setting);
			});
			runAfterSettingsLoopJob();
		}
		
		if(events != null) {
			events.forEach((event)-> {
				numberOfStateChanges++;
				totalChangesOnEachState.merge(event.getReachedState(), 1L, (key, opt) -> key+1);
			});			
		}
	}
	
	protected abstract void initSpecificStatistics(ObjectSetting setting);
	
	protected abstract void runAfterSettingsLoopJob();

	public Map<Status, Long> getTotalChangesOnEachStatus() {
		return totalChangesOnEachStatus;
	}

	public void setTotalChangesOnEachStatus(Map<Status, Long> totalChangesOnEachStatus) {
		this.totalChangesOnEachStatus = totalChangesOnEachStatus;
	}

	public Map<Status, Long> getTotalTimeOnEachStatus() {
		return totalTimeOnEachStatus;
	}

	public void setTotalTimeOnEachStatus(Map<Status, Long> totalTimeOnEachStatus) {
		this.totalTimeOnEachStatus = totalTimeOnEachStatus;
	}

	public Map<State, Long> getTotalChangesOnEachState() {
		return totalChangesOnEachState;
	}

	public void setTotalChangesOnEachState(Map<State, Long> totalChangesOnEachState) {
		this.totalChangesOnEachState = totalChangesOnEachState;
	}

	public Long getNumberOfStatusChanges() {
		return numberOfStatusChanges;
	}

	public void setNumberOfStatusChanges(Long numberOfStatusChanges) {
		this.numberOfStatusChanges = numberOfStatusChanges;
	}

	public Long getNumberOfStateChanges() {
		return numberOfStateChanges;
	}

	public void setNumberOfStateChanges(Long numberOfStateChanges) {
		this.numberOfStateChanges = numberOfStateChanges;
	}

	public Long getTotalStatusTime() {
		return totalStatusTime;
	}

	public void setTotalStatusTime(Long totalStatusTime) {
		this.totalStatusTime = totalStatusTime;
	}
	

	protected Triplet<Double, Double, Double> getMinMaxAverageValues(List<Float> values){
		Double min = 0.0;
		Double max = 0.0;
		Double average = 0.0;
		if(values != null && values.size() > 0) {
			min = values.stream().mapToDouble(Float::floatValue).min().orElse(0);
			max = values.stream().mapToDouble(Float::floatValue).max().orElse(0);
			average = values.stream().mapToDouble(Float::floatValue).average().orElse(0);
			// To keep only 2 number after the point
			average = Math.ceil(average * 100) / 100;
		} 
		
		return new Triplet<Double, Double, Double>(min, max, average);
	}
	
}
