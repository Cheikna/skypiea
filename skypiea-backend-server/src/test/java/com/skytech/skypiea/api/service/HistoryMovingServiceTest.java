package com.skytech.skypiea.api.service;

import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.HistoryMovingRepository;
import com.skytech.skypiea.commons.entity.HistoryMoving;


@ComponentScan(basePackageClasses = {
		HistoryMovingService.class,
		HistoryMovingRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")

public class HistoryMovingServiceTest {
	
	@Autowired
	private HistoryMovingService historyMovingService;
	@Autowired
	private HistoryMovingRepository historyMovingRepository;
	
	@org.junit.Before
	public void beforeTest() {
		historyMovingRepository.deleteAll();
	}
	

	@Test
	public void testFindAll() {
		List<HistoryMoving> movings = historyMovingService.findAll();
		assertNotNull(movings);
	}
	
	@Test
	public void testCreateAndUpdate() {
		// Check that there is no record of the history moving we want to create
		HistoryMoving historyMoving = new HistoryMoving();
		assertThat(historyMovingRepository.findAll(), hasSize(0));
		// Check if the history moving has been created
		HistoryMoving savedhm1= historyMovingService.createOrUpdate(historyMoving);
		Long id = savedhm1.getId();
		assertThat(historyMovingRepository.findAll(), hasSize(1));		
		// Update the historymoving and save it
		//savedhm1.setId((long) 1);;
		HistoryMoving savedhm2 = historyMovingService.createOrUpdate(savedhm1);
		// Check if a new record has not been created
		assertThat(historyMovingRepository.findAll(), hasSize(1));
		// Check if the history moving with the update name has the same id than the previous one
		assertEquals(id, savedhm2.getId());		
	}

	@Test
	public void testDelete() {
		assertThat(historyMovingRepository.findAll(), hasSize(0));

		HistoryMoving historyMoving = new HistoryMoving((long) 1, null, 0, 0, null);
		// Check if the history moving has been created
		HistoryMoving savedhm = historyMovingService.createOrUpdate(historyMoving);
		assertThat(historyMovingRepository.findAll(), hasSize(1));		
		boolean isDeleted = historyMovingService.delete(savedhm.getId());
		assertTrue(isDeleted);
		assertThat(historyMovingRepository.findAll(), hasSize(0));
	}
	
	@Test
	public void testFindById() {
		//Check that repository is well empty
		assertThat(historyMovingRepository.findAll(), hasSize(0));
		//History Moving Initialisation
		HistoryMoving historyMoving1 = new HistoryMoving(null, null, 10, 10, null);
		//History Moving Saved
		HistoryMoving savedhm1 = historyMovingRepository.save(historyMoving1);
		//Transition - Call method
		HistoryMoving searchedhm1 = historyMovingService.findById(savedhm1.getId());
		//Creating boolean to compare values from savedhm to values from searchedhm
		//Return true if values are the same
		//Else return false
		boolean condition;
		if(searchedhm1.getPosX() == 10 && searchedhm1.getPosY() == 10)
		{
			condition = true;
		}
		else {condition = false;}
		//Verify if condition is true and if data equals
		assertTrue(condition);
		assertEquals(10, searchedhm1.getPosX());
		assertEquals(10, searchedhm1.getPosY());
	}

}