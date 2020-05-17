package com.skytech.skypiea.api.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.FailureFactRepository;
import com.skytech.skypiea.commons.entity.FailureFact;


@Service
public class FailureFactService {
	private static Logger log = LoggerFactory.getLogger(FailureFactService.class);

	@Autowired
	private FailureFactRepository failureFactRepository;


	public int findAllOccurr(String dateBeginStr, String dateEndStr) {
		int allOccurrences = 0;
		try {
			List<FailureFact> failureFacts = failureFactRepository.findAll();
			for(int i=0; i<failureFacts.size(); i++) {
				FailureFact failureFact = failureFacts.get(i);
				Timestamp startDate = failureFact.getStartDate();
				Timestamp endDate = failureFact.getEndDate();
				Timestamp begin = Timestamp.valueOf(dateBeginStr);
				Timestamp end = Timestamp.valueOf(dateEndStr);

				if (begin.before(startDate) && end.after(endDate)) {
					allOccurrences++;
				}

			}

		} catch (Exception e) {
			log.error(e.getMessage());
		}

		return allOccurrences;
	}

	public List<FailureFact> findAll() {
		List<FailureFact> failureFacts = failureFactRepository.findAll();
		return failureFacts;
	}

	public List<FailureFact> findAllByDate(String dateBeginStr, String dateEndStr) {

		List<FailureFact> failureFactsFinal = failureFactRepository.findAll();
		List<FailureFact> failureFacts = failureFactRepository.findAll();
		for(int i=0; i<failureFacts.size(); i++) {
			FailureFact failureFact = failureFacts.get(i);
			Timestamp startDate = failureFact.getStartDate();
			Timestamp endDate = failureFact.getEndDate();
			Timestamp begin = Timestamp.valueOf(dateBeginStr);
			Timestamp end = Timestamp.valueOf(dateEndStr);

			if (begin.before(startDate) && end.after(endDate)) {

				FailureFact failureFactItem = new FailureFact(failureFact.getId(), failureFact.getVersion(), failureFact.getObjectType(), failureFact.getMacAddress(), failureFact.getStartDate(), failureFact.getEndDate());
				failureFactItem.setObjectType(failureFact.getObjectType());
				failureFactItem.setMacAddress(failureFact.getMacAddress());
				failureFactItem.setStartDate(failureFact.getStartDate());
				failureFactItem.setEndDate(failureFact.getEndDate());
				failureFactsFinal.add(failureFactItem);
			}

		}
		return failureFactsFinal;
	}
	
	
	public Map<String, Integer> findOccurPerObject(String dateBeginStr, String dateEndStr) {
		Map<String, Integer> occurPerObject = new HashMap<>();
		List<FailureFact> failureFacts = failureFactRepository.findAll();
		for(int i=1; i<failureFacts.size(); i++) {
			FailureFact failureFact = failureFacts.get(i);
			FailureFact failureFactPast = failureFacts.get(i-1);
			Timestamp startDate = failureFact.getStartDate();
			Timestamp endDate = failureFact.getEndDate();
			Timestamp begin = Timestamp.valueOf(dateBeginStr);
			Timestamp end = Timestamp.valueOf(dateEndStr);

			if (begin.before(startDate) && end.after(endDate)) {
				//int count=0;
				int occur=1;
				if(failureFact.getMacAddress()==failureFactPast.getMacAddress()) {
					occur++;
					occurPerObject.put(failureFact.getMacAddress(),occur);
				}
				else {
					occurPerObject.put(failureFact.getMacAddress(), occur);
				}
			}

		}
		return occurPerObject;
	}
	
}
