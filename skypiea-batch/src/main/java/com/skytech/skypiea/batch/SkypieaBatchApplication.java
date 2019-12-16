package com.skytech.skypiea.batch;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackages = {"com.skytech.skypiea.api.repository"})
@EntityScan(basePackages="com.skytech.skypiea.commons.entity")
@ComponentScan(basePackages = {
		"com.skytech.skypiea.api.service"

})
@SpringBootApplication
public class SkypieaBatchApplication implements CommandLineRunner {

	/*@Autowired
	private UserRepository userService;*/

	public static void main(String[] args) {
		SpringApplication.run(SkypieaBatchApplication.class, args);	
	}

	@Override
	public void run(String... args) throws Exception {	
		/*userService.findAll();
		List<User> users = userService.findAll();
		System.out.println(users);	*/	
	}

}
