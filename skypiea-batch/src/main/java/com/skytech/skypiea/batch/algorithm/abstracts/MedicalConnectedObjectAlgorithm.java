package com.skytech.skypiea.batch.algorithm.abstracts;

import com.skytech.skypiea.batch.cache.CacheInfo;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import com.skytech.skypiea.commons.message.Message;

public abstract class MedicalConnectedObjectAlgorithm {

    public CacheInfo check(MedicalConnectedObject MedicalConnectedObject, Message receivedMessage) {
        return check(MedicalConnectedObject, receivedMessage, null);
    }

    public abstract CacheInfo check(MedicalConnectedObject MedicalConnectedObject, Message receivedMessage, CacheInfo cacheInfo);
}
