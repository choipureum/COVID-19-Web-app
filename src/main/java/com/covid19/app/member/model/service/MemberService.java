package com.covid19.app.member.model.service;

import java.util.Map;

import com.covid19.app.member.model.vo.Member;

public interface MemberService {
	
	//회원가입
	public int insertMember(Map<String,Object>commandMap);

	//아이디 중복체크
	public int selectId(String member_id);
	

	
}
