package com.atm_bank.service;

import java.util.List;

import com.atm_bank.dto.AccountHolder;


public interface accService {
	void addAccHolder(AccountHolder accHolder);
	AccountHolder findAccHolder(AccountHolder accHolder);
	int forgotPassword(String emailId);
}
