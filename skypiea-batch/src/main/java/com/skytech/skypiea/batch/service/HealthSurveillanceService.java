package com.skytech.skypiea.batch.service;

import com.skytech.skypiea.api.service.MedicalConnectedObjectService;
import com.skytech.skypiea.commons.entity.HealthControlHistory;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HealthSurveillanceService  implements IMessageProcessor {

    @Autowired
    private MedicalConnectedObjectService medicalConnectedObjectService;
    @Override
    public void processObjectMessage(Message message) {
        String ipAddress = message.getIpAddress();
        String value = message.getValue1();
        HealthControlHistory healthControlHistory = new HealthControlHistory();
        healthControlHistory.setSavingDate(DateUtil.getCurrentTimestamp());
        healthControlHistory.setValue(Float.valueOf(value));
        this.medicalConnectedObjectService.saveHistory(ipAddress,healthControlHistory);
    }

}
