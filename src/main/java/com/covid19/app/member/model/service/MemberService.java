package com.covid19.app.member.model.service;

import java.util.Map;

import com.covid19.app.member.model.vo.Member;

public interface MemberService {
	
	//회원가입
	public int insertMember(Map<String,Object>commandMap);

	//아이디 중복체크
	public int selectId(String member_id);
	

	/** 메일 전송
     *  @param subject 제목
     *  @param text 내용
     *  @param from 보내는 메일 주소
     *  @param to 받는 메일 주소
	**/
	public boolean send(String subject, String text, String from, String to);
	


}
