package com.skytech.skypiea.api.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.FailureFactRepository;
import com.skytech.skypiea.commons.entity.FailureFact;
import com.skytech.skypiea.commons.entity.Room;


@Service
public class FailureFactService {
	private static Logger log = LoggerFactory.getLogger(FailureFactService.class);

	@Autowired
	private FailureFactRepository failureFactRepository;

	@Transactional
	public List<FailureFact> findAllByDate(String dateBeginStr, String dateEndStr) {
		try {
			List<FailureFact> failureFacts = this.failureFactRepository.findAll();

			return failureFacts;
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ArrayList<FailureFact>();
	}

	public boolean findByMacAddress(String macAddress) {
		try {
			List<FailureFact> failureFacts = failureFactRepository.findAll();
			for(int i=0; i<failureFacts.size(); i++) {
				FailureFact failureFact = failureFacts.get(i);
				String addressMac = failureFact.getMacAddress();
				if (addressMac == macAddress) {
					return true;
				}
			}

		} catch (Exception e) {
			log.error(e.getMessage());
		}

		return false;
	}

	public int findOccurr(String dateBeginStr, String dateEndStr, String macAddress) {
		int occurrence = 0;
		try {
			List<FailureFact> failureFacts = failureFactRepository.findAll();
			for(int i=0; i<failureFacts.size(); i++) {
				FailureFact failureFact = failureFacts.get(i);
				Timestamp startDate = failureFact.getStartDate();
				Timestamp endDate = failureFact.getEndDate();
				Timestamp begin = Timestamp.valueOf(dateBeginStr);
				Timestamp end = Timestamp.valueOf(dateEndStr);
				String addressMac = failureFact.getMacAddress();

				if (begin.before(startDate) && end.after(endDate)) {
					if (addressMac == macAddress) {
						occurrence++;
					}

				}

			}

		} catch (Exception e) {
			log.error(e.getMessage());
		}

		return occurrence;
	}

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
	
	

}
