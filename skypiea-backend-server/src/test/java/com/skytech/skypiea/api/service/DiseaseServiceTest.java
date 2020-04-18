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

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.api.repository.DiseaseRepository;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.entity.Disease;
import com.skytech.skypiea.commons.enumeration.DiseaseType;

@ComponentScan(basePackageClasses = {
		DiseaseService.class,
		DiseaseRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class DiseaseServiceTest {
	
	@Autowired
	private DiseaseService diseaseService;
	@Autowired
	private DiseaseRepository diseaseRepository;
	@Autowired
	private ClientService clientService;
	
	Client client;
	
	@org.junit.Before
	public void beforeTest() {
		diseaseRepository.deleteAll();
		client = clientService.save(new Client(null, null, "lastNameTest", "firstNameTest", 85, "test@email.fr", 1, "streetName test", "zipCode", "cityTest", "0101010101"));
	}
	
	@Test
	public void testIfDiseaseIsSaved() {
		Disease disease1 = new Disease(null, null, DiseaseType.DIABETIC, null, null);
		assertEquals(disease1, diseaseRepository.save(disease1));
	}
	
	@Test
	public void testFindAll() {
		List<Disease> diseases = diseaseService.findAll();
		assertNotNull(diseases);
	}
	
	@Test
	public void testCreate() {
		// Check that there is no record of the client we want to create
		Disease disease = new Disease(null, null, DiseaseType.DIABETIC, null, null);
		assertThat(diseaseRepository.findAll(), hasSize(0));
		// Check if the client has been created
		Disease disease1 = diseaseService.save(disease);
		Long id = disease1.getId();
		assertThat(diseaseService.findAll(), hasSize(1));		
		// Update the client and save it
		disease1.setTypeOfDisease(DiseaseType.ALZHEIMER);
		Disease disease2 = diseaseService.save(disease1);
		// Check if a new record has not been created
		assertThat(diseaseRepository.findAll(), hasSize(1));
		// Check if the client with the update name has the same id than the previous one
		assertEquals(id, disease2.getId());		
	}
	
	@Test
	public void findNumberOfDiseaseByClientId() {
		System.out.println("client : " + client.getId());
		Disease disease = diseaseService.save(new Disease(null, null, DiseaseType.ALZHEIMER, null, null));
		disease.setClient(client);
		assertEquals(1, diseaseService.findNumberOfDiseaseByClientId(client.getId()));
		Disease disease1 = diseaseService.save(new Disease(null, null, DiseaseType.DIABETIC, null, null));
		disease1.setClient(client);
		assertEquals(2, diseaseService.findNumberOfDiseaseByClientId(client.getId()));
	}
	
	
}
