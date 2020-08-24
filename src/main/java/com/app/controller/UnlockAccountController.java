package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.AdminUser;
import com.app.model.UnlockAccount;
import com.app.service.AdminUserService;

@Controller
public class UnlockAccountController {

	@Autowired
	private AdminUserService service;
	
	@GetMapping("/confirmAccount")
    public String displayUnlockAccForm(@RequestParam("email") String email, Model model) {
	model.addAttribute("email", email);	
	UnlockAccount unlockAcc=new UnlockAccount();
	model.addAttribute("unlockAcc", unlockAcc);	
    return "unlockAccountForm";
    }
	
	//this method update the temp passwrod
	@PostMapping("/unlockUser")
	public String unlockUser(@ModelAttribute("unlockAcc") UnlockAccount acc,Model model)
	{
		
	 try {
		 
		 AdminUser useracc= service.getUserByTempPwd(acc.getTempPwd());
		  if( useracc!=null) {
			 useracc.setActStatus("Un-Locked");
			 useracc.setPassword(acc.getNewpwd());
			 boolean isupdated= service.updateUserAccount(useracc);
			 if(isupdated) {
				 
			     return "unlockAccountSuccess";
			 }else {
				 
			 }  
	      }	
		   model.addAttribute("errMsg", "please Enter conrrect temprory password");
		 
    	} catch (Exception e) {
		
      }
      
	  return "unlockAccountForm";  
	}	
		
	
}
