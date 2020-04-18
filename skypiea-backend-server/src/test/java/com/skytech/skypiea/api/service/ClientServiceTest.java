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
import com.skytech.skypiea.api.repository.ResidentRepository;
import com.skytech.skypiea.commons.entity.Client;

@ComponentScan(basePackageClasses = {
		ClientService.class,
		ClientRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class ClientServiceTest {
	
	@Autowired
	private ClientService clientService;
	@Autowired
	private ClientRepository clientRepository;
	
	
	@org.junit.Before
	public void beforeTest() {
		clientRepository.deleteAll();
	}
	
	@Test
	public void testIfClientIsSaved() {
		Client client1 = new Client(null, null, "lastNameTest", "firstNameTest", 85, "test@email.fr", 1, "streetName test", "zipCode", "cityTest", "0101010101");
		assertEquals(client1, clientRepository.save(client1));
	}
	
	@Test
	public void testFindAll() {
		List<Client> clients = clientService.findAll();
		assertNotNull(clients);
	}
	
	@Test
	public void testCreate() {
		// Check that there is no record of the client we want to create
		Client client = new Client(null, null, null, "firstNameTest", 85, "test@email.fr", 1, "streetName test", "zipCode", "cityTest", "0101010101");
		assertThat(clientRepository.findAll(), hasSize(0));
		// Check if the client has been created
		Client client1 = clientService.save(client);
		Long id = client1.getId();
		assertThat(clientService.findAll(), hasSize(1));		
		// Update the client and save it
		client1.setLastName("lastNameTest");
		Client client2 = clientService.save(client1);
		// Check if a new record has not been created
		assertThat(clientRepository.findAll(), hasSize(1));
		// Check if the client with the update name has the same id than the previous one
		assertEquals(id, client2.getId());		
	}
	
	
	
}
