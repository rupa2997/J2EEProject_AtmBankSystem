package com.atm_bank;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.atm_bank.dto.AccountHolder;



@Service
public class AccountHolderValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(AccountHolder.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "accCardNumber","unmKey", "user name required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "accPin", "passKey","password required");
		
		
		
		
	}
	
}
