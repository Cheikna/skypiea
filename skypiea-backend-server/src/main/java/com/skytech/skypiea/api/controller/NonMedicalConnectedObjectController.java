package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.NonMedicalConnectedObjectService;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.ObjectSetting;
import com.skytech.skypiea.commons.object.statistic.NonMedicalObjectStatistic;
import com.skytech.skypiea.commons.object.statistic.ObjectStatisticFilter;


@RestController
@RequestMapping("/non-medical-objects")
@CrossOrigin(origins="*", allowedHeaders="*")
public class NonMedicalConnectedObjectController {

	@Autowired
	private NonMedicalConnectedObjectService nonMedicalConnectedObjectService;

	@GetMapping("")
	public List<NonMedicalConnectedObject> getNonMedicalConnectedObject() {
		return nonMedicalConnectedObjectService.findAll();
	}
	
	@PostMapping("/setting/{objectId}")
	public ObjectSetting saveNewSetting(@PathVariable Long objectId, @RequestBody ObjectSetting objectSetting) {
		return this.nonMedicalConnectedObjectService.saveNewSetting(objectId, objectSetting);
	}
	
	@PostMapping("/statistics/{objectId}")
	public NonMedicalObjectStatistic getStatisticsOnObject(@PathVariable Long objectId, @RequestBody ObjectStatisticFilter filter) {
		return this.nonMedicalConnectedObjectService.getStatistics(objectId, filter);
	}

}
