package com.skytech.skypiea.batch;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.skytech.skypiea.batch.service.FailureCheckerService;

@EnableJpaRepositories(basePackages = {"com.skytech.skypiea.api.repository"})
@EntityScan(basePackages="com.skytech.skypiea.commons.entity")
@ComponentScan(basePackages = {
		"com.skytech.skypiea.api.service",
		"com.skytech.skypiea.batch.service"
})
@SpringBootApplication
public class SkypieaBatchApplication implements CommandLineRunner {
	
	@Autowired
	private FailureCheckerService failureCheckerService;
	
	/*@Autowired
	private FailureCheckerTimer failureCheckerTimer;*/

	public static void main(String[] args) {
		SpringApplication.run(SkypieaBatchApplication.class, args);	
	}

	@Override
	public void run(String... args) throws Exception {	
		failureCheckerService.start();
	}

}
