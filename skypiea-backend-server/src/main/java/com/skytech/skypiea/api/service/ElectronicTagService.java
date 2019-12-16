package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.entity.ElectronicTag;
import com.skytech.skypiea.api.repository.ElectronicTagRepository;

@Service
public class ElectronicTagService {
	
	@Autowired
	private ElectronicTagRepository electronicTagRepository;
	
	public List<ElectronicTag> findAll(){
		List<ElectronicTag> eTag = this.electronicTagRepository.findAll();
		return eTag;
	}
	
	public ElectronicTag createOrUpdate(ElectronicTag eTag) {
		return electronicTagRepository.save(eTag);
	}
	
	public boolean delete(Long tagId) {
		electronicTagRepository.deleteById(tagId);
		// if every thing went well
		return true;
	}
	
	public ElectronicTag findById(Long id) {
		ElectronicTag eTag = null;
		if(id >= 1) {			
			try {
				Optional<ElectronicTag> optionalETag = electronicTagRepository.findById(id);
				eTag = optionalETag.get();				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return eTag;
	}

}
