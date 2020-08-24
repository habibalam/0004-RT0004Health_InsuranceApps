package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.app.model.AdminUser;
import com.app.service.AdminUserService;

@Controller
public class AdminUSerController {
    
	@Autowired
	private AdminUserService adminService;
	
	@GetMapping("/register")
	public String loadForm(Model model) {
	AdminUser userReg=new AdminUser();
	model.addAttribute("userReg", userReg);
	return "adminRegister";
	}
	
	@PostMapping("/save") 
	public String saveUer(@ModelAttribute("data") AdminUser adminuser,Model model) {
	
	 boolean isSave=adminService.SaveUser(adminuser);
	 if(isSave) {
		 model.addAttribute("successMsg", "you are successfully registered Please check your Email....!");
	 }
	 
	 else {
	    	model.addAttribute("errMsg", "you are not register");   	
	    }
		return "adminRegister";
		
	}
	
	 
	 
	
}
