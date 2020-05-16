package com.skytech.skypiea.api.service;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.RoomRepository;
import com.skytech.skypiea.api.repository.ShutterScenarioRepository;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.entity.ShutterScenario;
import com.skytech.skypiea.commons.entity.TemperatureControllerScenario;


@ComponentScan(basePackageClasses = {
		ShutterScenarioService.class,
		ShutterScenarioRepository.class,
		RoomRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")

public class ShutterScenarioServiceTest {
	
	@Autowired
	private ShutterScenarioService shutterScenarioService;
	@Autowired
	private ShutterScenarioRepository shutterScenarioRepository;
	@Autowired
	private RoomRepository roomRepository;
	
	@Test
	public void TestFindByRoom() {
		//Initialisation
		Room room = new Room();
		Room roomSave = roomRepository.save(room);
		ShutterScenario shut = new ShutterScenario( roomSave, "opened");
		ShutterScenario shutSave = shutterScenarioRepository.save(shut);
		//transition
		List<ShutterScenario> result = shutterScenarioService.findByRoom(shutSave.getRoom().getId());
		boolean condition;
		if (result.get(0).getRoom() == room && result.get(0).getPosition() == "opened") {
			condition =true;
		}
		else{
			condition = false;
		}
		//VERIFICATION 
		assertTrue(condition);
		assertEquals("opened", result.get(0).getPosition());
		assertEquals(room, result.get(0).getRoom());
	}
	
	@Test
	public void TestDelete() {
		//Initialisation
		ShutterScenario shut = new ShutterScenario ( (long) 1);
		ShutterScenario shutSave = shutterScenarioRepository.save(shut);
		int size = shutterScenarioRepository.findAll().size();
		//transition
		shutterScenarioService.delete(shutSave.getId());
		int newSize = shutterScenarioRepository.findAll().size();
		//VERIFICATION 
		assertEquals(size-1,newSize);
	}
	
	@Test
	public void TestSave() {
		//Initialisation
		Room room = new Room();
		Room roomSave = roomRepository.save(room);
		ShutterScenario shut = new ShutterScenario( roomSave, "opened");
		//Transition
		ShutterScenario shutSave = shutterScenarioService.save(shut);
		//Verification
		assertEquals(shut.getPosition(),shutSave.getPosition());
		assertEquals(shut.getRoom(),shutSave.getRoom());
	}

}
