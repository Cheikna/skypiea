package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.NonMedicalConnectedObjectService;
import com.skytech.skypiea.commons.entity.AlarmClock;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;


@RestController
@RequestMapping("/api/non-medical-objects")
@CrossOrigin(origins="*", allowedHeaders="*")
public class NonMedicalConnectedObjectController {
		
		@Autowired
		private NonMedicalConnectedObjectService nonMedicalConnectedObjectService;
		
		@GetMapping("")
		public List<NonMedicalConnectedObject> getNonMedicalConnectedObject() {
			return nonMedicalConnectedObjectService.findAll();
		}
}
