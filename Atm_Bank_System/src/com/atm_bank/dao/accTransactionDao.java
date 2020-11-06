package com.atm_bank.dao;

import java.util.List;

import com.atm_bank.dto.AccountHolder;
import com.atm_bank.dto.changePin;
import com.atm_bank.dto.transaction;


public interface accTransactionDao {
	void depositeAmt1(AccountHolder accHolder);
	void withdrawAmt1(int accId);
	AccountHolder selectAccHolder(int accId);
	AccountHolder selectAccBeneficiary(int accNo);
	void cPin1(changePin cPin);
	AccountHolder find_AccHolder(int accId);
	void addT_Details1(transaction td);
	List<transaction> select_t1(int accId);
}
