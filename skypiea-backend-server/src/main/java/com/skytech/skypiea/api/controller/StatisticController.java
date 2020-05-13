package com.skytech.skypiea.api.controller;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.StatisticService;
import com.skytech.skypiea.commons.statistic.FailureRate;
import com.skytech.skypiea.commons.statistic.StateRate;

@RestController
@RequestMapping("/statistics")
@CrossOrigin(origins="*", allowedHeaders="*")

public class StatisticController {

	@Autowired
	private StatisticService statisticService;
	
	@GetMapping("/failure-rate")
	public FailureRate getFailureRate() {
		return statisticService.getFailureRate();
	}
	
	@GetMapping("/state-rate/{dateBeginInString}/{dateEndInString}")
	public StateRate getStateRate(@PathVariable String dateBeginInString, @PathVariable String dateEndInString) {
		return statisticService.getStateRate(dateBeginInString, dateEndInString);
	}

}
