package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PostLoad;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name = "MEDICAL_CONNECTED_OBJECT")
public class MedicalConnectedObject extends ConnectedObject {

    @Column(name = "INSTALLATION_DATE")
    private Timestamp installationDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "MEDICAL_OBJECT_TYPE")
    private NonMedicalObjectType MedicalObjectType;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name = "RESIDENT_ID", nullable = false)
    private Room room;

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "MEDICAL_CONNECTED_OBJECT_ID")
    private Set<ObjectSetting> objectSettings;

    @Transient
    private ObjectSetting currentSetting;

    @Transient
    private String measurementUnit;

    public MedicalConnectedObject() {
        super();
    }

    public MedicalConnectedObject(Long id, Long version, Timestamp lastParameterModificationDate,
                                  String brand, String ipAddress, String macAddress, Timestamp lastMeasurementDate,
                                  Status status, State state, NonMedicalObjectType MedicalObjectType, Timestamp installationDate, String svgPoint) {
        super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate,
                status, state);
        this.MedicalObjectType = MedicalObjectType;
        this.installationDate = installationDate;
    }

    public Timestamp getInstallationDate() {
        return installationDate;
    }

    public void setInstallationDate(Timestamp installationDate) {
        this.installationDate = installationDate;
    }

    public NonMedicalObjectType getMedicalObjectType() {
        return MedicalObjectType;
    }

    public void setNonMedicalObjectType(NonMedicalObjectType nonMedicalObjectType) {
        this.MedicalObjectType = MedicalObjectType;
    }

    public Set<ObjectSetting> getObjectSettings() {
        return objectSettings;
    }

    public void setObjectSettings(Set<ObjectSetting> objectSettings) {
        this.objectSettings = objectSettings;
    }

    public ObjectSetting getCurrentSetting() {
        return currentSetting;
    }

    public void setCurrentSetting(ObjectSetting currentSetting) {
        this.currentSetting = currentSetting;
    }

    public String getMeasurementUnit() {
        return measurementUnit;
    }

    public void setMeasurementUnit(String measurementUnit) {
        this.measurementUnit = measurementUnit;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    @PostLoad
    public void initAfterLoad() {
        if (this.objectSettings != null && this.objectSettings.size() > 0) {
            // Create a list from the objectSettings set
            List<ObjectSetting> listToSort = objectSettings.stream().collect(Collectors.toList());
            // Order the list from the newest to the oldest
            Collections.sort(listToSort, (obj1, obj2) -> obj2.getSavingDate().compareTo(obj1.getSavingDate()));
            // Retrieve to first element of the list which is the newest
            this.currentSetting = listToSort.get(0);
        }

        if (this.MedicalObjectType != null) {
            this.measurementUnit = this.MedicalObjectType.getMeasurementUnit();
        } else {
            this.measurementUnit = "";
        }

    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((currentSetting == null) ? 0 : currentSetting.hashCode());
        result = prime * result + ((installationDate == null) ? 0 : installationDate.hashCode());
        result = prime * result + ((measurementUnit == null) ? 0 : measurementUnit.hashCode());
        result = prime * result + ((MedicalObjectType == null) ? 0 : MedicalObjectType.hashCode());
        result = prime * result + ((objectSettings == null) ? 0 : objectSettings.hashCode());
        result = prime * result + ((room == null) ? 0 : room.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (!super.equals(obj))
            return false;
        if (getClass() != obj.getClass())
            return false;
        MedicalConnectedObject other = (MedicalConnectedObject) obj;
        if (currentSetting == null) {
            if (other.currentSetting != null)
                return false;
        } else if (!currentSetting.equals(other.currentSetting))
            return false;
        if (installationDate == null) {
            if (other.installationDate != null)
                return false;
        } else if (!installationDate.equals(other.installationDate))
            return false;
        if (measurementUnit == null) {
            if (other.measurementUnit != null)
                return false;
        } else if (!measurementUnit.equals(other.measurementUnit))
            return false;
        if (MedicalObjectType != other.MedicalObjectType)
            return false;
        if (objectSettings == null) {
            if (other.objectSettings != null)
                return false;
        } else if (!objectSettings.equals(other.objectSettings))
            return false;
        if (room == null) {
            if (other.room != null)
                return false;
        } else if (!room.equals(other.room))
            return false;

        return true;
    }

    @Override
    public String toString() {
        return "MedicalConnectedObject [id=" + id + ", MedicalObjectType=" + MedicalObjectType + "]";
    }
}
