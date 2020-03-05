package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.entity.Resident;
import com.skytech.skypiea.api.repository.ResidentRepository;

@Service
public class ResidentService {
	
	@Autowired
	private ResidentRepository residentRepository;
	
	public List<Resident> findAll(){
		List<Resident> residents = this.residentRepository.findAll();
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
