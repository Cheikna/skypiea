package com.skytech.skypiea.batch.algorithm.implementation;

import com.skytech.skypiea.commons.enumeration.MessageSender;
import com.skytech.skypiea.commons.message.Message;
import com.sun.xml.bind.v2.TODO;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;


public class HealthSurveillenceAlgorithmTest {

    @Before
    public void init(){
        MessageSender messageSender = MessageSender.MEDICAL_CONNECTED_OBJECT;
        Message message = new Message(1L,messageSender,"120",null);
    }




}
