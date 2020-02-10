package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.skytech.skypiea.commons.entity.ElectronicTag;
import com.skytech.skypiea.api.repository.ElectronicTagRepository;

@Service
public class ElectronicTagService {
	
	@Autowired
	private ElectronicTagRepository electronicTagRepository;
	
	public List<ElectronicTag> findAll(){
		return electronicTagRepository.findAll();
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
	
	public ElectronicTag findHistoryMovingByResident(@PathVariable Long id)
	{
		ElectronicTag electronicTag = null;
		System.out.println(id);
		List<ElectronicTag> tags = electronicTagRepository.findAll();
		if(tags != null) {
			for(ElectronicTag tag: tags) {
				System.out.println(tag.getId() + " " + tag.getResident().getId());
				if(tag.getResident().getId() == id) {
					electronicTag = tag;
					break;
				}
			}
		}
		return electronicTag;
	}

}
