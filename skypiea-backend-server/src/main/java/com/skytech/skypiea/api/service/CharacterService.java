package com.skytech.skypiea.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.commons.entity.Character;
import com.skytech.skypiea.api.repository.CharacterRepository;

@Service
public class CharacterService {
	
	@Autowired
	private CharacterRepository characterRepository;
	
	public List<Character> findAll(){
		List<Character> characters = this.characterRepository.findAll();
		return characters;
	}
	
	public Character createOrUpdate(Character character) {
		return characterRepository.save(character);
	}
	
	public boolean delete(Long id) {
		characterRepository.deleteById(id);
		// if every thing went well
		return true;
	}

}
