package com.cognizant.processpensionmodule.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.processpensionmodule.clients.PensionDisbursementClient;
import com.cognizant.processpensionmodule.model.ProcessPensionInput;

@Service
public class PensionDisbursementService {

	@Autowired
	private PensionDisbursementClient pensionDisbursementClient;

	public Integer getDisbursementCode(String token, ProcessPensionInput processPensionInput) {
		return pensionDisbursementClient.getPensionDisbursement(token, processPensionInput);
	}
}
