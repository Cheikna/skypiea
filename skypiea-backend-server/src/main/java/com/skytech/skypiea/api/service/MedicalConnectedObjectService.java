package com.skytech.skypiea.api.service;

import com.skytech.skypiea.api.repository.MedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
