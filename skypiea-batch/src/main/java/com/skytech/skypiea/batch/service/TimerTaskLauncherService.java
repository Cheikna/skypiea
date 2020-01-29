package com.skytech.skypiea.batch.service;

import java.util.Timer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.socket.server.BatchMessageReceiverSocket;
import com.skytech.skypiea.batch.task.implementation.MemoryCacheCheckerTask;
import com.skytech.skypiea.batch.task.implementation.RoomStateCheckerTask;

@Service
public class TimerTaskLauncherService {
	
	private final Long roomCheckerDelay = 5000L;
	private final Long roomCheckerFrequency = 10000L;
	private final Long memoryCacheCheckerFrequency = 10000L;
	
	@Autowired
	private BatchMessageReceiverSocket batchServerSocket;
	
	@Autowired	
	private RoomStateCheckerTask roomObjectsCheckerTask;
	
	@Autowired
	private MemoryCacheCheckerTask memoryCacheCheckerTask;
	
	public void start() {		
		Timer timer = new Timer(true);
        timer.scheduleAtFixedRate(memoryCacheCheckerTask, 0L, memoryCacheCheckerFrequency);
        // Add a delay in order to let the socket start
        timer.scheduleAtFixedRate(roomObjectsCheckerTask, roomCheckerDelay, roomCheckerFrequency);

        Thread socketThread = new Thread(batchServerSocket);
        socketThread.start();
        
	}

}
