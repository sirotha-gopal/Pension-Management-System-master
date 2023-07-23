package com.cognizant.processpensionmodule.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.processpensionmodule.clients.PensionerDetailClient;
import com.cognizant.processpensionmodule.exception.TokenInvalidException;
import com.cognizant.processpensionmodule.model.PensionDetail;
import com.cognizant.processpensionmodule.model.PensionerInput;
import com.cognizant.processpensionmodule.modeldto.PensionerDetail;

@Service
@Slf4j
public class PensionDetailService {

	@Autowired
	private PensionerDetailClient pensionerDetailClient;

	public double calculatePensionAmount(double salary, double allowances, PensionerInput pensionerInput) {
		if (pensionerInput.isSelfPension())
			return 0.8 * salary + allowances;
		else
			return 0.5 * salary + allowances;
	}

	public PensionDetail getPensionDetail(String token, PensionerInput pensionerInput) throws TokenInvalidException {
		PensionerDetail pensionerDetail = getPensionDetail(token, pensionerInput.getAadharNumber());
		PensionDetail pensionDetail = null;

		// to print jsp i.e. Invalid Details
		if (pensionerDetail == null){
			log.error("PensionerDeatils got null from pensioner detail ");
			return null;
		}

		double pensionAmount = calculatePensionAmount(pensionerDetail.getSalaryEarned(),
				pensionerDetail.getAllowances(), pensionerInput);

		pensionDetail = new PensionDetail(pensionerDetail.getName(), pensionerDetail.getDateOfBirth(),
				pensionerDetail.getPan(), pensionerDetail.isSelfPension(), pensionerDetail.isFamilyPension(),
				pensionAmount);

		return pensionDetail;
	}

	public PensionerDetail getPensionDetail(String token, Long aadharNumber) throws TokenInvalidException {
		System.out.println();
		return pensionerDetailClient.getPensionerDetails(token, aadharNumber);

	}
}
