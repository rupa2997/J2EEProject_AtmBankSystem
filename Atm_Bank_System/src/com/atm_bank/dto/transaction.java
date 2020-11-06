package com.atm_bank.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

//import org.hibernate.annotations.Columns;

@Entity
@Table(name="Transaction_Details")
public class transaction {
   @Id
   @GeneratedValue
   @Column(name="t_Id")
   private int tId;
   
   @Column(name="acc_no")
   private int accNo;

@Column(name="t_Amount")
   private double amount;
   
   @Column(name="t_Time")
   private String tTime;
   
   @Column(name="t_Date")
   private String tDate;
   
   @Column(name="t_Status")
   private String t_status;
   
   @Column(name="transfer_to")
   private String tTo;
   
   @OneToOne
   @JoinColumn(name="acc_Id")
   private AccountHolder accountHolder2;
   
   

public String gettTo() {
	return tTo;
}

public void settTo(String tTo) {
	this.tTo = tTo;
}

public int gettId() {
	return tId;
}

public void settId(int tId) {
	this.tId = tId;
}


public double getAmount() {
	return amount;
}

public void setAmount(double amount) {
	this.amount = amount;
}

public String gettTime() {
	return tTime;
}

public void settTime(String tTime) {
	this.tTime = tTime;
}

public String gettDate() {
	return tDate;
}

public void settDate(String tDate) {
	this.tDate = tDate;
}

public String getT_status() {
	return t_status;
}

public void setT_status(String t_status) {
	this.t_status = t_status;
}

public AccountHolder getAccountHolder2() {
	return accountHolder2;
}

public void setAccountHolder2(AccountHolder accountHolder2) {
	this.accountHolder2 = accountHolder2;
}
   
public int getAccNo() {
	return accNo;
}

public void setAccNo(int accNo) {
	this.accNo = accNo;
}
}
