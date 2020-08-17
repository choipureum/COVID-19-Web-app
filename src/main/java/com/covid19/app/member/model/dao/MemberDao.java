package com.covid19.app.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.covid19.app.member.model.vo.Member;
@Repository
public class MemberDao {

	SqlSessionTemplate session;
	
	
	public int joinMember(Member member) {
		return session.insert("MEMBER.joinMember",member);
	}
}
