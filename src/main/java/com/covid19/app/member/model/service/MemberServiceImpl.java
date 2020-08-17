package com.covid19.app.member.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.member.model.dao.MemberDao;
import com.covid19.app.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao memberDao;
	
	@Override
	public int joinMember(Map<String,Object>commandMap) {
		//새로운 멤버클래스에 파라미터 삽입	
		Member member = new Member();
		member.setMember_id((String)commandMap.get("userid"));
		member.setMember_name((String)commandMap.get("username"));
		member.setMember_pw((String)commandMap.get("userpw"));
		member.setMember_tell((String)commandMap.get("usertel"));
		//birth합쳐주기
		StringBuilder sb = new StringBuilder();
		sb.append(commandMap.get("userbirth_yy")+"-");
		sb.append(commandMap.get("userbirth_mm")+"-");
		sb.append(commandMap.get("userbirth_dd"));
		member.setMember_birth(sb.toString());
		//sb 초기화 & 주소 합쳐주기
		sb = new StringBuilder();
		sb.append(commandMap.get("mem_oaddress")+" ");
		sb.append(commandMap.get("mem_address")+" ");
		sb.append(commandMap.get("mem_detailaddress"));
		member.setMember_add(sb.toString());
		member.setMember_email((String)commandMap.get("useremail"));

		return memberDao.joinMember(member);
	}

}
