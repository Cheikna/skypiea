package com.skytech.skypiea.batch.algorithm.implementation;

import java.util.Set;

import com.skytech.skypiea.batch.algorithm.abstracts.NonMedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.commons.entity.AlarmClock;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.SmokeSensor;
import com.skytech.skypiea.commons.entity.TemperatureController;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;

public class RoomObjectsFailureAlgorithm extends NonMedicalConnectedObjectAlgorithm {

	@SuppressWarnings("unchecked")
	@Override
	public State check(NonMedicalConnectedObject nonMedicalConnectedObject, Message receivedMessage) {
		NonMedicalObjectType type = nonMedicalConnectedObject.getNonMedicalObjectType();
		if(type == NonMedicalObjectType.ALARM_CLOCK) {
			return checkAlarmClock((Set<AlarmClock>)(Set<?>)nonMedicalConnectedObject.getObjectSettings());			
		} else if(type == NonMedicalObjectType.SMOKE_SENSOR) {
			return checkSmokeSensor((Set<SmokeSensor>)(Set<?>)nonMedicalConnectedObject.getObjectSettings());
		} else if(type == NonMedicalObjectType.TEMPERATURE_CONTROLLER) {
			return checkTemperatureController((Set<TemperatureController>)(Set<?>)nonMedicalConnectedObject.getObjectSettings());
		} else {
			return State.OPERATIONAL;
		}
		
	}
	
	private State checkAlarmClock(Set<AlarmClock> alarmClockSettings) {
		return State.OPERATIONAL;
	}
	
	private State checkSmokeSensor(Set<SmokeSensor> smokeSensorSettings) {
		return State.OPERATIONAL;
	}
	
	private State checkTemperatureController(Set<TemperatureController> temperatureControllerSettings) {
		return State.OPERATIONAL;
	}
}
