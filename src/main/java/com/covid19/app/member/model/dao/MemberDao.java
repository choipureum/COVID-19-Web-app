package com.covid19.app.member.model.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.member.model.vo.Member;

@Repository
public class MemberDao {
	
	@Autowired
	SqlSessionTemplate session;
	
	/**
	 * 회원가입
	 * @param member
	 * @return
	 */
	public int insertMember(Member member) {
		System.out.println(member);
		return session.insert("MEMBER.insertMember", member);
		
	}

	/**
	 * 아이디 중복 확인
	 * @param member_id 아이디 확인
	 * @return
	 */
	public int selectIdcheck(String member_id) {
		// TODO Auto-generated method stub
		return session.selectOne("MEMBER.selectIdcheck",member_id);
	}

	/**
	 * 로그인
	 * @param member 전체 id pw 확인
	 * @return
	 */
	public boolean login(Member member) {
		boolean flag=false;
		Member member2 = session.selectOne("MEMBER.login", member);
		System.out.println(member2);
		if(member2.getMember_id()!=null) {
			flag=true;
		}else {
			flag=false;
		}
		return flag;		
	}	
	/**
	 * 회원 로그인 정보
	 * @param String member_id
	 * @return Member
	 */
	public Member viewMember(String member_id) {				
		return session.selectOne("MEMBER.viewMember", member_id);
	}
	
	/**
	 * 로그아웃
	 */
	public void logout(HttpSession session) {
		
	}

	/**
	 * 아이디찾기
	 * @param member
	 * @return
	 */
	public String searchId(Member member) {
		return session.selectOne("MEMBER.searchId", member);
	}


	
	
}











