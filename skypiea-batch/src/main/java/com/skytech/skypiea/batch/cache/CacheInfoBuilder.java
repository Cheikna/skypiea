package com.skytech.skypiea.batch.cache;

import com.skytech.skypiea.commons.enumeration.State;
import org.javatuples.Pair;

import java.sql.Timestamp;
import java.util.List;

public class CacheInfoBuilder {
    private Timestamp creationDate;
    private Timestamp stateChangingDate;
    private Timestamp lastCheckingDate;
    private State currentState;
    private Long warningMessageCount;
    private String comments;
    private boolean isCacheInfoNeedToBeSavedInDatabase;
    private List<Pair<Timestamp, String>> valuesReached;

    public static CacheInfoBuilder asCacheInfo() {return new CacheInfoBuilder();}

    public CacheInfoBuilder withWarningMessageCount(Long warningMessageCount) {
        this.warningMessageCount = warningMessageCount;
        return this;

    }

    public CacheInfo build(){
        return new CacheInfo( creationDate, stateChangingDate,  lastCheckingDate,  currentState,  warningMessageCount,  comments,  isCacheInfoNeedToBeSavedInDatabase, valuesReached);
    }
}
