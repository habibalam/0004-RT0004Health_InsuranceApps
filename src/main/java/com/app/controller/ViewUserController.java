package com.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.app.model.AdminUser;
import com.app.service.AdminUserService;

@Controller
@RequestMapping("/getroles")
public class ViewUserController {

	@Autowired
	private AdminUserService service;
	
	@GetMapping
	public String checkRole(@RequestParam String roles, HttpServletRequest req ,  Model model) 
	{
	  String role=null;
	  role=req.getParameter("roles");
	  AdminUser user = new AdminUser();
	  List<AdminUser> Listrole= service.findByRoles(roles);
	  System.out.println("View controller println role of list"+Listrole);
	   model.addAttribute("Listrole", Listrole);
	   return "viewUser";
	}
	
	
	@RequestMapping("/editUser")
   
	public AdminUser getUser(@RequestParam("userId") Integer userId) {
	return service.getoneUser(userId);
	}
	
	
	
	
}
