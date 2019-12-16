package com.skytech.skypiea.batch.service;

import java.util.Timer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.repository.HeaterRepository;
import com.skytech.skypiea.batch.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.batch.timer.FailureCheckerTimer;

@Service
public class FailureCheckerService {
	
	private final Long breakTime = 15000L;
	
	private FailureCheckerTimer failureCheckerTimer;
	
	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
	@Autowired
	private HeaterRepository heaterRepository;

	public FailureCheckerService() {
		failureCheckerTimer = new FailureCheckerTimer();		
	}
	
	public void start() {		
		Timer timer = new Timer(true);
		failureCheckerTimer.setNonMedicalConnectedObjectRepository(nonMedicalConnectedObjectRepository);
		failureCheckerTimer.setHeaterRepository(heaterRepository);
        timer.scheduleAtFixedRate(failureCheckerTimer, 0L, breakTime);
	}

}
