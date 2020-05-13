package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.entity.Resident;
import com.skytech.skypiea.api.repository.ResidentRepository;

@Service
public class ResidentService {
	
	private static Logger log = LoggerFactory.getLogger(ResidentService.class);
	
	@Autowired
	private ResidentRepository residentRepository;
	
	public List<Resident> findAll(){
		List<Resident> residents = null;
		try {
			residents = this.residentRepository.findAll();
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return residents;
	}
	
	public Resident createOrUpdate(Resident resident) {
		return residentRepository.save(resident);
	}
	
	public boolean delete(Long id) {
		residentRepository.deleteById(id);
		// if every thing went well
		return true;
	}
	
	public Resident findById(Long id) {
		Resident resident = null;
		if(id >= 1) {			
			try {
				Optional<Resident> optionalResident = residentRepository.findById(id);
				if(optionalResident.isPresent()) {
					resident = optionalResident.get();
				}
				else {return resident;}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return resident;
	}

}
