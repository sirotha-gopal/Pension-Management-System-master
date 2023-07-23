package com.pensionmanagement.configclient;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class ConfigClientApplication {
	@Value("${myconfig.firstProperty}")
	private String myConfig;

	public static void main(String[] args) {
		SpringApplication.run(ConfigClientApplication.class, args);
	}

	@GetMapping("/get")
	public String getMyConfig(){
		return myConfig;
	}

}
