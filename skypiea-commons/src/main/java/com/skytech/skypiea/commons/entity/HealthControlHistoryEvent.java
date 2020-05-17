package com.skytech.skypiea.commons.entity;

import com.skytech.skypiea.commons.enumeration.EventType;
import com.skytech.skypiea.commons.enumeration.MedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;

import javax.persistence.*;
import javax.persistence.Entity;
import java.sql.Timestamp;

@Entity
@Table(name = "HEALTH_CONTROL_HISTORY")
public class HealthControlHistoryEvent extends Event {

    @Column(name="END_TIME")
    private Timestamp endTime;

    @Enumerated(EnumType.STRING)
    @Column(name="REACHED_STATE")
    private State reachedState;

    @Enumerated(EnumType.STRING)
    @Column(name="OBJECT_TYPE")
    private MedicalObjectType medicalObjectType;

    public HealthControlHistoryEvent(Long id, Long version, EventType eventType, Timestamp startTime, String description, Float lastMeasuredValue, Timestamp endTime, State reachedState, MedicalObjectType medicalObjectType) {
        super(id, version, eventType, startTime, description, lastMeasuredValue);
        this.endTime = endTime;
        this.reachedState = reachedState;
        this.medicalObjectType = medicalObjectType;
    }

    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    public State getReachedState() {
        return reachedState;
    }

    public void setReachedState(State reachedState) {
        this.reachedState = reachedState;
    }

    public MedicalObjectType getMedicalObjectType() {
        return medicalObjectType;
    }

    public void setMedicalObjectType(MedicalObjectType medicalObjectType) {
        this.medicalObjectType = medicalObjectType;
    }

    public void cloneFromRealTimeEvent(RealTimeEvent realTimeEvent) {
        this.eventType = realTimeEvent.eventType;
        this.startTime = realTimeEvent.startTime;
        this.description = realTimeEvent.description;
        this.lastMeasuredValue = realTimeEvent.lastMeasuredValue;
        this.endTime = realTimeEvent.getLastCheckingTime();
        this.reachedState = realTimeEvent.getCurrentState();
    }
}
