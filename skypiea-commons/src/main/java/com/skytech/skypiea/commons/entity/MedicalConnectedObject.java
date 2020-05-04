package com.skytech.skypiea.commons.entity;

import java.sql.Timestamp;
import java.util.Set;

import javax.persistence.*;
import javax.persistence.Entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.skytech.skypiea.commons.enumeration.MedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@Entity
@Table(name = "MEDICAL_CONNECTED_OBJECT")
public class MedicalConnectedObject extends ConnectedObject {


    /*@OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "MEDICAL_CONNECTED_OBJECT_ID")
    private Set<HealthControlHistory> healthControlHistories;*/

    @Enumerated(EnumType.STRING)
    @Column(name="MEDICAL_OBJECT_TYPE")
    private MedicalObjectType medicalObjectType;

    @OneToOne
    @JoinColumn(name = "RESIDENT_ID", nullable = false)
    private Resident resident;

    public MedicalConnectedObject() {
        super();
    }

    public MedicalConnectedObject(Long id, Long version, Timestamp lastParameterModificationDate,
                                  String brand, String ipAddress, String macAddress, Timestamp lastMeasurementDate,
                                  Status status, State state, Long sensitivity, Long frequency, MedicalObjectType medicalObjectType, Resident resident ) {
        super(id, version, lastParameterModificationDate, brand, ipAddress, macAddress, lastMeasurementDate, status, state, sensitivity, frequency);
        this.medicalObjectType = medicalObjectType;
        this.resident = resident;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MedicalConnectedObject)) return false;
        if (!super.equals(o)) return false;

        MedicalConnectedObject that = (MedicalConnectedObject) o;

        if (medicalObjectType != that.medicalObjectType) return false;
        return resident != null ? resident.equals(that.resident) : that.resident == null;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + (medicalObjectType != null ? medicalObjectType.hashCode() : 0);
        result = 31 * result + (resident != null ? resident.hashCode() : 0);
        return result;
    }

    public Resident getResident() {
        return resident;
    }

    public void setResident(Resident resident) {
        this.resident = resident;
    }

    public MedicalObjectType getMedicalObjectType() {
        return medicalObjectType;
    }

    @Override
    public String toString() {
        return "NonMedicalConnectedObject [id=" + id + ", MedicalObjectType=" + medicalObjectType + "]";
    }


}
