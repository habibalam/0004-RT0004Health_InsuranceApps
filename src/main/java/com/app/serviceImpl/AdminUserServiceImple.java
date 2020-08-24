package com.app.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.constant.AppConstants;
import com.app.entity.AdminUserEntity;
import com.app.model.AdminUser;
import com.app.repository.AdminUserRepository;
import com.app.service.AdminUserService;
import com.app.utils.MyMailService;
import com.app.utils.RandomGenrator;

@Service
public class AdminUserServiceImple implements AdminUserService {
    
	@Autowired
	private AdminUserRepository userRepo;
	
	@Autowired
	private MyMailService mailservice;
	
	@Override
	public boolean SaveUser(AdminUser user) {
	user.setPassword(RandomGenrator.genrateTempPwd(AppConstants.TEMP_PWD_LENGTH));	
	user.setActStatus(AppConstants.LOCKED_STR);
	user.setDelete_sw(AppConstants.DELETE_SW);
	AdminUserEntity entity=new AdminUserEntity();
	BeanUtils.copyProperties(user, entity);
	AdminUserEntity saveEntity=userRepo.save(entity);
	if(saveEntity.getUserId()!=null) {
		return mailservice.sendUserAccountUnclockEmail(user);
	}
		
	return false;
	}

	@Override
	public List<AdminUser> getAllUser() {
		
		return null;
	}
    
	@Override
	public AdminUser getoneUser(Integer userId) {
		Optional<AdminUserEntity> userEnity=userRepo.findById(userId);
	    System.out.println("****findby id Data is******"+userEnity);
	    AdminUserEntity entity=null;
	    if(userEnity.isPresent()) {
	    	entity = userEnity.get();
	    	AdminUser data=new AdminUser();
	    	//BeanUtils.copyProperties(entity, data);
	    	BeanUtils.copyProperties(entity, data);
	    	System.out.println("******data is your:::::"+data);
	    	return data;		
	    }
		
		return null;
	}
	
	@Override
	public boolean updateAdminUser(AdminUser update) {
	AdminUserEntity	entity=new AdminUserEntity();
	BeanUtils.copyProperties(update, entity);
	AdminUserEntity saveEntity=	userRepo.save(entity);
	return true;
	}

	@Override
	public boolean deleteUser(Integer userId) {
		
		return false;
	}

	@Override
	public AdminUser getUserByTempPwd(String tempPwd) {
	AdminUserEntity entity=	userRepo.findBypassword(tempPwd);
	AdminUser adminuser=null;
	if(entity!=null) {
		adminuser=new AdminUser();
		BeanUtils.copyProperties(entity, adminuser);
	}
		return adminuser;
	}

	//this method used for update the password
	@Override
	public boolean updateUserAccount(AdminUser u) {
	AdminUserEntity entity=new AdminUserEntity();
	BeanUtils.copyProperties(u, entity);
	AdminUserEntity saveEntity=	userRepo.save(entity);
	return saveEntity!=null;
	}
 
	// this method used roles wise fetch data
	@Override
	public List<AdminUser> findByRoles(String roles) {
	List<AdminUserEntity> entityRoles= userRepo.findByRoles(roles);
	List<AdminUser> roleList=new ArrayList<AdminUser>();
	for(AdminUserEntity entities:entityRoles) {
	 AdminUser userList= new AdminUser();
	 BeanUtils.copyProperties(entities, userList); 
	 roleList.add(userList);
	
	  
	  } 
	 return roleList;
	}

	

}
