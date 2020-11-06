package com.atm_bank.dao;

import com.atm_bank.dto.AccountHolder;


public interface accDao {
	void insertAccHolder(AccountHolder accHolder);
	AccountHolder checkAccHolder(AccountHolder accHolder);
	int pin();
	int accNo();
	int accCardNumber();
	int forgotPassword(String emailId);
	
}
