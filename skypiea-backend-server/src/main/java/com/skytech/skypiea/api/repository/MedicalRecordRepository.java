package com.skytech.skypiea.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skytech.skypiea.commons.entity.MedicalRecord;

public interface MedicalRecordRepository extends JpaRepository<MedicalRecord, Long>{

}
