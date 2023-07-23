package com.pensiondisbursement.restclients;

import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;

import com.pensiondisbursement.exception.TokenInvalidException;

@FeignClient(name = "authorization-service")
@RibbonClient(name = "authorization-service")
public interface AuthorizationServiceClient {

	@PostMapping("/auth/validate")
	public boolean validateAndReturnUser(@RequestHeader("Authorization") String token) throws TokenInvalidException;

	@GetMapping("/auth/hello-auth")
	public String callHello();
}