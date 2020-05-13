package com.skytech.skypiea.api.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.NonMedicalConnectedObjectRepository;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.entity.RealTimeEvent;
import com.skytech.skypiea.commons.enumeration.NonMedicalObjectType;
import com.skytech.skypiea.commons.enumeration.State;
import com.skytech.skypiea.commons.enumeration.Status;

@ComponentScan(basePackageClasses = {
		NonMedicalConnectedObjectRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class NonMedicalConnectedObjectServiceTest {
	
	@Autowired
	private NonMedicalConnectedObjectRepository nonMedicalConnectedObjectRepository;

	@Test
	public void testRealTimeEventDeletion() {

		try {
			/**
			 * Given
			 */
			// Step 1 : save a new object with a real time event
			NonMedicalConnectedObject obj1 = new NonMedicalConnectedObject();
			obj1.setNonMedicalObjectType(NonMedicalObjectType.ALARM_CLOCK);
			obj1.setIpAddress("00:sk:yp:ie:a");
			RealTimeEvent realTimeEvent = new RealTimeEvent();
			realTimeEvent.setCurrentState(State.BROKEN);
			obj1.setRealTimeEvent(realTimeEvent);
			
			/**
			 * When
			 */
			NonMedicalConnectedObject savedObj = nonMedicalConnectedObjectRepository.save(obj1);			
			// Step 2 : Retrieve the object with its ID
			Long savedId = savedObj.getId();
			NonMedicalConnectedObject obj2 = nonMedicalConnectedObjectRepository.findById(savedId).get();			
			// Step 3 : set the associated real time event to null
			obj2.setRealTimeEvent(null);			
			// Step 4 : save the object
			nonMedicalConnectedObjectRepository.save(obj2);			
			// Step 5 : retrieve the object once again
			NonMedicalConnectedObject obj3 = nonMedicalConnectedObjectRepository.findById(savedId).get();
			
			/**
			 * Then
			 */
			// Step 6 : Check if its RealTimeEvent object is equal to null
			assertNull(obj3.getRealTimeEvent());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testSave() {
		// préparation du test
		NonMedicalConnectedObject obj1 = new NonMedicalConnectedObject();  
		obj1.setStatus(Status.ON); 
		NonMedicalConnectedObject savedObj = nonMedicalConnectedObjectRepository.save(obj1);
		obj1.setStatus(Status.OFF);
		
		// on vérifie que la valeur a bien été enregistré. 
		assertEquals(Status.OFF, savedObj.getStatus());
		
		//TODO: test dans le cas contraire 
		//TODO: mocker BD pour test
		
	}
	


}
