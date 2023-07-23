package com.cognizant.pensionerdetailmodule.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.pensionerdetailmodule.dao.impl.PensionDetailDaoImpl;
import com.cognizant.pensionerdetailmodule.exception.TokenInvalidException;
import com.cognizant.pensionerdetailmodule.models.PensionerDetail;
import com.cognizant.pensionerdetailmodule.restclients.AuthorizationServiceClient;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class PensionDetailService {
	
	@Autowired
	private PensionDetailDaoImpl pensionDetailDaoImpl;
	
	@Autowired
	private AuthorizationServiceClient authClient;
	
	
	public PensionerDetail getPensionerDetail(String token,Long aadharNumber) throws TokenInvalidException {
		boolean response=authClient.validateAndReturnUser(token);
		if(response) {	
			System.out.println("response validated");
			return pensionDetailDaoImpl.getPensionserDetail(aadharNumber);
		}
		else
		{
			throw new TokenInvalidException("USER UNAUTHORIZED");
		}
	}

}
