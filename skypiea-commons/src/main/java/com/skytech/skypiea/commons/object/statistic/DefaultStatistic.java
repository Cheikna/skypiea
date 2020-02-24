package com.skytech.skypiea.commons.object.statistic;

import java.util.Set;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.ObjectSetting;

public class DefaultStatistic extends NonMedicalObjectStatistic {

	
	public DefaultStatistic() {
		this(null, null);
	}
	
	public DefaultStatistic(Set<ObjectSetting> settings, Set<HistoryEvent> events) {
		super(settings, events);
	}

	@Override
	protected void initSpecificStatistics(ObjectSetting setting) {	}

	@Override
	protected void runAfterSettingsLoopJob() {}
}
