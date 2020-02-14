package com.skytech.skypiea.injector;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EntityScan(basePackages= {"com.skytech.skypiea.commons.entity"})
@ComponentScan(basePackages = {
		"com.skytech.skypiea.injector",
		"com.skytech.skypiea.injector.mock",
		"com.skytech.skypiea.injector.socket.client"
})
@EnableJpaRepositories(basePackages = "com.skytech.skypiea.api.repository")
@SpringBootApplication
public class SkypieaInjectorApplication implements CommandLineRunner {

	@Autowired
	private Console console;

	public static void main(String[] args) {    	
		SpringApplication.run(SkypieaInjectorApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		console.run();
	}
}
