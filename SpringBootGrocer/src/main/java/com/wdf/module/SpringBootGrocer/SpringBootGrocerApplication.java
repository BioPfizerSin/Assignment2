package com.wdf.module.SpringBootGrocer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.wdf.module.SpringBootGrocer.entity")
public class SpringBootGrocerApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootGrocerApplication.class, args);
	}

}
