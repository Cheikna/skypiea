package com.skytech.skypiea.api.service;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.domain.Example;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.CharacterRepository;
import com.skytech.skypiea.commons.entity.Character;

@ComponentScan(basePackageClasses = {
		CharacterService.class,
		CharacterRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
public class CharacterServiceTest {	

	@Autowired
	private CharacterService characterService;
	@Autowired
	private CharacterRepository characterRepository;

	@Test
	public void testFindAll() {
		List<Character> characters = characterService.findAll();
		assertNotNull(characters);
	}

	@Test
	public void testCreateAndUpdate() {
		// Check that there is no record of the character we want to create
		Character character = new Character("test");
		assertThat(characterRepository.findAll(), hasSize(0));

		// Check if the character has been created
		Character savedCharacter1 = characterService.createOrUpdate(character);
		Long id = savedCharacter1.getId();
		assertThat(characterRepository.findAll(), hasSize(1));		
		// Update the character and save it
		savedCharacter1.setName("change");
		Character savedCharacter2 = characterService.createOrUpdate(savedCharacter1);
		// Check if a new record has not been created
		assertThat(characterRepository.findAll(), hasSize(1));
		// Check if the Character with the update name has the same id than the previous one
		assertEquals(id, savedCharacter2.getId());		
	}

	@Test
	public void testDelete() {
		assertThat(characterRepository.findAll(), hasSize(0));

		Character character = new Character("test");
		// Check if the character has been created
		Character savedCharacter = characterService.createOrUpdate(character);
		assertThat(characterRepository.findAll(), hasSize(1));		
		boolean isDeleted = characterService.delete(savedCharacter.getId());
		assertTrue(isDeleted);
		assertThat(characterRepository.findAll(), hasSize(0));
	}

}
