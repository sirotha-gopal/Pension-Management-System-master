package com.pensiondisbursement.controller;

import com.pensiondisbursement.restclients.AuthorizationServiceClient;
import com.pensiondisbursement.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

import com.pensiondisbursement.exception.TokenInvalidException;
import com.pensiondisbursement.model.ProcessPensionInput;
import com.pensiondisbursement.service.PensionDisbursementService;

@RestController
public class PensionDisbursementController {

	@Value("${myconfig.firstProperty}")
	private String myConfig;
	@Autowired
	private PensionDisbursementService pensionDisbursementService;

	@Autowired
	private AuthService authService;

	@Autowired
	private AuthorizationServiceClient authClient;
	@PostMapping("/disbursepension")
	public Integer getPensionDisbursement(@RequestHeader("Authorization") String token,
			@RequestBody ProcessPensionInput processPensionInput) throws TokenInvalidException {
		return pensionDisbursementService.getPensionDisbursement(token, processPensionInput);
	}
	
	@GetMapping("/hello")
	public String sayHello() {
		return authService.callHello();
	}

	@GetMapping("/getConfig")
	public String getMyConfig(){
		return myConfig;
	}

}
