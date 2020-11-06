package com.atm_bank.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.atm_bank.dto.AccountHolder;
import com.atm_bank.dto.changePin;
import com.atm_bank.dto.transaction;
import com.atm_bank.service.accTransactionService;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;


@Controller
public class accTransactionController {

	
	@Autowired
	private accTransactionService acc_tService;
	
	@RequestMapping(value="/checkBal.htm" , method=RequestMethod.GET)
	public String checkAmt(ModelMap map,HttpSession session) {
			int accId=((AccountHolder)session.getAttribute("accHolder")).getAccId();
			AccountHolder ah = acc_tService.findAccHolder(accId);
			map.put("accHolder",ah);
			
			
			return "accBalance";
		
		
	}
	
	@RequestMapping(value="/depositAmt.htm" , method=RequestMethod.GET)
	public String deposite1(ModelMap map) {
			
			map.put("accHolder",new AccountHolder());
			
			
			return "amtDeposite";
		
		
	}
	
	@RequestMapping(value="/depositeAmt1.htm" , method=RequestMethod.POST)
	public String depositeAmt(HttpSession session,ModelMap map,AccountHolder ah1) {
		map.put("msg1","");
		if(ah1.getAccBalance()>50000) {
			map.put("msg1","Only 50000 allow to deposite in one transaction");
			map.put("accHolder",new AccountHolder());
		
			return "amtDeposite";
		}
		if(ah1.getAccBalance()<1) {
			map.put("msg1","Plese Enter Valid Amount");
			map.put("accHolder",new AccountHolder());
		
			return "amtDeposite";
		}
		int accId=((AccountHolder)session.getAttribute("accHolder")).getAccId();
		int accNo=((AccountHolder)session.getAttribute("accHolder")).getAccNo();
		AccountHolder  acc= acc_tService.findAccHolder(accId);
		double balance = acc.getAccBalance()+ ah1.getAccBalance();
		acc.setAccBalance(balance);
		
		LocalDate localDate = LocalDate.now();
		LocalTime localTime=LocalTime.now();
		DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
		DateTimeFormatter formatter1=DateTimeFormatter.ofPattern("HH-mm-ss");
		
		String formatDate=localDate.format(formatter);
		String fomatTime=localTime.format(formatter1);
		System.out.println(formatDate);
		System.out.println(fomatTime);
		
		String status="Credited";
		String tTo="Self";
		transaction td=new transaction();
		td.setAmount(ah1.getAccBalance());
		td.settTo(tTo);
		td.setT_status(status);
		td.setAccountHolder2(acc);
		td.setAccNo(accNo);
		td.settDate(formatDate);
		td.settTime(fomatTime);
		acc_tService.addT_Details(td);
		
		
		acc_tService.depositeAmt(acc);
			
		session.setAttribute("success", "!!!!!!!!........Transaction Successs...........!!!");
			
			return "success";
		
		
	}
	
	@RequestMapping(value="/withdrawAmt.htm" , method=RequestMethod.GET)
	public String withdrawAmt(ModelMap map) {
			
			map.put("accHolder",new AccountHolder());
			
			
			return "amtWithdraw";
		
		
	}
	
	@RequestMapping(value="/withdrawAmt1.htm" , method=RequestMethod.POST)
	public String withdraw(HttpSession session,ModelMap map,AccountHolder ah) {
			
		
		int accId=((AccountHolder)session.getAttribute("accHolder")).getAccId();
		int accNo=((AccountHolder)session.getAttribute("accHolder")).getAccNo();
		AccountHolder  acc= acc_tService.findAccHolder(accId);
		map.put("msg1","");
		if(ah.getAccBalance()>acc.getAccBalance()) {
			map.put("msg","Your account balance is less than withdraw amount");
			map.put("accHolder",new AccountHolder());
		
			return "amtWithdraw";
		}
		else {
			if(ah.getAccBalance()>50000) {
				map.put("msg1","Only 50000 allow to withdraw in one transaction");
				map.put("accHolder",new AccountHolder());
			
				return "amtWithdraw";
			}else if(ah.getAccBalance()<1) {
				map.put("msg1","Plese Enter Valid Amount");
				map.put("accHolder",new AccountHolder());
			
				return "amtWithdraw";
			}else {
			double balance = acc.getAccBalance()- ah.getAccBalance();
			
			LocalDate localDate = LocalDate.now();
			LocalTime localTime=LocalTime.now();
			DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
			DateTimeFormatter formatter1=DateTimeFormatter.ofPattern("HH-mm-ss");
			
			String formatDate=localDate.format(formatter);
			String fomatTime=localTime.format(formatter1);
			System.out.println(formatDate);
			System.out.println(fomatTime);
			
			String status="Debited";
			String tTo="Self";
			transaction td=new transaction();
			td.setAmount(ah.getAccBalance());
			td.settTo(tTo);
			td.setT_status(status);
			td.setAccountHolder2(acc);
			td.setAccNo(accNo);
			td.settDate(formatDate);
			td.settTime(fomatTime);
			acc_tService.addT_Details(td);
			
			
			acc.setAccBalance(balance);
			map.put("msg1","");
			map.put("msg","");
			acc_tService.depositeAmt(acc);
			session.setAttribute("success", "!!!!!!!!........Transaction Successs...........!!!");
			return "success";
			}
		}
		
		
	}
	
	@RequestMapping(value="/transferAmt.htm" , method=RequestMethod.GET)
	public String transferAmt(ModelMap map,HttpSession session) {
			
			map.put("accHolder1",new AccountHolder());
			
			session.setAttribute("err2", "");
			return "transferAmt";
		
		
	}
	
	@RequestMapping(value="/transferAmt1.htm" , method=RequestMethod.POST)
	public String transferAmt1(HttpSession session,ModelMap map,AccountHolder ah) {
		
		session.setAttribute("err1", "");
		session.setAttribute("err2", "");
		session.setAttribute("err3", "");
		if(ah.getAccNo()==0) {
			session.setAttribute("err1", "Enter acc no");
			map.put("accHolder1",new AccountHolder());
			
			return "transferAmt";
		}
		//System.out.println("++++++++++++++++++++++++++++++++++++++++++++");
		int accId=((AccountHolder)session.getAttribute("accHolder")).getAccId();
		int accNo=((AccountHolder)session.getAttribute("accHolder")).getAccNo();
		AccountHolder  acc= acc_tService.findAccHolder(accId);
		
		int accNo1=ah.getAccNo();
		//System.out.println("0=====inavvlid!!!!!!!!!!");
		AccountHolder  acc1=acc_tService.findAccBeneficiary(accNo1);
		//System.out.println("1=====inavvlid!!!!!!!!!!");
		if(acc1!=null) {
			//System.out.println("3=====inavvlid!!!!!!!!!!");
		if(ah.getAccBalance()>acc.getAccBalance()) {
			
			session.setAttribute("err1", "Low Balance...!!!Transaction Fail!!!");
			map.put("accHolder1",new AccountHolder());
			
			return "transferAmt";
		}
		else {
			if(ah.getAccBalance()<1) {
				session.setAttribute("err3", "Enter Valid Amount");
				
				
				map.put("accHolder1",new AccountHolder());
				
				
				return "transferAmt";
			}
			if(ah.getAccBalance()>10000) {
				session.setAttribute("err3", "You Cannot Transfer more than 10000 in one Transaction");
				
				
				map.put("accHolder1",new AccountHolder());
				
				
				return "transferAmt";
			}
			double balance = acc.getAccBalance()- ah.getAccBalance();
			acc.setAccBalance(balance);
			
			acc_tService.depositeAmt(acc);
//			int accNo=ah.getAccNo();
//			AccountHolder  acc1=acc_tService.findAccBeneficiary(accNo);
			double balance1 = acc1.getAccBalance()+ ah.getAccBalance();
			System.out.println(balance1);
			acc1.setAccBalance(balance1);
			
			//functionality for sender
			LocalDate localDate = LocalDate.now();
			LocalTime localTime=LocalTime.now();
			DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
			DateTimeFormatter formatter1=DateTimeFormatter.ofPattern("HH-mm-ss");
			
			String formatDate=localDate.format(formatter);
			String fomatTime=localTime.format(formatter1);
			//System.out.println(formatDate);
			//System.out.println(fomatTime);
			
			transaction td=new transaction();
			String status="Debited";
			int receipant=ah.getAccNo();
			String recep=String.valueOf(receipant);
			String tTo="Transfer to :"+recep ;
			
			td.setAmount(ah.getAccBalance());
			td.settTo(tTo);
			td.setT_status(status);
			td.setAccountHolder2(acc);
			td.setAccNo(accNo);
			td.settDate(formatDate);
			td.settTime(fomatTime);
			acc_tService.addT_Details(td);
			
			//functionality for receiver
			
			transaction td1=new transaction();
			String status1="Credited";
			int receipant1=acc.getAccNo();
			String recep1=String.valueOf(receipant1);
			String tTo1="Received From :"+recep1 ;
			td1.setAmount(ah.getAccBalance());
			td1.settTo(tTo1);
			td1.setT_status(status1);
			td1.setAccountHolder2(acc1);
			td1.setAccNo(accNo1);
			td1.settDate(formatDate);
			td1.settTime(fomatTime);
			td1.getAccNo();
			td1.getAmount();
			acc_tService.addT_Details(td1);
			
			
			
			
			//session.setAttribute("err1", "");
			acc_tService.depositeAmt(acc1);
			//session.setAttribute("err1", "");
			//session.setAttribute("err2", "");
			//session.setAttribute("err3", "");
			session.setAttribute("success", "!!!!!!!!........Transaction Successs...........!!!");
			return "success";
		}
		}
			//System.out.println("2=====inavvlid!!!!!!!!!!");
			session.setAttribute("err2", "Invalid Beneficiary Account Number");

			map.put("accHolder1",new AccountHolder());
			
			
			return "transferAmt";
		
		
	}
	
	@RequestMapping(value="/changePin.htm" , method=RequestMethod.GET)
	public String changePin(ModelMap map) {
			
			map.put("changeP",new changePin());
			return "changePin";
	
	}
	
	
	@RequestMapping(value="/changePin1.htm" , method=RequestMethod.POST)
	public String changePin1(HttpSession session,ModelMap map,changePin changeP) {
		if(changeP.getPinC()!= changeP.getConfirmPin()) {
			map.put("changeP",new changePin());
			map.put("msg","Confirm Pin didn't Match ");
			return "changePin";
		}
		int accId=((AccountHolder)session.getAttribute("accHolder")).getAccId();
		AccountHolder  acc= acc_tService.findAccHolder(accId);
		changeP.setAccHolder1(acc);
		acc_tService.change_Pin(changeP);
		int change_Pin=changeP.getConfirmPin();
		acc.setAccPin(change_Pin);
		//AccountHolder acc1=acc_tService.find_AccHolder1(accId);
		acc_tService.depositeAmt(acc);
			return "accTransaction";
	
	}
	
	@RequestMapping(value="/Logout.htm", method= RequestMethod.GET)
	public String logout(HttpSession session,ModelMap map) {
		session.removeAttribute("accHolder");
		session.removeAttribute("err1");
		session.removeAttribute("success");
		session.removeAttribute("err");
		session.removeAttribute("err2");
		session.removeAttribute("err3");
		session.invalidate();
		map.put("accHolder", new AccountHolder());
		return "Login";
	}
	
	@RequestMapping(value="/index1.htm", method= RequestMethod.GET)
	public String index1(HttpSession session,ModelMap map) {
		session.removeAttribute("accHolder");
		session.invalidate();
		session.removeAttribute("err1");
		session.removeAttribute("success");
		session.removeAttribute("err");
		//map.put("accHolder", new AccountHolder());
		return "index";
	}
	
	
	@RequestMapping(value = "/miniState.htm",method = RequestMethod.GET)
	public String mini_statement(ModelMap map,HttpSession session) {
		int accNo=((AccountHolder)session.getAttribute("accHolder")).getAccNo();
		int accNo1=accNo;
		List<transaction> li = acc_tService.select_t(accNo1);
		map.put("miniStatement", li);
		return "Mini_Statement";
	}
	
	
}
