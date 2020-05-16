package com.skytech.skypiea.api.service;

import static org.mockito.BDDMockito.given;

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

import com.skytech.skypiea.api.repository.BulbScenarioRepository;
import com.skytech.skypiea.commons.entity.BulbScenario;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.Room;

@RunWith(MockitoJUnitRunner.class)
public class BulbScenarioServiceTest {
	
	@Mock
	BulbScenarioRepository bulbScenarioRepository;
	@Mock 
	Room room; 
	@Mock
	NonMedicalConnectedObject nonMedicalConnectedObject; 
	@InjectMocks
	BulbScenarioService bulbScenarioService; 
	

	@Test
	public void testFindByRoom() {
		//Préparation du test
		long id = 1; 
		List<BulbScenario> bulbScenarios = new ArrayList<>();
		bulbScenarios.add(new BulbScenario(id, nonMedicalConnectedObject, room, "ON", new Timestamp(new Date().getTime()), new Timestamp(new Date().getTime()), "ROUGE"));
		given(bulbScenarioRepository.findByRoom(room.getId())).willReturn(bulbScenarios);
		
		// création d'une liste - information récupérée par le repo
		List<BulbScenario> testRepoBulbScenarios = new ArrayList<>();
		bulbScenarioRepository.findByRoom(room.getId()).forEach(testRepoBulbScenarios::add);
	
		// création d'une liste - information récupérée par le service
		List<BulbScenario> testServiceBulbScenarios = new ArrayList<>();
		try {
			testServiceBulbScenarios= bulbScenarioService.findByRoom(room.getId());
			
		} catch (Exception e) {
			//Vérifier l’absence d’exception lors de l’appel à la classe de service (role du catch)
			System.out.println("Méthode FindByRoom() mal implémenté");
		}
		
		// S'assurer que la liste renvoyée n'est pas nulle
		Assert.assertNotEquals(testServiceBulbScenarios, new ArrayList<BulbScenario>());
		//Comparer le résultat de l'exécution du repository et du service
		Assert.assertEquals(testServiceBulbScenarios, testRepoBulbScenarios );
		
	}
	
	

}
