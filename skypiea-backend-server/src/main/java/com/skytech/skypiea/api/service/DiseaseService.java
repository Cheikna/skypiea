package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.MedicalRecordRepository;
import com.skytech.skypiea.commons.entity.MedicalRecord;

@Service
public class MedicalRecordService {
	
	@Autowired
	private MedicalRecordRepository medicalRecordRepository;
	
	public MedicalRecord save(MedicalRecord medicalRecord) {
		return medicalRecordRepository.save(medicalRecord);
	}

	public List<MedicalRecord> findAll(){
		List<MedicalRecord> medicalRecords = this.medicalRecordRepository.findAll();
		return medicalRecords;
	}
}
