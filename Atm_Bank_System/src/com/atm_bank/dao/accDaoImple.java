package com.atm_bank.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.atm_bank.dto.AccountHolder;


@Repository
public class accDaoImple implements accDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void insertAccHolder(AccountHolder accHolder) {
		// TODO Auto-generated method stub
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(accHolder);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public AccountHolder checkAccHolder(AccountHolder accHolder) {
		// TODO Auto-generated method stub
		AccountHolder ah1 = hibernateTemplate.execute(new HibernateCallback<AccountHolder>() {

			@Override
			public AccountHolder doInHibernate(Session session) throws HibernateException {
				// TODO Auto-generated method stub
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from AccountHolder where accCardNumber = ? and accPin= ?");
				q.setInteger(0, accHolder.getAccCardNumber());
				q.setInteger(1, accHolder.getAccPin());
				List<AccountHolder> li = q.list();
				if(li.isEmpty()) {
					//System.out.println("userrrrrrrrrrr");
					return null;
				}
				AccountHolder ah2 = li.get(0);
				//System.out.println("user-------------------"+u);
				tr.commit();
				session.flush();
				session.close();
				if(ah2 != null) {
//					accHolder.setAccBalance(ah2.getAccBalance());
//					accHolder.setAccCardNumber(ah2.getAccCardNumber());
//					accHolder.setAccHolderName(ah2.getAccHolderName());
//					accHolder.setAccId(ah2.getAccId());
//					accHolder.setAccBalance(ah2.getAccBalance());
//					accHolder.setAccNo(ah2.getAccNo());
//					accHolder.setEmailId(ah2.getEmailId());
//					accHolder.setGender(ah2.getGender());
//					accHolder.setCity(ah2.getCity());
//					accHolder.setAccPin(ah2.getAccPin());
//					accHolder.setAccFatherN(ah2.getAccFatherN());
//					accHolder.setMobileNo(ah2.getMobileNo());
//					accHolder.setAccDate(ah2.getAccDate());
//					accHolder.setPinCode(ah2.getPinCode());
					return ah2;
					
				}
				
				return null;
			}
			
			
		});
		return ah1;
	}

	@Override
	public int pin() {
		// TODO Auto-generated method stub
		int min = 100;
	      int max = 990;
	      
	        
	      //Generate random int value from 50 to 100 
	      //System.out.println("Random value in int from "+min+" to "+max+ ":");
	      int random_int = (int)(Math.random() * (max - min + 1) + min);
	      //System.out.println(random_int);
		return random_int;
	}
	
	public int accNo() {
		// TODO Auto-generated method stub
		int min = 1000;
	      int max = 9999;
	     
	        
	      //Generate random int value from 50 to 100 
	      //System.out.println("Random value in int from "+min+" to "+max+ ":");
	      int random_int = (int)(Math.random() * (max - min + 1) + min);
	     // System.out.println(random_int);
		return random_int;
	}
	public int accCardNumber() {
		// TODO Auto-generated method stub
		int min = 10000;
	      int max = 99999;
	     
	        
	      //Generate random int value from 50 to 100 
	      System.out.println("Random value in int from "+min+" to "+max+ ":");
	      int random_int = (int)(Math.random() * (max - min + 1) + min);
	      System.out.println(random_int);
		return random_int;
	}

	@Override
	public int forgotPassword(String emailId) {
		int acc_Pin = hibernateTemplate.execute(new HibernateCallback<Integer>() {

			@Override
			public Integer doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from AccountHolder where emailId = ?");
				q.setString(0,emailId );
				List<AccountHolder> li = q.list();
				int pass =0;
				if(!li.isEmpty())
					pass = li.get(0).getAccPin();
				tr.commit();
				session.flush();
				session.close();
				return pass;
			}
			
		});
		return acc_Pin;
	}
}
