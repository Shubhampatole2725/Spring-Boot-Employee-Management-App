package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class SpringBootEmployeeAppApplication {

	public static void main(String[] args) {
		System.out.println("Application Starts");
		SpringApplication.run(SpringBootEmployeeAppApplication.class, args);
		System.out.println("Application Ends");
	}

}
