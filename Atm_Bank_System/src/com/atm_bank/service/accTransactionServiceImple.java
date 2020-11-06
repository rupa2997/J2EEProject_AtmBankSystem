package com.atm_bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.atm_bank.dao.accTransactionDao;
import com.atm_bank.dto.AccountHolder;
import com.atm_bank.dto.changePin;
import com.atm_bank.dto.transaction;

@Service
public class accTransactionServiceImple implements accTransactionService {

	@Autowired
	private accTransactionDao acc_tDao;
	
	@Override
	public void depositeAmt(AccountHolder accHolder) {
		// TODO Auto-generated method stub
		acc_tDao.depositeAmt1(accHolder);
		
	}

//	@Override
//	public void withdrawAmt(int accId) {
//		// TODO Auto-generated method stub
//		
//	}

	@Override
	public AccountHolder findAccHolder(int accId) {
		// TODO Auto-generated method stub
		return acc_tDao.selectAccHolder(accId) ;
	}

//	@Override
//	public void modifyPin(AccountHolder accHolder) {
//		// TODO Auto-generated method stub
//		
//	}

//	@Override
//	public List<AccountHolder> selectAll(int accId) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public AccountHolder findAccBeneficiary(int accNo) {
		// TODO Auto-generated method stub
		return acc_tDao.selectAccBeneficiary(accNo);
	}

	@Override
	public void change_Pin(changePin cPin) {
		// TODO Auto-generated method stub
		 acc_tDao.cPin1(cPin);
	}

	@Override
	public AccountHolder find_AccHolder1(int accId) {
		// TODO Auto-generated method stub
		return acc_tDao.find_AccHolder(accId);
	}

	@Override
	public void addT_Details(transaction td) {
		// TODO Auto-generated method stub
		 acc_tDao.addT_Details1(td);
	}

	@Override
	public List<transaction> select_t(int accId) {
		// TODO Auto-generated method stub
		return acc_tDao.select_t1(accId);
	}
	
}
