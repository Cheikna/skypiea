package com.skytech.skypiea.api.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.ElectronicTagRepository;
import com.skytech.skypiea.api.repository.HistoryMovingRepository;
import com.skytech.skypiea.api.repository.ResidentRepository;
import com.skytech.skypiea.commons.entity.ElectronicTag;
import com.skytech.skypiea.commons.entity.HistoryMoving;
import com.skytech.skypiea.commons.entity.Resident;


@ComponentScan(basePackageClasses = {
		ElectronicTagService.class,
		ElectronicTagRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")

public class ElectronicTagServiceTest {
	
	@Autowired
	private ElectronicTagService electronicTagService;
	@Autowired
	private ElectronicTagRepository electronicTagRepository;
	@Autowired
	private ResidentRepository residentRepository;
	@Autowired
	private HistoryMovingRepository historyMovingRepository;

	@org.junit.Before
	public void beforeTest() {
		electronicTagRepository.deleteAll();
	}
	
	@Test
	public void testFindAll() {
		//Initiating
		ElectronicTag etag = new ElectronicTag();
		electronicTagRepository.save(etag);
		//Transition
		List<ElectronicTag> etags = electronicTagService.findAll();
		//Verify that list is not null
		assertNotNull(etags);
		assertEquals(1, etags.size());
	}
	
	@Test
	public void testCreateAndUpdate() {
		// Check that there is no record of the etag we want to create
		ElectronicTag etag = new ElectronicTag(null, null);
		//Verify that repository is well empty
		assertEquals(0, electronicTagRepository.findAll().size());
		//Saving etag
		ElectronicTag savedetag= electronicTagService.createOrUpdate(etag);
		Long id = savedetag.getId();
		//Verification that id is the same than savedetag.getId()
		assertEquals(id, savedetag.getId());	
		//Update eTag to see if update method is OK
		Resident resident = new Resident(null, null, "guigui", null, null, null, null, null, null, null);
		//Saving resident to residentRepository
		Resident savedResident = residentRepository.save(resident);
		//Set resident to savedetag
		savedetag.setResident(savedResident);
		//update savedetag into new etag savedetag2
		ElectronicTag savedetag2= electronicTagService.createOrUpdate(savedetag);
		assertEquals("guigui", savedetag2.getResident().getLastName());	
	}

	@Test
	public void testDelete() {
		assertEquals(0, electronicTagRepository.findAll().size());

		ElectronicTag etag = new ElectronicTag((long) 1, null);
		// Check if the resident has been created
		ElectronicTag savedEtag = electronicTagService.createOrUpdate(etag);
		assertEquals(1, electronicTagRepository.findAll().size());		
		boolean isDeleted = electronicTagService.delete(savedEtag.getId());
		assertTrue(isDeleted);
		assertEquals(0, electronicTagRepository.findAll().size());
	}
	
	@Test
	public void testFindById() {
		//Check that repository is well empty first
		assertEquals(0, electronicTagRepository.findAll().size());
		//Electronic Tag initialisation
		ElectronicTag etag = new ElectronicTag();
		//Create and assign resident to etag
		Resident resident = new Resident(null, null, "guigui", null, null, null, null, null, null, null);
		etag.setResident(resident);
		//Save etag to repository
		ElectronicTag savedEtag = electronicTagRepository.save(etag);
		//Transition : Call FindById() method
		electronicTagService.findById(savedEtag.getId());
		assertEquals("guigui", savedEtag.getResident().getLastName());
	}
	
	@Test
	public void testFindHistoryMovingByResident() {
		//Initializing
		Resident resident = new Resident(null, null, "guigui", null, null, null, null, null, null, null);
		Resident savedResident = residentRepository.save(resident); 
		ElectronicTag etag = new ElectronicTag();
		etag.setResident(savedResident);
		HistoryMoving hm = new HistoryMoving(null, null, 10, 10, null);
		HashSet<HistoryMoving> movings = new HashSet<HistoryMoving>();
		movings.add(hm);
		HistoryMoving savedHm = historyMovingRepository.save(hm);
		etag.setHistoryMoving(movings);
		//Saving data object
		ElectronicTag savedEtag = electronicTagRepository.save(etag);
		//transition
		savedEtag = electronicTagService.findHistoryMovingByResident(savedResident.getId());
		//VERIFICATION 
		//Verify resident lastname
		assertEquals("guigui", savedResident.getLastName());
		//VerifyHistoryMoving data positions
		assertEquals(10, savedHm.getPosX());
		assertEquals(10, savedHm.getPosY());
		//verify etag
		//Create historymoving to get the first element from historyMoving Hashset
		HistoryMoving move = new ArrayList<>(savedEtag.getHistoryMoving()).get(0);
		//Compare 10 to posX and posY
		assertEquals(10, move.getPosX());
		assertEquals(10, move.getPosY());
	}

}