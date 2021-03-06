package com.skytech.skypiea.batch.socket.server;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.skytech.skypiea.batch.service.IMessageProcessor;
import com.skytech.skypiea.commons.enumeration.MessageSender;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.JsonUtil;

/**
 * This class will execute the client request
 */
public class MessageReceiver implements Runnable {

	private static final Logger log = LoggerFactory.getLogger(MessageReceiver.class);

	//This reader will allow us to read the message received and so sent by the client
	private BufferedReader readFromClient;

	//This writer will allow us to send a response to the client
	private PrintWriter writeToClient;
	
	// Parameter retrieved on this class creation in BatchMessageReceiver Socket
	private Map<MessageSender, IMessageProcessor> messageProcessors;
	
	private String encodage;

	private Socket socket;

	public MessageReceiver(Socket socket, String encodage, Map<MessageSender, IMessageProcessor> messageProcessors) {
		this.socket = socket;
		this.encodage = encodage;
		this.messageProcessors = messageProcessors;
	}

	@Override
	public void run() {	
		try 
		{	
			readFromClient = new BufferedReader(new InputStreamReader(socket.getInputStream(), encodage));
			String result = readFromClient.readLine();
			Message message = JsonUtil.deserializeMessage(result);
			System.out.println("Message received " + message.toString());
			MessageSender messageSender = message.getMessageSender();
			
			if(messageSender != null) {
				IMessageProcessor messageProcessor = messageProcessors.get(messageSender);
				messageProcessor.processObjectMessage(message);
			}
		}
		catch (Exception e) 
		{
			log.error("Exception : The client is disconnected : " + e.getMessage());
			e.printStackTrace();
		}
		finally 
		{			
			exit();			
		}
	}

	/**
	 * This method will close the socket
	 */
	private void exit()
	{
		try 
		{
			socket.close();
			readFromClient.close();
			
			if(writeToClient != null) {
				writeToClient.close();
			}
		} 
		catch (IOException e) 
		{
			log.error("An error occured during the closure of a socket : " + e.getMessage());
		}
	}
}
