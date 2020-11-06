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
import com.atm_bank.dto.changePin;
import com.atm_bank.dto.transaction;


@Repository
public class accTransactionDaoImple implements accTransactionDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void depositeAmt1(AccountHolder accHolder) {
		// TODO Auto-generated method stub
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.update(accHolder);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}


	@Override
	public void withdrawAmt1(int accId) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public AccountHolder selectAccHolder(int accId) {
		AccountHolder ah1 =hibernateTemplate.execute(new HibernateCallback<AccountHolder>() {

			@Override
			public AccountHolder doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				AccountHolder ah = (AccountHolder)session.get(AccountHolder.class, accId);
				tr.commit();
				session.flush();
				session.close();
				return ah;
			}
			
		});
		return ah1;
	}





	@Override
	public AccountHolder selectAccBeneficiary(int accNo1) {
		// TODO Auto-generated method stub
		AccountHolder ah1 = hibernateTemplate.execute(new HibernateCallback<AccountHolder>() {

			@Override
			public AccountHolder doInHibernate(Session session) throws HibernateException {
				// TODO Auto-generated method stub
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from AccountHolder where accNo= ?");
				q.setInteger(0,accNo1);
				
				List<AccountHolder> li = q.list();
				if(li.isEmpty()) {
					
					return null;
				}
				AccountHolder ah2 = li.get(0);
				System.out.println("user-------------------");
				tr.commit();
				session.flush();
				session.close();
				if(ah2 != null) {
//					
					return ah2;
					
				}
				
				return null;
			}
			
			
		});
		return ah1;
	}


	@Override
	public void cPin1(changePin cPin) {
		// TODO Auto-generated method stub
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(cPin);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}
	
	
	@Override
	public AccountHolder find_AccHolder(int accId) {
		// TODO Auto-generated method stub
		AccountHolder ah1 = hibernateTemplate.execute(new HibernateCallback<AccountHolder>() {

			@Override
			public AccountHolder doInHibernate(Session session) throws HibernateException {
				// TODO Auto-generated method stub
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from AccountHolder where accId= ?");
				q.setInteger(0, accId);
				List<AccountHolder> li = q.list();
				if(li.isEmpty()) {
					return null;
				}
				AccountHolder ah2 = li.get(0);
				//System.out.println("user-------------------"+u);
				tr.commit();
				session.flush();
				session.close();
				if(ah2 != null) {
					return ah2;
					
				}
				
				return null;
			}
			
			
		});
		return ah1;
	}


	@Override
	public void addT_Details1(transaction td) {
		// TODO Auto-generated method stub
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(td);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}


	@Override
	public List<transaction> select_t1(int accId) {
		List<transaction> t_List = hibernateTemplate.execute(new HibernateCallback<List<transaction>>() {

			@Override
			public List<transaction> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from transaction where accNo = ?");
				q.setInteger(0, accId);
				List<transaction> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return t_List;
	}
	}


	


	


	

