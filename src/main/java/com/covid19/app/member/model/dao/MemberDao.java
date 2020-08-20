package com.covid19.app.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.member.model.vo.Member;

@Repository
public class MemberDao {
	@Autowired
	SqlSessionTemplate session;
	
	public int insertMember(Member member) {
		System.out.println(member);
		return session.insert("MEMBER.insertMember", member);
		
	}

	public int selectIdcheck(String member_id) {
		// TODO Auto-generated method stub
		return session.selectOne("MEMBER.selectIdcheck",member_id);
	}
}
