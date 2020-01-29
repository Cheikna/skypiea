package com.skytech.skypiea.injector.socket.client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.JsonUtil;

@Service
public class ClientSocket {

	private static final Logger log = LoggerFactory.getLogger(ClientSocket.class);
	
	@Value("${socket.server.ip}")
	private String[] serverIPs;
	
	@Value("${socket.server.port}")
	private String portNumberStr;
	
	@Value("${socket.server.encodage}")
	private String encodage;
	
	private BufferedReader readFromServer;
	private PrintWriter writeToServer;

	/**
	 * Maximum delay of response from the server in milliseconds.
	 * If the server does not response within this delay, we consider this server as not available
	 */
	private final int TIMEOUT = 5000;

	private Socket socket;
	
	public ClientSocket() {

	}

	public void sendMessage(Message message)
	{		
		try 
		{		
			// Connection to a socket
			if(serverIPs == null || serverIPs.length <= 0) {
				throw new Exception("There are no IPs addresses provided for the server socket. Please check the application.properties files !");
			}
			
			int numberOfServers = serverIPs.length;
			// TODO Loop to connect to the server until the first success
			
			String firstServerIP = serverIPs[0];
			log.info("Sending " + message.toString() + " to : " + firstServerIP + ":" + portNumberStr);
			socket = new Socket(firstServerIP, Integer.parseInt(portNumberStr));

			/*
			 * The following method throws a "SocketTimeoutException" when the timeout is exceed.
			 * This will prevent the client from waiting a very long time 
			 * whereas the server is not accessible because of a problem.
			 */
			socket.setSoTimeout(TIMEOUT);
			
			//readFromServer = new BufferedReader(new InputStreamReader(socket.getInputStream(), encodageType));
			writeToServer = new PrintWriter(new OutputStreamWriter(socket.getOutputStream(), encodage), true);	
			writeToServer.println(JsonUtil.serializeMessage(message));
			log.info("Sent : " + message.toString());
			
		}
		catch (Exception e) 
		{
			log.error("Disconnected from server - Client Error - " + e.getMessage());
			e.printStackTrace();
		}
		finally
		{
			exit();
		}
	}

	private void exit()
	{
		try {
			if(readFromServer != null)
				readFromServer.close();
			if(writeToServer != null)
				writeToServer.close();
			if(socket != null)
			{
				socket.close();
				log.debug("The communication with the server is closed");
			}
		} catch (IOException e) {
			log.error(e.getMessage());
		}
	}

}
