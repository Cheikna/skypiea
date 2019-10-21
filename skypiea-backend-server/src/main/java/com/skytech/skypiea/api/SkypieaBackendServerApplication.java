package com.skytech.skypiea.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan(basePackages="com.skytech.skypiea.commons.entity")
public class SkypieaBackendServerApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(SkypieaBackendServerApplication.class, args);
	}

}
