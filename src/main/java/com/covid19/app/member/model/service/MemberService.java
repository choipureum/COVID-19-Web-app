package com.covid19.app.member.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

	/**
	 * 회원 로그인
	 * @param member
	 * @param session
	 * @return
	 */
	public boolean login(Member member, HttpSession session);

	/**
	 * 회원 로그인 정보
	 */
	public Member viewMember(String member_id);
	
	/**
	 * 로그아웃
	 * @param session
	 */
	public void logout(HttpSession session);

	/**
	 * 아이디 찾기
	 * @param member
	 * @return 이름과 이메일로
	 */
	public String searchId(Member member);
	


}
