package com.skytech.skypiea.batch.socket.server;

import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

import com.skytech.skypiea.batch.service.HealthSurveillanceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.batch.service.IMessageProcessor;
import com.skytech.skypiea.batch.service.RoomObjectsSurveillanceService;
import com.skytech.skypiea.commons.enumeration.MessageSender;

@Service
public class BatchMessageReceiverSocket implements Runnable  {

	private static final Logger log = LoggerFactory.getLogger(BatchMessageReceiverSocket.class);

	private ServerSocket serverSocket;
	
	@Autowired
	private RoomObjectsSurveillanceService roomObjectsSurveillanceService;

	@Autowired
	private HealthSurveillanceService healthSurveillanceService;
	
	@Value("${socket.server.port}")
	private String portNumberStr;
	
	@Value("${socket.server.encodage}")
	private String encodage;
	
	private Map<MessageSender, IMessageProcessor> messageProcessors;
	
	public BatchMessageReceiverSocket() {
		messageProcessors = new HashMap<MessageSender, IMessageProcessor>();
	}
	
	private void initMessageProcessors() {
		messageProcessors.put(MessageSender.NON_MEDICAL_CONNECTED_OBJECT, roomObjectsSurveillanceService);		
		messageProcessors.put(MessageSender.MEDICAL_CONNECTED_OBJECT, healthSurveillanceService);
	}

	public void run()
	{
		initMessageProcessors();
		Integer portNumber = Integer.parseInt(portNumberStr);
		log.info("Launching of the socket server for receiving messages from objects on port : " + portNumber);

		try{
			serverSocket = new ServerSocket(portNumber);
			while(true)
			{			
				Socket socket = serverSocket.accept();
				MessageReceiver messageReceiver  = new MessageReceiver(socket, encodage, this.messageProcessors);
				//messageReceiver.run();
				Thread objectThread = new Thread(messageReceiver);
				objectThread.start();

			}
		}
		catch(Exception e) {
			log.error("Server exception : " + e.getMessage());
			e.printStackTrace();
		}
	}

}
