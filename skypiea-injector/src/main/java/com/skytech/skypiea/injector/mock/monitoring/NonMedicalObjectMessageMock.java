package com.skytech.skypiea.injector.mock.monitoring;

import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.injector.mock.abstracts.Mock;
import com.skytech.skypiea.injector.socket.client.ClientSocket;
import com.skytech.skypiea.injector.util.ScannerUtil;

@Service
public class NonMedicalObjectMessageMock extends Mock {

	//private static Logger log = LoggerFactory.getLogger(NonMedicalObjectMessageMock.class);	

	@Autowired
	private ClientSocket clientSocket;
	
	/**
	 * Main method to mock some users
	 * When the user arrives at the end of the start method, 
	 * he is redirected to the list of mocks
	 */
	@Override
	public void start(Scanner sc) {
		String id = ScannerUtil.askForString(sc, "Enter the object ID : ", ScannerUtil.isNumber);
		String value1 = ScannerUtil.askForString(sc, "Enter a value to send : ", (str)->{
			return str != null;
		});
		String value2 = "";
		Message message = new Message(Long.parseLong(id), value1, value2);
		clientSocket.sendMessage(message);	
		message.setValue2("value 2");
		clientSocket.sendMessage(message);	
	}

	@Override
	public void clearInjectedData() {}

	@Override
	public String getMockName() {
		return "Non Medical Object Messages";
	}	
}
