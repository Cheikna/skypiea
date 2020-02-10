package com.skytech.skypiea.batch.service;

import com.skytech.skypiea.commons.message.Message;
import org.springframework.stereotype.Service;

@Service
public class HealthSurveillanceService  implements IMessageProcessor {
    @Override
    public void processObjectMessage(Message message) {
        System.out.println("--------> " + message);
    }
}
