package com.skytech.skypiea.api.controller;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.FailureFactService;
import com.skytech.skypiea.api.service.StatisticService;
import com.skytech.skypiea.commons.entity.FailureFact;
import com.skytech.skypiea.commons.statistic.FailureRate;
import com.skytech.skypiea.commons.statistic.StateRate;

@RestController
@RequestMapping("/statistics")
@CrossOrigin(origins="*", allowedHeaders="*")

public class StatisticController {

	@Autowired
	private StatisticService statisticService;
	@Autowired
	private FailureFactService failureFactService;
	
	@GetMapping("/failure-rate")
	public FailureRate getFailureRate() {
		return statisticService.getFailureRate();
	}
	
	@GetMapping("/state-rate/{dateBeginInString}/{dateEndInString}")
	public StateRate getStateRate(@PathVariable String dateBeginInString, @PathVariable String dateEndInString) {
		return statisticService.getStateRate(dateBeginInString, dateEndInString);
	}
	
	@GetMapping("/all-occurr/{dateBegin}/{dateEnd}")
	public  int getAllOccurr(@PathVariable String dateBegin, @PathVariable String dateEnd) {
		return failureFactService.findAllOccurr(dateBegin, dateEnd);
	}
	
	/*@GetMapping("/occurr/{dateBegin}/{dateEnd}")
	public  int findOccurr(@PathVariable String dateBegin, @PathVariable String dateEnd, String macAddress) {
		return failureFactService.findOccurr(dateBegin, dateEnd, macAddress);
	}*/
	
	@GetMapping("/findAll")
	public  List<FailureFact> findAll() {
		return failureFactService.findAll();
	}
	
	@GetMapping("/findAllByDate/{dateBegin}/{dateEnd}")
	public  List<FailureFact> findAllByDate(@PathVariable String dateBegin, @PathVariable String dateEnd) {
		return failureFactService.findAllByDate(dateBegin, dateEnd);
	}
	
	@GetMapping("/findOccurPerObject/{dateBegin}/{dateEnd}")
	public  Map<String, Integer> findOccurPerObject(@PathVariable String dateBegin, @PathVariable String dateEnd) {
		return failureFactService.findOccurPerObject(dateBegin, dateEnd);
	}
	
	/*@GetMapping("/findByMacAddress")
	public  boolean findByMacAddress() {
	 return failureFactService.findByMacAddress();
	}*/
	

}
