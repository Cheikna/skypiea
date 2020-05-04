package com.skytech.skypiea.batch.algorithm.implementation;

import com.skytech.skypiea.batch.algorithm.abstracts.MedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.MedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;
import org.apache.commons.lang3.math.NumberUtils;
import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Timestamp;

public class HealthSurveillenceAlgorithm extends MedicalConnectedObjectAlgorithm {

    private static final Logger log = LoggerFactory.getLogger(MedicalConnectedObjectAlgorithm.class);
    private final long ACCEPTABLE_MIN_HEART_RATE_VALUE = 50L;
    private final long ACCEPTABLE_MAX_HEART_RATE_VALUE = 80L;
    private final long MAX_WARNING_MESSAGE_COUNT = 5L;





    private CacheInfo heartRateMonitoring(Message receivedMessage, CacheInfo cacheInfo){
      String comments = "";
      Long receivedValue = NumberUtils.toLong(receivedMessage.getValue1());

        if(receivedValue <= 50 || receivedValue >= 80){
          cacheInfo.setCurrentState(State.WARNING);
          cacheInfo.increaseWarningMessageCount();
          comments = "Resident is potentially in danger!";
      }
      else{
          cacheInfo.setCurrentState(State.OPERATIONAL);
      }
      cacheInfo.setComments(comments);
      return cacheInfo;
    }


    /*private State resetStateToOperational(State state) {
        return (state == State.WARNING) ? State.OPERATIONAL : state;
    }

    private CacheInfo checkForInstantAlert(Message receivedMessage, CacheInfo cacheInfo) {
        return null;
    }*/

    @Override
    public CacheInfo check(MedicalConnectedObject medicalConnectedObject, Message recievedMessage, CacheInfo cacheInfo){
        MedicalObjectType type = medicalConnectedObject.getMedicalObjectType();

        if(type == MedicalObjectType.HEART_RATE){
            cacheInfo = heartRateMonitoring(recievedMessage, cacheInfo);
        }
        Long warningCount = cacheInfo.getWarningMessageCount();

        if(cacheInfo.getCurrentState() == State.WARNING && warningCount >= MAX_WARNING_MESSAGE_COUNT){
            cacheInfo.setCurrentState(State.DANGER);
            boolean toBeSaved = (warningCount == MAX_WARNING_MESSAGE_COUNT);
            cacheInfo.setIsCacheInfoNeedToBeSavedInDatabase(toBeSaved);
        }
        return cacheInfo;
    }
}
