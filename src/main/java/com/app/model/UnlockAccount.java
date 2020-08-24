package com.app.model;

import lombok.Data;

@Data
public class UnlockAccount {

	private String email;
	private String tempPwd;
	private String newpwd;
	private String confirmPwd;
}
