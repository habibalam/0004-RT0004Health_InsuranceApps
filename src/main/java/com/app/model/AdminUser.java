package com.app.model;

import java.util.List;

import lombok.Data;

@Data
public class AdminUser {
	
	private Integer userId;
	
	private String firstName;
	
	private String lastName;
	
	private String email;
	
	private String gender;
	
	private String roles;
	
	private String password;
	
	private String actStatus; 
	
	private String delete_sw;

}
