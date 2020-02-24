package com.skytech.skypiea.commons.object.statistic;

import java.util.Set;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;

public class NonMedicalObjectStatisticFactory {
	
	public static NonMedicalObjectStatistic getStatistic(NonMedicalObjectType type, Set<ObjectSetting> settings, Set<HistoryEvent> events) {
		
		NonMedicalObjectStatistic statistic = null;
		
		if(type == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
			statistic = new TemperatureControllerStatistic(settings, events);
		} else if(type == NonMedicalObjectType.SUNSHINE_SENSOR) {
			statistic = new SunshineSensorStatistic(settings, events);
		} else {
			statistic = new DefaultStatistic(settings, events);
		}
		
		statistic.initStatistics();
		
		return statistic;
	}

}
