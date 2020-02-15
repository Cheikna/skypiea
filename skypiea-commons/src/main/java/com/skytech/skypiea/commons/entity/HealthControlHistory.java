package com.skytech.skypiea.commons.entity;

import com.skytech.skypiea.commons.enumeration.MedicalObjectType;

import javax.persistence.*;
import javax.persistence.Entity;
import java.sql.Timestamp;

@Entity
@Table(name = "HEALTH_CONTROL_HISTORY")
public class HealthControlHistory extends com.skytech.skypiea.commons.entity.Entity {

    @Enumerated(EnumType.STRING)
    @Column(name = "MEDICAL_OBJECT_TYPE")
    private com.skytech.skypiea.commons.enumeration.MedicalObjectType MedicalObjectType;
    @Transient
    private String measurementUnit;

    @Column(name = "SAVING_DATE")
    private Timestamp savingDate;

    @Column(name = "VALUE")
    private Float value;

    @Column(name = "EXTRA_VALUE")
    private Float extraValue;

    public HealthControlHistory() {
        super();
    }

    public HealthControlHistory(Long id, Long version, MedicalObjectType medicalObjectType, String measurementUnit, Timestamp savingDate, Float value, Float extraValue) {
        super(id, version);
        MedicalObjectType = medicalObjectType;
        this.measurementUnit = measurementUnit;
        this.savingDate = savingDate;
        this.value = value;
        this.extraValue = extraValue;
    }

    public com.skytech.skypiea.commons.enumeration.MedicalObjectType getMedicalObjectType() {
        return MedicalObjectType;
    }

    public void setMedicalObjectType(com.skytech.skypiea.commons.enumeration.MedicalObjectType medicalObjectType) {
        MedicalObjectType = medicalObjectType;
    }

    public String getMeasurementUnit() {
        return measurementUnit;
    }

    public void setMeasurementUnit(String measurementUnit) {
        this.measurementUnit = measurementUnit;
    }

    public Timestamp getSavingDate() {
        return savingDate;
    }

    public void setSavingDate(Timestamp savingDate) {
        this.savingDate = savingDate;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public Float getExtraValue() {
        return extraValue;
    }

    public void setExtraValue(Float extraValue) {
        this.extraValue = extraValue;
    }

    @PostLoad
    public void initAfterLoad() {

        if (this.MedicalObjectType != null) {
            this.measurementUnit = this.MedicalObjectType.getMeasurementUnit();
        } else {
            this.measurementUnit = "";
        }

    }

}
