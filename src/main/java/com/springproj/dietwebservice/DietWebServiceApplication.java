package com.springproj.dietwebservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

//aop활성화
@EnableAspectJAutoProxy
@SpringBootApplication
public class DietWebServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(DietWebServiceApplication.class, args);
	}

}
