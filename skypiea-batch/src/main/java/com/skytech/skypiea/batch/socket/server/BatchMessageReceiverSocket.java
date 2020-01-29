package com.skytech.skypiea.batch.socket.server;

import java.net.ServerSocket;
import java.net.Socket;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class BatchMessageReceiverSocket implements Runnable  {

	private static final Logger log = LoggerFactory.getLogger(BatchMessageReceiverSocket.class);

	private ServerSocket serverSocket;
	
	@Value("${socket.server.port}")
	private String portNumberStr;
	
	@Value("${socket.server.encodage}")
	private String encodage;
	

	public void run()
	{
		Integer portNumber = Integer.parseInt(portNumberStr);
		log.info("Launching of the socket server for receiving messages from objects on port : " + portNumber);

		try{
			serverSocket = new ServerSocket(portNumber);
			while(true)
			{			
				Socket socket = serverSocket.accept();
				MessageReceiver messageReceiver  = new MessageReceiver(socket, encodage);
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
