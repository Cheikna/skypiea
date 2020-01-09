package com.skytech.skypiea.batch.timer;

import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.task.implementation.RoomObjectsCheckerTask;

@Service
public class TasksRunner extends TimerTask {
	
	private static Logger log = LoggerFactory.getLogger(TasksRunner.class);
	
	/************** Begin Tasks Declaration ***************/	
	@Autowired
	private RoomObjectsCheckerTask roomObjectsCheckerTask;
	/************** End Tasks Declaration ***************/	

	@Override
	public void run() {
		log.info("=============== BEGIN ROOMS CHECKING ===============");
		roomObjectsCheckerTask.runJob();
		log.info("===============  END ROOMS CHECKING  ===============");	

	}

}
