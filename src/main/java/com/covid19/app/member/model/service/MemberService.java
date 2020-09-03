package com.covid19.app.member.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.covid19.app.member.model.vo.Member;

public interface MemberService {
	
	/**
	 * 회원가입
	 * @param commandMap
	 */
	public int insertMember(Map<String,Object>commandMap);

	/**
	 * 아이디 중복 체크
	 * @param member_id  아이디 확인
	 * @return
	 */
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
	 * @param commandMap
	 * @param session
	 * @return
	 */
	public Member login(Map<String, Object> commandMap);

	
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

	/**
	 * 비밀번호 찾기
	 * @param member
	 * @return 이름 아이디 이메일 
	 */
	public int searchPw(Member member);

	/**
	 * 비밀번호 업데이트 하는 부분 
	 * @param commandMap member_id만 보고 pw 업데이트
	 * @return 비밀번호 업데이트 해야하는데 .. 
	 */
	public int changePw(Member member);

	/**
	 * 회원정보 수정 member
	 * @param member
	 * @return
	 */
	public int membermodify(Member member);

	

	


}
