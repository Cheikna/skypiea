package com.skytech.skypiea.batch.service;

import java.util.Timer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.tasks.RoomObjectsCheckerTask;

@Service
public class TimerTaskLauncherService {
	
	private final Long roomCheckerFrequency = 10000L;
	
	@Autowired	
	private RoomObjectsCheckerTask roomObjectsCheckerTask;
	//TODO Add other tasks like notification checker, 
	
	public void start() {		
		Timer timer = new Timer(true);
        timer.scheduleAtFixedRate(roomObjectsCheckerTask, 0L, roomCheckerFrequency);
	}

}
