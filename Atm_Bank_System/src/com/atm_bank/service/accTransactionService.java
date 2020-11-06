package com.atm_bank.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.atm_bank.dto.AccountHolder;
import com.atm_bank.dto.changePin;
import com.atm_bank.dto.transaction;



public interface accTransactionService {
	void depositeAmt(AccountHolder accHolder);
//	void withdrawAmt(int accId);
	AccountHolder findAccHolder(int accId);
//	void modifyPin(AccountHolder accHolder);
	//List<AccountHolder> selectAll(int accId);
	AccountHolder findAccBeneficiary(int accNo);
	void change_Pin(changePin cPin);
	AccountHolder find_AccHolder1(int accId);
	void addT_Details(transaction td);
	List<transaction> select_t(int accId);
}
