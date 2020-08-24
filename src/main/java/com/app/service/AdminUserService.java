package com.app.service;

import java.util.List;

import com.app.entity.AdminUserEntity;
import com.app.model.AdminUser;

public interface AdminUserService {

	
	public boolean SaveUser(AdminUser user);
	
	public List<AdminUser>getAllUser();
	
	public AdminUser getoneUser(Integer userId);
	
	boolean updateAdminUser(AdminUser update);
	
	boolean deleteUser(Integer userId);
	
	
	//below method used for unlock account 
	// this method used for set unlock account 
	public AdminUser getUserByTempPwd(String tempPwd);
	
	//this emthod used for update the temprory password
	boolean updateUserAccount(AdminUser u);
	
	
	public List<AdminUser> findByRoles(String roles);
	
	
}
