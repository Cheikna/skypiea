package com.skytech.skypiea.batch.service;

import com.skytech.skypiea.api.service.MedicalConnectedObjectService;
import com.skytech.skypiea.batch.algorithm.abstracts.MedicalConnectedObjectAlgorithm;
import com.skytech.skypiea.batch.algorithm.implementation.HealthSurveillenceAlgorithm;
import com.skytech.skypiea.batch.cache.CacheFactory;
import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.HealthControlHistoryEvent;
import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import com.skytech.skypiea.commons.entity.RealTimeEvent;
import com.skytech.skypiea.commons.enumeration.EventType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.message.Message;
import com.skytech.skypiea.commons.util.StringFormatterUtil;
import org.javatuples.Pair;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;

@Service
public class HealthSurveillanceService  implements IMessageProcessor {

    private static Logger log = LoggerFactory.getLogger(HealthSurveillanceService.class);

    @Autowired
    private MedicalConnectedObjectService medicalConnectedObjectService;

    private MedicalConnectedObjectAlgorithm heartRateAlgorithm = new HealthSurveillenceAlgorithm();
    private final long MAX_WARNING_MESSAGE_COUNT = 5L;

    @Override
    public synchronized void processObjectMessage(Message message) {
        /*String ipAddress = message.getIpAddress();
        String value = message.getValue1();
        HealthControlHistory healthControlHistory = new HealthControlHistory();
        healthControlHistory.setSavingDate(DateUtil.getCurrentTimestamp());
        healthControlHistory.setValue(Float.valueOf(value));
        this.medicalConnectedObjectService.saveHistory(ipAddress,healthControlHistory);*/

        try{
            log.info("Processing message : " + message.toString());
            String ipAddress = message.getIpAddress();
            log.info("-------------> " + ipAddress);
            MedicalConnectedObject medicalConnectedObject = CacheFactory.getMemoryCache().getMedicalConnectedObjectByIpAddress(ipAddress);

            if(medicalConnectedObject != null){
                log.info("Object found : " + medicalConnectedObject.toString());
                Long objectId = medicalConnectedObject.getId();
                State initialObjectState = medicalConnectedObject.getState();
                State newObjectState = State.getDefaultState();

                CacheInfo cacheInfo = CacheFactory.getMemoryCache().getCacheInfoByMedicalConnectedObjectId(objectId);

                if(cacheInfo == null) {
                    cacheInfo = new CacheInfo();
                    cacheInfo.setCurrentState(initialObjectState);

                }

                log.info("Initial state : " + cacheInfo.getCurrentState());
                EventType eventType = EventType.HEALTH_CONTROL;
                cacheInfo = heartRateAlgorithm.check(medicalConnectedObject,message,cacheInfo);
                newObjectState = cacheInfo.getCurrentState();
                log.info("New state after monitoring check : " + newObjectState);

                /**
                 * Save state changes into history
                 */
                boolean saveCacheInfo = cacheInfo.isCacheInfoNeedToBeSavedInDatabase();
                if(saveCacheInfo){
                    boolean saveHistory = false;
                    if(initialObjectState != null
                        && newObjectState == State.OPERATIONAL
                        && initialObjectState != State.OPERATIONAL){
                        saveHistory = true;
                    }
                    medicalConnectedObject = saveMedicalConnectedObjectEvent(objectId, cacheInfo, eventType, saveHistory);
                    cacheInfo.setIsCacheInfoNeedToBeSavedInDatabase(false);
                }

                if(cacheInfo.getCurrentState() == State.OPERATIONAL){
                    cacheInfo.reset();
                }

                displayAlgorithmResults(medicalConnectedObject, cacheInfo, saveCacheInfo);

                CacheFactory.getMemoryCache().addMedicalConnectedObject(medicalConnectedObject);
                CacheFactory.getMemoryCache().addCacheInfoByMedicalConnectedObjectId(objectId, cacheInfo);

            } else {
                log.info("Object with ipAdress " + ipAddress + " not found.");
            }
        }
        catch (Exception e){
            log.error(e.getStackTrace().toString());
            e.printStackTrace();
        }
    }

    private void displayAlgorithmResults(MedicalConnectedObject medicalConnectedObject, CacheInfo cacheInfo, boolean saveCacheInfo) {
        String warningCount = cacheInfo.getWarningMessageCount() + "/" + MAX_WARNING_MESSAGE_COUNT;
        Pair<Timestamp, String> lastValue = cacheInfo.getLastValue();
        String value = "";
        if(lastValue != null) {
            value = lastValue.getValue1();
        }
        String result = "\n" + StringFormatterUtil.formatRoomAlgoResult(medicalConnectedObject.getIpAddress(), medicalConnectedObject.getMedicalObjectType().name(), cacheInfo.getCurrentState().name(), warningCount, value, saveCacheInfo);
        log.info(result);
    }

    private MedicalConnectedObject saveMedicalConnectedObjectEvent(Long objectId, CacheInfo cacheInfo, EventType eventType, boolean saveHistory) {
        MedicalConnectedObject medicalConnectedObject = medicalConnectedObjectService.findById(objectId);
        if (saveHistory){
            RealTimeEvent realTimeEventToSave = medicalConnectedObject.getRealTimeEvent();
            if (realTimeEventToSave != null){
                HistoryEvent historyEvent = new HistoryEvent();
                historyEvent.cloneFromRealTimeEvent(realTimeEventToSave);
                medicalConnectedObject.getHistoryEvents();
                medicalConnectedObject.getHistoryEvents().add(historyEvent);
            }
        }
        RealTimeEvent realTimeEvent = cacheInfo.convertToRealTimeEvent(eventType);

        medicalConnectedObject.setRealTimeEvent(realTimeEvent);
        medicalConnectedObject.setState(cacheInfo.getCurrentState());
        medicalConnectedObject = medicalConnectedObjectService.save(medicalConnectedObject);
        return medicalConnectedObject;
    }


}
