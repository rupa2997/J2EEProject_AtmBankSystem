package com.atm_bank.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atm_bank.dao.accDao;
import com.atm_bank.dto.AccountHolder;


@Service
public class accServiceImple implements accService {

	@Autowired
	private accDao acc_Dao;
	@Override
	public void addAccHolder(AccountHolder accHolder) {
		// TODO Auto-generated method stub
		acc_Dao.insertAccHolder(accHolder);
		
	}

	@Override
	public AccountHolder findAccHolder(AccountHolder accHolder) {
		// TODO Auto-generated method stub
		return acc_Dao.checkAccHolder(accHolder);
		
	}

	@Override
	public int forgotPassword(String emailId) {
		// TODO Auto-generated method stub
		return acc_Dao.forgotPassword(emailId);
	}

	

}
