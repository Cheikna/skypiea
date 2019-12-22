package com.skytech.skypiea.batch.service;

import java.util.Timer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.timer.TasksRunner;

@Service
public class TimerTaskLauncherService {
	
	private final Long breakTime = 5000L;
	
	@Autowired	
	private TasksRunner tasksRunner;
	
	public void start() {		
		Timer timer = new Timer(true);
        timer.scheduleAtFixedRate(tasksRunner, 0L, breakTime);
	}

}
