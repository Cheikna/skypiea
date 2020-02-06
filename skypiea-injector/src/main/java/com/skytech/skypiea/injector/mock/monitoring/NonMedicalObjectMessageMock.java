package com.skytech.skypiea.injector.mock.monitoring;

import java.util.Scanner;
import java.util.function.Consumer;

import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.enumeration.MessageSender;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.FileReader;
import com.skytech.skypiea.injector.mock.abstracts.Mock;
import com.skytech.skypiea.injector.socket.client.ClientSocket;
import com.skytech.skypiea.injector.util.ScannerUtil;

@Service
public class NonMedicalObjectMessageMock extends Mock {

	private static Logger log = LoggerFactory.getLogger(NonMedicalObjectMessageMock.class);	

	@Autowired
	private ClientSocket clientSocket;
	
	/**
	 * Main method to mock some users
	 * When the user arrives at the end of the start method, 
	 * he is redirected to the list of mocks
	 */
	@Override
	public void start(Scanner sc) {
		/*String id = ScannerUtil.askForString(sc, "Enter the object ID : ", ScannerUtil.isNumber);
		String value1 = ScannerUtil.askForString(sc, "Enter a value to send : ", (str)->{
			return str != null;
		});
		String value2 = "";
		Message message = new Message(Long.parseLong(id), MessageSender.NON_MEDICAL_CONNECTED_OBJECT, value1, value2);
		clientSocket.sendMessage(message);*/
		sendAutomaticMessage(sc);
	}
	
	public void sendManualMessage() {
		
	}
	
	private void sendAutomaticMessage(Scanner sc) {
		//String askForSystemFile = ScannerUtil.askForString(sc, "Read file from system (y/N) ? [N] ", null, "N");
		//Boolean isSystemFile = askForSystemFile.equalsIgnoreCase("y");
		FileReader.readLine("monitoring/non-medical-connected-object-messages.txt", formatMockTextFileAndSend, false);
	}

	@Override
	public void clearInjectedData() {}

	@Override
	public String getMockName() {
		return "Non Medical Object Messages";
	}
	
	Consumer<String> formatMockTextFileAndSend = (line) -> {
		// Skip the empty line and the ones which starts with '--'
		if(line != null && (line.trim().length() > 0) && !line.startsWith("--")) {
			String[] splitted = line.split(";");
			if(splitted.length >= 3) {
				String idStr = splitted[0];
				String valueStr = splitted[1];
				String sleepStr = splitted[2];
				Message message = new Message(Long.parseLong(idStr), MessageSender.NON_MEDICAL_CONNECTED_OBJECT, valueStr, "");
				clientSocket.sendMessage(message);
				
				Long sleep = NumberUtils.toLong(sleepStr, 1) * 1000;
				try {
					Thread.sleep(sleep);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				/*Long id = NumberUtils.toLong(idStr);
				Float value*/
			}
			else {
				log.info("One of the values is missing : ID;VALUE;SLEEP");
			}
		}
	};
}
