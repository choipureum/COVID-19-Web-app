package com.covid19.app.admin.login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.login.vo.AdminMember;

@Repository
public class AdminDao {
	
	@Autowired
	SqlSessionTemplate session;

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember) {
		return session.selectOne("ADMIN.selectAdmin", admember);
	}

}
