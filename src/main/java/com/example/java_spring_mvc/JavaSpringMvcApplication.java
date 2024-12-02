package com.example.java_spring_mvc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication(exclude = {
		org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class })
public class JavaSpringMvcApplication {
	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(JavaSpringMvcApplication.class, args);
	}
}
