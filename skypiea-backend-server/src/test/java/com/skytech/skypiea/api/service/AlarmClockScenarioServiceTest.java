package com.skytech.skypiea.api.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;




import com.skytech.skypiea.api.repository.AlarmClockScenarioRepository;
import com.skytech.skypiea.commons.entity.AlarmClockScenario;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Room;


import static org.mockito.BDDMockito.given;

@RunWith(MockitoJUnitRunner.class)
public class AlarmClockScenarioServiceTest {
	
	@Mock
	AlarmClockScenarioRepository alarmClockScenarioRepository;
	@Mock 
	Room room; 
	@Mock
	NonMedicalConnectedObject nonMedicalConnectedObject; 
	@InjectMocks
	AlarmClockScenarioService alarmClockScenarioService; 
	
  

	@Test
	public void testFindByRoom() {
		//Préparation du test
		long id = 1; 
		List<AlarmClockScenario> alarmClockScenarios = new ArrayList<>();
		alarmClockScenarios.add(new AlarmClockScenario(id, nonMedicalConnectedObject, room, "ON", new Timestamp(new Date().getTime())));
		given(alarmClockScenarioRepository.findByRoom(room.getId())).willReturn(alarmClockScenarios);
		
		// création d'une liste - information récupérée par le repo
		List<AlarmClockScenario> testRepoAlarmClockScenarios = new ArrayList<>();
		alarmClockScenarioRepository.findByRoom(room.getId()).forEach(testRepoAlarmClockScenarios::add);
	
		// création d'une liste - information récupérée par le service
		List<AlarmClockScenario> testServiceAlarmClockScenarios = new ArrayList<>();
		try {
			testServiceAlarmClockScenarios= alarmClockScenarioService.findByRoom(room.getId());
			
		} catch (Exception e) {
			//Vérifier l’absence d’exception lors de l’appel à la classe de service (role du catch)
			System.out.println("Méthode FindByRoom() mal implémenté");
		}
		
		// S'assurer que la liste renvoyée n'est pas nulle
		Assert.assertNotEquals(testServiceAlarmClockScenarios, new ArrayList<AlarmClockScenario>());
		//Comparer le résultat de l'exécution du repository et du service
		Assert.assertEquals(testServiceAlarmClockScenarios, testRepoAlarmClockScenarios );
		
	}
	
	

}
