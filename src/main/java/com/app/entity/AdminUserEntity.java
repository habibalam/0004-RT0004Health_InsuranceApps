package com.app.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="admin_user")
public class AdminUserEntity implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="USERID")
    private Integer userId;
	
	@Column(name="FIRST_NAME")
	private String firstName;
	
	@Column(name="LAST_NAME")
	private String lastName;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="GENDER")
	private String gender;
	
	@Column(name="ROLES")
	private String roles;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="ACT_STATUS")
	private String actStatus;  
	
	@Column(name="DELETE_SW")
	private String delete_sw;


}
