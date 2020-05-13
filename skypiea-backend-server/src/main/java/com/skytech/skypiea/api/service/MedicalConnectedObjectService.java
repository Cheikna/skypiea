package com.skytech.skypiea.api.service;

import com.skytech.skypiea.api.repository.MedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.HealthControlHistory;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import org.hibernate.Hibernate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class MedicalConnectedObjectService {

    private static Logger log = LoggerFactory.getLogger(NonMedicalConnectedObjectService.class);

    @Autowired
    private MedicalConnectedObjectRepository medicalConnectedObjectRepository;

    public List<MedicalConnectedObject> findAll(){
        try {
            List<MedicalConnectedObject> medicalConnectedObjects = this.medicalConnectedObjectRepository.findAll();
            return medicalConnectedObjects;
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return new ArrayList<MedicalConnectedObject>();
    }

    public MedicalConnectedObject save(MedicalConnectedObject objectToSave) {
        MedicalConnectedObject savedObject = null;
        try {
            savedObject = medicalConnectedObjectRepository.save(objectToSave);
        } catch (Exception e) {
            log.error(e.getMessage());
            e.printStackTrace();
        }
        return savedObject;
    }

    @Transactional
    public MedicalConnectedObject saveHistory(String ipAddress, HealthControlHistory healthControlHistory){
        MedicalConnectedObject savedMedicalConnectedObject = null;
        List<MedicalConnectedObject> medicalConnectedObjects = findAll();
        if(medicalConnectedObjects != null){
            for(MedicalConnectedObject medicalConnectedObject : medicalConnectedObjects){
                System.out.println("---------> " + medicalConnectedObject.getIpAddress());
                if(medicalConnectedObject.getIpAddress().equalsIgnoreCase(ipAddress)){
                    System.out.println("------> found");
                    Hibernate.initialize(medicalConnectedObject.getHealthControlHistories());
                    medicalConnectedObject.getHealthControlHistories().add(healthControlHistory);
                    savedMedicalConnectedObject = save(medicalConnectedObject);

                }

            }
        }
        return savedMedicalConnectedObject;
    }
}
