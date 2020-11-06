package com.atm_bank.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Change_pin")
public class changePin {

	@Id
	@GeneratedValue
	@Column(name="pin_Id")
	private int pinId;
	
	@Column(name="pinC")
	private int pinC;
	
	@Column(name="confirmPin")
	private int confirmPin;
	
	@OneToOne
	@JoinColumn(name = "acc_Id")
	private AccountHolder accHolder1;

	public int getPinId() {
		return pinId;
	}

	public void setPinId(int pinId) {
		this.pinId = pinId;
	}

	public int getPinC() {
		return pinC;
	}

	public void setPinC(int pinC) {
		this.pinC = pinC;
	}


	public int getConfirmPin() {
		return confirmPin;
	}

	public void setConfirmPin(int confirmPin) {
		this.confirmPin = confirmPin;
	}

	public AccountHolder getAccHolder1() {
		return accHolder1;
	}

	public void setAccHolder1(AccountHolder accHolder1) {
		this.accHolder1 = accHolder1;
	}

	@Override
	public String toString() {
		return "changePin " + pinId + ", pin=" + pinC + ", confirmPin=" + confirmPin + ", accHolder1=" + accHolder1;
	}
	
	
}
