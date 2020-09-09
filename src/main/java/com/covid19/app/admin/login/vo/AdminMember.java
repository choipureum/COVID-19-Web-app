package com.covid19.app.admin.login.vo;


public class AdminMember {

	private String adminId;
	private String password;
//	private String email;
//	private String tell;
	
	public AdminMember() {}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "AdminMember [adminId=" + adminId + ", password=" + password + "]";
	}

	
	
	
}
