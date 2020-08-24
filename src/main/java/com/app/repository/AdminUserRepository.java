package com.app.repository;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.app.entity.AdminUserEntity;



public interface AdminUserRepository extends JpaRepository<AdminUserEntity, Serializable> {

	//set temprory password
	AdminUserEntity findBypassword(String tempPwd);
	
	@Query(name="from AdminUserEntity where roles=:roles")
	List<AdminUserEntity> findByRoles(String roles);
	
}
