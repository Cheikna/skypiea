package com.skytech.skypiea.batch.service;

import java.util.Timer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.batch.timer.FailureCheckerTimer;

@Service
public class FailureCheckerService {
	
	private final Long breakTime = 5000L;
	
	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;
	
	
	private FailureCheckerTimer failureCheckerTimer;

	public FailureCheckerService() {
			
	}
	
	public void start() {		
		Timer timer = new Timer(true);
		failureCheckerTimer = new FailureCheckerTimer(nonMedicalConnectedObjectRepository);	
        timer.scheduleAtFixedRate(failureCheckerTimer, 0L, breakTime);
	}

}
