package com.skytech.skypiea.injector.mock.healthcare;

import com.skytech.skypiea.commons.enumeration.MessageSender;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.injector.mock.abstracts.Mock;
import com.skytech.skypiea.injector.socket.client.ClientSocket;
import org.apache.commons.lang3.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Scanner;
import java.util.function.Consumer;

@Service
public class HealthControlMock extends Mock {

    private static Logger log = LoggerFactory.getLogger(HealthControlMock.class);

    private final String FILE_PATH = "health-control/mock-health-rate.txt";

    @Autowired
    private ClientSocket clientSocket;

    @Override
    public void start(Scanner sc) {
        super.chooseFileLocationAndLaunch(sc,FILE_PATH, formatMockTextFileAndSend);

    }

    Consumer<String> formatMockTextFileAndSend = (line) -> {
        // Skip the empty line and the ones which starts with '--'
        if(line != null && (line.trim().length() > 0) && !line.startsWith("--")) {
            String[] splitted = line.split(";");
            if(splitted.length >= 3) {
                String ipAddress = splitted[0];
                String valueStr = splitted[1];
                String sleepStr = splitted[2];
                Message message = new Message(ipAddress, MessageSender.MEDICAL_CONNECTED_OBJECT, valueStr, "");
                clientSocket.sendMessage(message);

                Long sleep = NumberUtils.toLong(sleepStr, 1) * 1000;
                try {
                    Thread.sleep(sleep);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            else {
                log.info("One of the values is missing : IP_ADDRESS;VALUE;SLEEP");
            }
        }
    };

    @Override
    public String getMockName() {
        return "HealthControlMock ";
    }

    @Override
    public void clearInjectedData() {

    }
}
