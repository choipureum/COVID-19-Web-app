package com.covid19.app.admin.login.service;

import org.springframework.stereotype.Service;

import com.covid19.app.admin.login.vo.AdminMember;

@Service
public interface AdminService {

	public AdminMember selectAdmin(AdminMember admember);



	
	


}
