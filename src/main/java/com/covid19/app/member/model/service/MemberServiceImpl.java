package com.covid19.app.member.model.service;

import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.ViewMethodReturnValueHandler;

import com.covid19.app.member.model.dao.MemberDao;
import com.covid19.app.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao memberDao;
	
//	이메일인증
	private JavaMailSender javaMailSender;
	public void setJavaMailSender(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}
	
	/**
	 *  회원가입
	 */
	@Override
	public int insertMember(Map<String,Object>commandMap) {
		//새로운 멤버클래스에 파라미터 삽입	
		Member member = new Member();
		member.setMember_id((String)commandMap.get("joinuserid"));
		member.setMember_name((String)commandMap.get("username"));
		member.setMember_pw((String)commandMap.get("joinuserpw"));
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

		return memberDao.insertMember(member);
	}

	/**
	 * 아이디중복체크
	 */
	@Override
	public int selectId(String member_id) {

		return memberDao.selectIdcheck(member_id);
	}


	/**
	 * 이메일인증 미완성
	 */
	@Override
	public boolean send(String subject, String text, String from, String to) {
		
		MimeMessage message = javaMailSender.createMimeMessage();
		
		try {
			
			// org.springframework.mail.javamail.MimeMessageHelper
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setSubject(subject);
			helper.setText(text, true);
			helper.setFrom(from);
			helper.setTo(to);

			javaMailSender.send(message);
			return true;
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		return false;
	}


	/**
	 * 로그인
	 */
	@Override
	public boolean login(Member member, HttpSession session) {
		
		boolean result = memberDao.login(member);
		
		System.out.println("result 값" + result);
		
		if(result) {
			Member member2 = memberDao.viewMember(member.getMember_id());
			System.out.println("member2:"+member2);
			//세션에 등록
			session.setAttribute("member_id", member2.getMember_id());
			session.setAttribute("member_name", member2.getMember_name());			
		}
		return result;
	}
	/**
	 * 아이디를 넣었을때 Member반환
	 * @param String memberid
	 * @return Member member
	 * 
	 */
	@Override
	public Member viewMember(String member_id) {
		return memberDao.viewMember(member_id);
	}

	/**
	 * 로그아웃
	 */
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
		
	}

	/**
	 * 아이디찾기
	 */
	@Override
	public String searchId(Member member) {
		return memberDao.searchId(member);
	}


	
	
}











