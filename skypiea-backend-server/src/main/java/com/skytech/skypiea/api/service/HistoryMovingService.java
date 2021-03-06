package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.entity.HistoryMoving;
import com.skytech.skypiea.api.repository.HistoryMovingRepository;

@Service
public class HistoryMovingService {
	@Autowired
	private HistoryMovingRepository historyMovingRepository;
	
	public List<HistoryMoving> findAll(){
		List<HistoryMoving> historyMoving = this.historyMovingRepository.findAll();
		return historyMoving;
	}
	
	public HistoryMoving createOrUpdate(HistoryMoving historyMoving) {
		return historyMovingRepository.save(historyMoving);
	}
	
	public boolean delete(Long id) {
		historyMovingRepository.deleteById(id);
		// if every thing went well
		return true;
	}
	
	public HistoryMoving findById(Long id) {
		HistoryMoving historyMoving = null;
		if(id >= 1) {			
			try {
				Optional<HistoryMoving> optionalHistoryMoving = historyMovingRepository.findById(id);
				if(optionalHistoryMoving.isPresent()) {
					historyMoving = optionalHistoryMoving.get();
				}
				else {return historyMoving;}				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return historyMoving;
	}

}
