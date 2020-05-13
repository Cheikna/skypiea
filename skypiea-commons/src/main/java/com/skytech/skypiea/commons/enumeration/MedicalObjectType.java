package com.skytech.skypiea.commons.enumeration;

public enum MedicalObjectType {

    HEART_RATE("bpm"),
    BLOOD_PRESSURE("mmHG"),
    BLOOD_SUGAR("g/L");


    private String measurementUnit;

    MedicalObjectType(String measurementUnit) {
        this.measurementUnit = measurementUnit;
    }

    public String getMeasurementUnit() {
        return measurementUnit;
    }

}
