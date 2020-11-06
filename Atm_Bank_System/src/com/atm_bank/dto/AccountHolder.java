package com.atm_bank.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.Table;

import org.hibernate.annotations.Columns;

@Entity
@Table(name="Account_Holder") 
public class AccountHolder {
	@Id
	@GeneratedValue
	@Column(name="acc_Id")
	private int accId;
	
	@Column(name="accCard_number")
	private int accCardNumber;
	
	

	@Column(name="acc_No")
	private int accNo;
	
	@Column(name="accHolder_Name")
	private String accHolderName;
	
	@Column(name="email_Id")
	private String emailId;
	
	@Column(name="acc_FatherN")
	private String accFatherN;
	
	@Column(name="acc_Date")
	private String accDate;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="mobile_no")
	private String mobileNo;
	
	@Column(name="City")
	private String City;
	
	@Column(name="pinCode")
	private int pinCode;
	
	@Column(name="acc_Type")
	private String accType;
	
	@Column(name="acc_Balance")
	private double accBalance;
	
	@Column(name="acc_Pin")
	private int accPin;
	
	public AccountHolder() {
		
	}

	public int getAccId() {
		return accId;
	}

	public void setAccId(int accId) {
		this.accId = accId;
	}

	public int getAccNo() {
		return accNo;
	}

	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}

	public String getAccHolderName() {
		return accHolderName;
	}

	public void setAccHolderName(String accHolderName) {
		this.accHolderName = accHolderName;
	}

	

	public String getAccFatherN() {
		return accFatherN;
	}

	public void setAccFatherN(String accFatherN) {
		this.accFatherN = accFatherN;
	}

	public String getAccDate() {
		return accDate;
	}

	public void setAccDate(String accDate) {
		this.accDate = accDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		this.City= city;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public double getAccBalance() {
		return accBalance;
	}

	public void setAccBalance(double accBalance) {
		this.accBalance = accBalance;
	}

	public int getAccPin() {
		return accPin;
	}

	public void setAccPin(int accPin) {
		this.accPin = accPin;
	}

	public String getAccType() {
		return accType;
	}

	public void setAccType(String accType) {
		this.accType = accType;
	}

	public int getAccCardNumber() {
		return accCardNumber;
	}

	public void setAccCardNumber(int accCardNumber) {
		this.accCardNumber = accCardNumber;
	} 
	
	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
}
