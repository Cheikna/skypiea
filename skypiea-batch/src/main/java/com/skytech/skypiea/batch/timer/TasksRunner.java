package com.skytech.skypiea.batch.timer;

import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.task.implementation.FailureTask;

@Service
public class TasksRunner extends TimerTask {
	
	private static Logger log = LoggerFactory.getLogger(TasksRunner.class);
	
	/************** Begin Tasks Declaration ***************/	
	@Autowired
	private FailureTask failureTask;
	/************** End Tasks Declaration ***************/	

	@Override
	public void run() {
		log.info("=============== BEGIN FAILURE TASK ===============");
		failureTask.runJob();
		log.info("===============  END FAILURE TASK  ===============");	

	}

}
