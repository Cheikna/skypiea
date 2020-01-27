package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.MedicalRecordService;
import com.skytech.skypiea.commons.entity.MedicalRecord;

@RestController
@RequestMapping("/medical-records")
@CrossOrigin(origins="*", allowedHeaders="*")
public class MedicalRecordController {
	
	@Autowired
	private MedicalRecordService medicalRecordService;
	
	@PostMapping("")
	public MedicalRecord createNewMedicalRecord(@RequestBody MedicalRecord medicalRecord) {
		return medicalRecordService.save(medicalRecord);
	}	
	
	@GetMapping("")
	public List<MedicalRecord> getMedicalRecord() {
		return medicalRecordService.findAll();
	}

}
