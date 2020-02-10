package com.skytech.skypiea.api.service;

import static org.hamcrest.CoreMatchers.hasItems;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.sql.Timestamp;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import com.skytech.skypiea.api.repository.ApplicationParameterRepository;
import com.skytech.skypiea.commons.entity.ApplicationParameter;
import com.skytech.skypiea.commons.enumeration.Parameter;
import com.skytech.skypiea.commons.util.DateUtil;

@ComponentScan(basePackageClasses = {
		ApplicationParameterService.class,
		ApplicationParameterRepository.class
})
@RunWith(SpringRunner.class)
@DataJpaTest
@TestPropertySource(locations="classpath:application-test.properties")
public class ApplicationParameterServiceTest {
	
	@Autowired
	private ApplicationParameterRepository applicationParameterRepository;
	
	@Autowired
	private ApplicationParameterService applicationParameterService;

	@Test
	public void testFindExistingParameter() {
		// Create an application parameter and save it
		Parameter p = Parameter.IS_MEMORY_CACHE_ACTIVE;
		Boolean value = true;
		ApplicationParameter a = new ApplicationParameter();
		a.setParameter(p);
		a.setValue(value.toString());
		applicationParameterRepository.save(a);
		
		ApplicationParameter fromDB = applicationParameterService.findByParameter(p);
		assertNotNull(fromDB);
		assertEquals(value, Boolean.valueOf(fromDB.getValue()));		
	}

	@Test
	public void testFindNotExistingParameter() {
		Parameter p = Parameter.IS_MEMORY_CACHE_ACTIVE;		
		ApplicationParameter fromDB = applicationParameterService.findByParameter(p);
		assertNull(fromDB);
	}

	@Test
	public void testFindAll() {
		// Create an application parameter and save it
		Parameter p1 = Parameter.IS_MEMORY_CACHE_ACTIVE;
		Boolean value = true;
		ApplicationParameter a1 = new ApplicationParameter();
		a1.setParameter(p1);
		a1.setValue(value.toString());
		applicationParameterRepository.save(a1);
		
		Timestamp currentTime = DateUtil.getCurrentTimestamp();
		Parameter p2 = Parameter.LAST_ROOM_BATCH_UPDATE;
		ApplicationParameter a2 = new ApplicationParameter();
		a2.setParameter(p2);
		a2.setValue(currentTime.toString());
		applicationParameterRepository.save(a2);
		
		List<ApplicationParameter> applications = applicationParameterService.findAll();
		assertThat(applications, hasSize(2));
		assertThat(applications, hasItems(a1, a2));
	}

}
