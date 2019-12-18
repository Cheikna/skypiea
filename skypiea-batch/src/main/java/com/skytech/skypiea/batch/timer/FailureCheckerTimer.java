package com.skytech.skypiea.batch.timer;

import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.repository.HeaterRepository;
import com.skytech.skypiea.batch.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.AlarmClock;
import com.skytech.skypiea.commons.entity.Heater;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;

public class FailureCheckerTimer extends TimerTask {
	
	private static Logger log = LoggerFactory.getLogger(FailureCheckerTimer.class);

	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
	@Autowired
	private HeaterRepository heaterRepository;

	public FailureCheckerTimer(NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository) {
		this.nonMedicalConnectedObjectRepository = nonMedicalConnectedObjectRepository;
	}

	@Override
	public void run() {
		System.out.println("==============================================================");
		System.out.println(nonMedicalConnectedObjectRepository.findAll());
		System.out.println("==============================================================");
		System.out.println(nonMedicalConnectedObjectRepository == null);
		if(nonMedicalConnectedObjectRepository != null) {	
			System.out.println("==============================================================");
			System.out.println(nonMedicalConnectedObjectRepository.findAll());
			System.out.println("==============================================================");
			float maxMinuteInterval = 5f;
			List<NonMedicalConnectedObject> objects = nonMedicalConnectedObjectRepository.findAll();
			if(objects != null && objects.size() > 0) {			
				Calendar currentCalendar = Calendar.getInstance();
				Calendar alarmClockCalendar = Calendar.getInstance();				
				for(NonMedicalConnectedObject object: objects) {
					if(object.getNonMedicalObjectType() == NonMedicalObjectType.ALARM_CLOCK) {
						AlarmClock alarmClock = (AlarmClock)object;
						alarmClockCalendar.setTimeInMillis(alarmClock.getCurrentTime().getTime());
						if(currentCalendar.get(Calendar.HOUR_OF_DAY) != alarmClockCalendar.get(Calendar.HOUR_OF_DAY)) {
							log.info("========================");
							log.info("== Error on alarm clock ==");
							log.info("The alarm clock with the id " + alarmClock.getIpAddress() + " has an incorrect hour ");
							log.info("Current hour : " + currentCalendar.get(Calendar.HOUR_OF_DAY) + " == hour of the alarm clock : " + alarmClockCalendar.get(Calendar.HOUR_OF_DAY));	
							log.info("========================");
						}
						float differenceWithCurrent = Math.abs(currentCalendar.get(Calendar.MINUTE) - alarmClockCalendar.get(Calendar.MINUTE));
						if(differenceWithCurrent > maxMinuteInterval) {
							log.info("========================");
							log.info("== Error on alarm clock because of the interval minute ==");
							log.info("The alarm clock with the id " + alarmClock.getIpAddress() + " has difference of minute which > " +  maxMinuteInterval);
							log.info("Current minute : " + currentCalendar.get(Calendar.MINUTE) + " == minute of the alarm clock : " + alarmClockCalendar.get(Calendar.MINUTE));	
							log.info("Difference of time : " + differenceWithCurrent);
							log.info("========================");
						}
						
					}
				}

			}
		}

		if(heaterRepository != null) {
			List<Heater> objects = heaterRepository.findAll();
			if(objects != null && objects.size() > 0) {
				Collections.sort(objects, new Comparator<Heater>(){
					public int compare(Heater obj1, Heater obj2){
						return obj1.getMeasurementDate().compareTo(obj2.getMeasurementDate());
					}
				});
				
				Float accectedTemperatureInterval = 5f;
				Float previousTemperature = null;
				Float currentTemperature = null;
				
				for(Heater object: objects) {
					currentTemperature = object.getTemperature();
					if(previousTemperature == null) {
						previousTemperature = currentTemperature;
					}
					
					if(previousTemperature != null) {
						// Check the interval
						if(Math.abs(currentTemperature - previousTemperature) > accectedTemperatureInterval) {
							log.info("========================");
							log.info("== Error on temperature ==");
							log.info("The accepted interval is " + accectedTemperatureInterval);
							log.info("The previous temperature was at " + previousTemperature + " Celsius and  the next was at " + currentTemperature + " Celsius");
							log.info("An error is raised ");	
							log.info("========================");
						}						
					}
					previousTemperature = currentTemperature;
					
				}
			}
		}

	}

}
