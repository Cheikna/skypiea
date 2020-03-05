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

import com.skytech.skypiea.api.repository.ResidentRepository;
import com.skytech.skypiea.commons.entity.Resident;


@ComponentScan(basePackageClasses = {
		ResidentService.class,
		ResidentRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")

public class ResidentServiceTest {
	
	@Autowired
	private ResidentService residentService;
	@Autowired
	private ResidentRepository residentRepository;

	@org.junit.Before
	public void beforeTest() {
		residentRepository.deleteAll();
	}
	
	@Test
	public void testFindAll() {
		//Transition
		List<Resident> residents = residentService.findAll();
		//Verify
		assertNotNull(residents);
	}
	
	@Test
	public void testCreateAndUpdate() {
		// Check that there is no record of the resident we want to create
		Resident resident = new Resident(null, null, "test", null, null, null, null, null, null, null);
		assertThat(residentRepository.findAll(), hasSize(0));
		// Check if the resident has been created
		Resident savedResident1= residentService.createOrUpdate(resident);
		Long id = savedResident1.getId();
		assertThat(residentRepository.findAll(), hasSize(1));		
		// Update the resident and save it
		savedResident1.setLastName("change");
		Resident savedResident2 = residentService.createOrUpdate(savedResident1);
		// Check if a new record has not been created
		assertThat(residentRepository.findAll(), hasSize(1));
		// Check if the resident with the update name has the same id than the previous one
		assertEquals(id, savedResident2.getId());		
	}

	@Test
	public void testDelete() {
		assertThat(residentRepository.findAll(), hasSize(0));

		Resident resident = new Resident(null, null, "test", null, null, null, null, null, null, null);
		// Check if the resident has been created
		Resident savedResident = residentService.createOrUpdate(resident);
		assertThat(residentRepository.findAll(), hasSize(1));		
		boolean isDeleted = residentService.delete(savedResident.getId());
		assertTrue(isDeleted);
		assertThat(residentRepository.findAll(), hasSize(0));
	}
	
	@Test
	public void testFindById() {
		//Check that repository is well empty
		assertThat(residentRepository.findAll(), hasSize(0));
		//Resident Initialisation
		Resident resident1 = new Resident(null, null, "guigui", null, null, null, null, null, null, null);
		Resident resident2 = new Resident(null, null, "cheikna", null, null, null, null, null, null, null);
		Resident resident3 = new Resident(null, null, "faizaan", null, null, null, null, null, null, null);
		//Resident Saving
		Resident savedResident1 = residentRepository.save(resident1);
		Resident savedResident2 = residentRepository.save(resident2);
		Resident savedResident3 = residentRepository.save(resident3);
		//Transition - Call method
		Resident searchedResident1 = residentService.findById(savedResident1.getId());
		Resident searchedResident2 = residentService.findById(savedResident2.getId());
		Resident searchedResident3 = residentService.findById(savedResident3.getId());
		residentRepository.findAll();
		//Verify last name
		assertEquals("guigui", searchedResident1.getLastName());
		assertEquals("cheikna", searchedResident2.getLastName());
		assertEquals("faizaan", searchedResident3.getLastName());
	}

}
