package com.skytech.skypiea.batch.algorithm.implementation;

import com.skytech.skypiea.batch.algorithm.abstracts.MedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.batch.cache.CacheInfoBuilder;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.MedicalObjectType;
import com.skytech.skypiea.commons.enumeration.MessageSender;
import com.skytech.skypiea.commons.message.Message;
import com.sun.xml.bind.v2.TODO;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.*;


public class HealthSurveillenceAlgorithmTest {

    @Before
    public void init(){


    }

    /*@Test
    public void shouldIncreaseWarningCountIfWarningMessageRecieved(){
        MedicalConnectedObject medicalObject = new MedicalConnectedObject();
        medicalObject.setMedicalObjectType(MedicalObjectType.HEART_RATE);
        MessageSender messageSender = MessageSender.MEDICAL_CONNECTED_OBJECT;
        Message warningMessage = new Message(1L,messageSender,"120",null);
        Message defaultMessage = new Message(1L,messageSender,"70",null);
        Long actualWarningCount;
        CacheInfo initialCacheInfo = CacheInfoBuilder.asCacheInfo().withWarningMessageCount(1L).build();
        MedicalConnectedObjectAlgorithm healthSurveillenceAlgorithm = new HealthSurveillenceAlgorithm();
        CacheInfo cacheInfo = healthSurveillenceAlgorithm.check(medicalObject, warningMessage, initialCacheInfo);
        actualWarningCount = cacheInfo.getWarningMessageCount();
        assertEquals(java.util.Optional.of(2L),actualWarningCount);
    }*/



}
