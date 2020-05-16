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
import com.skytech.skypiea.api.repository.TemperatureControllerScenarioRepository;
import com.skytech.skypiea.commons.entity.Room;
import com.skytech.skypiea.commons.entity.TemperatureControllerScenario;


@ComponentScan(basePackageClasses = {
		TemperatureControllerScenarioService.class,
		TemperatureControllerScenarioRepository.class,
		RoomRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")

public class TemperatureControllerScenarioServiceTest {
	
	
	@Autowired
	private TemperatureControllerScenarioService temperatureControllerScenarioService;
	@Autowired
	private TemperatureControllerScenarioRepository temperatureControllerScenarioRepository;
	@Autowired
	private RoomRepository roomRepository;
	
	@Test
	public void TestFindByRoom() {
		//Initialisation
		Room room = new Room();
		Room roomSave = roomRepository.save(room);
		TemperatureControllerScenario temp = new TemperatureControllerScenario(roomSave,25);
		TemperatureControllerScenario tempSave = temperatureControllerScenarioRepository.save(temp);
		//transition
		List<TemperatureControllerScenario> result = temperatureControllerScenarioService.findByRoom(tempSave.getRoom().getId());
		boolean condition;
		if (result.get(0).getTemperature() == 25 && result.get(0).getRoom() == room) {
			condition =true;
		}
		else{
			condition = false;
		}
		//VERIFICATION 
		assertTrue(condition);
		assertEquals(25, result.get(0).getTemperature());
		assertEquals(room, result.get(0).getRoom());
	}
	
	@Test
	public void TestDelete() {
		//Initialisation
		TemperatureControllerScenario temp = new TemperatureControllerScenario((long) 1);
		TemperatureControllerScenario tempSave = temperatureControllerScenarioRepository.save(temp);
		int size = temperatureControllerScenarioRepository.findAll().size();
		//transition
		temperatureControllerScenarioService.delete(tempSave.getId());
		int newSize = temperatureControllerScenarioRepository.findAll().size();
		//VERIFICATION 
		assertEquals(size-1,newSize);
	}
	
	@Test
	public void TestSave() {
		//Initialisation
		Room room = new Room();
		Room roomSave = roomRepository.save(room);
		TemperatureControllerScenario temp = new TemperatureControllerScenario(roomSave,25);
		//Transition
		TemperatureControllerScenario tempSave = temperatureControllerScenarioService.save(temp);
		//Verification
		assertEquals(temp.getTemperature(),tempSave.getTemperature());
		assertEquals(temp.getRoom(),tempSave.getRoom());
	}

}
