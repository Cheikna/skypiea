package com.skytech.skypiea.injector.mock.failure;

import java.util.Scanner;
import java.util.function.Consumer;

import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.enumeration.MessageSender;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.injector.mock.abstracts.Mock;
import com.skytech.skypiea.injector.socket.client.ClientSocket;

@Service
public class FailureMessageMock extends Mock {

	private static Logger log = LoggerFactory.getLogger(FailureMessageMock.class);	

	private final String FILE_PATH = "failure/failure-messages.txt";
	
	@Autowired
	private ClientSocket clientSocket;
	
	/**
	 * Main method to mock some users
	 * When the user arrives at the end of the start method, 
	 * he is redirected to the list of mocks
	 */
	@Override
	public void start(Scanner sc) {
		super.chooseFileLocationAndLaunch(sc, FILE_PATH, formatMockTextFileAndSend);
	}

	@Override
	public void clearInjectedData() {}

	@Override
	public String getMockName() {
		return "Failure Messages";
	}
	
	Consumer<String> formatMockTextFileAndSend = (line) -> {
		// Skip the empty line and the ones which starts with '--'
		if(line != null && (line.trim().length() > 0) && !line.startsWith("--")) {
			String[] splitted = line.split(";");
			if(splitted.length >= 3) {
				String macAddress = splitted[0];
				String valueStr = splitted[1];
				String sleepStr = splitted[2];
				Message message = new Message(macAddress, MessageSender.NON_MEDICAL_CONNECTED_OBJECT, valueStr, "");
				clientSocket.sendMessage(message);
				
				Long sleep = NumberUtils.toLong(sleepStr, 1) * 1000;
				try {
					Thread.sleep(sleep);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			else {
				log.info("One of the values is missing : ID;VALUE;SLEEP");
			}
		}
	};
}
