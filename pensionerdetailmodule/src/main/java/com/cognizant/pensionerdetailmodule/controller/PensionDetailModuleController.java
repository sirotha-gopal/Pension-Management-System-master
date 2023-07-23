package com.cognizant.pensionerdetailmodule.controller;

import com.cognizant.pensionerdetailmodule.restclients.AuthorizationServiceClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import com.cognizant.pensionerdetailmodule.exception.TokenInvalidException;
import com.cognizant.pensionerdetailmodule.models.PensionerDetail;
import com.cognizant.pensionerdetailmodule.service.PensionDetailService;

@RestController
@RequestMapping("/pensionerdetail")
public class PensionDetailModuleController {

	@Value("${server.port}")
	private String serverPort;

	@Autowired
	private AuthorizationServiceClient authorizationServiceClient;

	@Autowired
	private PensionDetailService pensionDetailService;

	/**
	 * REST end point GET the PensionerDetial using aadharNumber
	 */
	@GetMapping("/{aadharNumber}")
	public PensionerDetail getPensionerDetail(@RequestHeader("Authorization") String token,
			@PathVariable Long aadharNumber) throws TokenInvalidException {
		System.out.println("Pensino Detail Called....");
		 PensionerDetail pensionerDetail = pensionDetailService.getPensionerDetail(token, aadharNumber);
		 System.out.println(pensionerDetail);
		 return pensionerDetail;
	}
	
	
	@GetMapping("/hello")
	public String sayHello() {
		return "Hello::From Detail, port"+serverPort;
	}
	
	@GetMapping("/zipkin")
	public String helloFromAuth(){
		return authorizationServiceClient.sayHello();
	}
}
