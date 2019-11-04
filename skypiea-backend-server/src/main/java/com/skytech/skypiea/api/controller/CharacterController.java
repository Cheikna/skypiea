package com.skytech.skypiea.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skytech.skypiea.api.service.CharacterService;
import com.skytech.skypiea.commons.entity.Character;

@RestController
@RequestMapping("/api/characters")
@CrossOrigin(origins="*", allowedHeaders="*")
public class CharacterController {
	
	@Autowired
	private CharacterService characterService;
	
	@GetMapping("")
	public List<Character> getCharacters() {
		return characterService.findAll();
	}
	
	@PostMapping("")
	public Character createUser(@RequestBody Character character){
		return characterService.createOrUpdate(character);
	}
	
	@DeleteMapping("/{id}")
	public boolean deleteUser(@PathVariable Long id){
		return characterService.delete(id);
	}
	
	@GetMapping("/{id}")
	public Character getById(@PathVariable Long id) {
		return characterService.findById(id);
	}
	
	

}
