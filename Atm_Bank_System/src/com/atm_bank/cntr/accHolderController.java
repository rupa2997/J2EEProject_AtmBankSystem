package com.atm_bank.cntr;

//import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.atm_bank.AccountHolderValidator;
import com.atm_bank.dao.accDao;
import com.atm_bank.dto.AccountHolder;
import com.atm_bank.service.accService;






@Controller
public class accHolderController {
	
	@Autowired
	private accService acc_Service;
	
	@Autowired
	private AccountHolderValidator accValidator;
	
	@Autowired
	private MailSender mailSender;
	
	@Autowired
	private accDao acc_Dao;
	
	@RequestMapping(value="/pre_createAcc.htm" , method=RequestMethod.GET)
	public String preCreateAcc(ModelMap map) {
		map.put("accHolder", new AccountHolder());
		return "createAcc";
		
	}
	@RequestMapping(value="/pre_login.htm" , method=RequestMethod.GET)
	public String preLogin(ModelMap map,HttpSession session) {
		map.put("accHolder", new AccountHolder());
		session.setAttribute("err", "");
		return "Login";
		
	}
	
	
	@RequestMapping(value="/pre_forgotPin.htm" , method=RequestMethod.GET)
	public String preforgotPin(ModelMap map) {
		map.put("accHolder", new AccountHolder());
		return "forgotPin";
		
	}
	
	
	@RequestMapping(value="/accDetails.htm" , method=RequestMethod.POST)
	public String accDetails(AccountHolder accHolder,ModelMap map) {
		
		System.out.println("===============================================================================");
		System.out.println("==========="+acc_Dao.pin()+"==========");
		System.out.println("==========="+acc_Dao.accNo()+"==========");
		accHolder.setAccNo(acc_Dao.accNo());
		accHolder.setAccPin(acc_Dao.pin());
		accHolder.setAccCardNumber(acc_Dao.accCardNumber());
		acc_Service.addAccHolder(accHolder);
		map.put("accHolder",accHolder);
		return "accDetails";
		
	}
	
	@RequestMapping(value="/transaction.htm" , method=RequestMethod.POST)
	public String login(AccountHolder accHolder,BindingResult result,ModelMap map,HttpSession session) {
		session.setAttribute("err", "");
//		custValidator.validate(cust,result);
//		if(result.hasErrors()) {
//			
//			map.addAttribute("cust", new AccountHolder());
//			return "login";
//		}
//		accValidator.validate(accHolder, result);
//		if(result.hasErrors()) {
//			map.put("accHolder", new AccountHolder());
//			return "Login";
//		}
//		System.out.println("Done!!");
//		AccountHolder b=acc_Service.findAccHolder(accHolder);
//	
//		if(b) {
//			
//			session.setAttribute("accHolder", accHolder);
//			
//			return "accTransaction";
//		}else {
//			map.put("accHolder", new AccountHolder());
//			return "Login";
//		}
		
		AccountHolder ah1 = acc_Service.findAccHolder(accHolder);
		if(ah1 != null) {
			session.setAttribute("accHolder", ah1);
			accHolder = ah1;
			return "accTransaction";
		}
		session.setAttribute("err", "Invalid Credential...!!!");
		session.setAttribute("success", "!!!!!!!!........Transaction Successs...........!!!");
		
		map.put("accHolder", new AccountHolder());
		//System.out.println("sec login");
		//System.out.println(accHolder);

		return "Login";
	}
	
	@RequestMapping(value = "/forgot_pin.htm",method = RequestMethod.POST)
	public String forgotPin(@RequestParam String emailId,ModelMap map) {		
		int acc_pin = acc_Service.forgotPassword(emailId);
		String msg = "you are not registered";
		if(acc_pin!=0) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("rupalipangare9729@gmail.com");  
	        message.setTo(emailId);  
	        message.setSubject("Your pin");
	        String pin=String.valueOf( acc_pin);
	        message.setText(pin);  
	        //sending message   
	        mailSender.send(message);
	        msg = "check the mail for password";
		}
		map.put("msg_Email", msg);
		return "info";
	}
	
	
}
