package com.skytech.skypiea.api.service;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.ClientRepository;
import com.skytech.skypiea.commons.entity.Client;


@ComponentScan(basePackageClasses = {
		Client.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class ClientServiceTest {
	
	@Autowired
	private ClientRepository clientRepository;
	
	@Test
	public void testIfClientIsSaved() {
		Client client1 = new Client("lastNameTest", "firstNameTest", 85, "test@email.fr", 1, "streetName test", "zipCode", "cityTest", "0101010101");
		assertEquals(client1, clientRepository.save(client1));
	}
	
}
