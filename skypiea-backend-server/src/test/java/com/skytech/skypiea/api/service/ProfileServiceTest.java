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

import com.skytech.skypiea.api.repository.ProfileRepository;
import com.skytech.skypiea.commons.entity.Client;
import com.skytech.skypiea.commons.entity.Profile;
import com.skytech.skypiea.commons.util.ProfileCriteriaJsonParameter;

@ComponentScan(basePackageClasses = {
		ProfileService.class,
		ProfileRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class ProfileServiceTest {
	
	private static String criteriaModel = "{\"income\":\"difficulties\",\"smoker\":\"false\",\"cook\":\"alone\",\"cinephile\":\"false\",\"sedentary\":\"true\",\"sporty\":\"false\"}";
	
	@Autowired
	private ProfileService profileService;
	@Autowired
	private ProfileRepository profileRepository;
	@Autowired
	private ClientService clientService;
	
	Client client;
	
	@org.junit.Before
	public void beforeTest() {
		profileRepository.deleteAll();
		client = clientService.save(new Client(null, null, "lastNameTest", "firstNameTest", 85, "test@email.fr", 1, "streetName test", "zipCode", "cityTest", "0101010101", 0));
	}
	
	@Test
	public void testIfDiseaseIsSaved() {
		Profile profile = new Profile(null, null, null, null);
		assertEquals(profile, profileRepository.save(profile));
	}
	
	@Test
	public void testFindAll() {
		List<Profile> profiles = profileService.findAll();
		assertNotNull(profiles);
	}
	
	@Test
	public void testCreate() {
		// Check that there is no record of the client we want to create
		Profile profile = new Profile(null, null, null, null);
		assertThat(profileRepository.findAll(), hasSize(0));
		// Check if the client has been created
		ProfileCriteriaJsonParameter profileCriteriaJsonParameter = new ProfileCriteriaJsonParameter(profile, 2, "true", 3,
				1776, "true", 3, true);
		Profile profile1 = profileService.save(profileCriteriaJsonParameter);
		Long id = profile1.getId();
		assertThat(profileService.findAll(), hasSize(1));		
		// Update the client and save it
		profile1.setClient(client);
		Profile profile2 = profileService.save(profileCriteriaJsonParameter);
		// Check if a new record has not been created
		assertThat(profileRepository.findAll(), hasSize(1));
		// Check if the client with the update name has the same id than the previous one
		assertEquals(id, profile2.getId());	
	}
	
	@Test
	public void createJsonForCriteriaTest() {
		Profile profile = new Profile(null, null, null, null);
		String critere = profileService.createJsonForCriteria(new ProfileCriteriaJsonParameter(profile, 2, "false", 4, 200, "true", 2, true));
		assertEquals(criteriaModel, critere);
	}
	
	@Test
	public void isSportyTest() {
		assertEquals("false", profileService.isSporty(criteriaModel));
	}
	
	@Test
	public void isSmokerTest() {
		assertEquals("false", profileService.isSmoker(criteriaModel));
	}
	
	@Test
	public void isCookerTest() {
		assertEquals("alone", profileService.isCooker(criteriaModel));
	}
	
	@Test
	public void isCinephileTest() {
		assertEquals("false", profileService.isCinephile(criteriaModel));
	}
	
	@Test
	public void isSedentaryTest() {
		assertEquals("true", profileService.isSedentary(criteriaModel));
	}
	
	@Test
	public void getIncomeTest() {
		assertEquals("difficulties", profileService.getIncome(criteriaModel));
	}
	
	@Test
	public void getProfileCriteriaForClientTest() {
		Profile profile = new Profile(null, null, client, null);
		ProfileCriteriaJsonParameter profileCriteriaJsonParameter = new ProfileCriteriaJsonParameter(profile, 2, "false", 4, 200, "true", 2, true);
		profileService.save(profileCriteriaJsonParameter);
		assertEquals(criteriaModel, profileService.getProfileCriteriaForClient(client.getId()));
	}
	
	@Test
	public void getPointsForIncomeTest() {
		Profile p = new Profile(new Long(1), new Long(0), client, criteriaModel);
		assertEquals(0, profileService.getPointsForIncome(client.getId()));
	}
}
