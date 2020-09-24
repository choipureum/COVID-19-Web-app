package com.covid19.app.member.model.service;

import java.util.HashMap;
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
import com.covid19.app.shareper.model.dto.Pay;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao memberDao;
	
//	이메일인증
	private JavaMailSender javaMailSender;
	
	@Autowired
	public MemberServiceImpl(JavaMailSender javaMailsender) {
		this.javaMailSender = javaMailsender;
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
		member.setMember_auth(Integer.parseInt(commandMap.get("auth").toString()));
		
		//birth합쳐주기
		StringBuilder sb = new StringBuilder();
		sb.append(commandMap.get("userbirth_yy"));
		sb.append(commandMap.get("userbirth_mm"));
		sb.append(commandMap.get("userbirth_dd"));
		member.setMember_birth(sb.toString());
		//sb 초기화 & 주소 합쳐주기
		sb = new StringBuilder();
		sb.append(commandMap.get("mem_oaddress")+" ");
		sb.append(commandMap.get("mem_address")+" ");
		sb.append(commandMap.get("mem_detailaddress"));
		member.setMember_add(sb.toString());
		
		member.setMember_email((String)commandMap.get("member_email"));
		
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
	 * 이메일인증 완성
	 */
	@Override
	public boolean send(String subject, String text, String from, String to) {
		
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
			helper.setSubject(subject);
			helper.setText(text);
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
	public Member login(Map<String, Object> commandMap) {
		// TODO Auto-generated method stub
		return memberDao.login(commandMap);
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
	
	/**
	 * 비밀번호 찾기
	 */
	@Override
	public int searchPw(Member member) {
		return memberDao.searchPw(member);
	}
	/**
	 * 비밀번호 바꾸기 change update
	 */
	@Override
	public int changePw(Member member) {
		return memberDao.changePw(member);
	}
	/**
	 * 회원 정보 수정
	 */
	@Override
	public int membermodify(Map<String, Object> commandMap, String address) {
		
		//새로운 멤버클래스에 파라미터 삽입	
		Member member = new Member();
		member.setMember_id((String)commandMap.get("member_id"));
		member.setMember_name((String)commandMap.get("member_name"));
		member.setMember_pw((String)commandMap.get("member_pw"));
		member.setMember_tell((String)commandMap.get("member_tell"));
		//birth합쳐주기
		StringBuilder sb = new StringBuilder();
		sb.append(commandMap.get("userbirth_yy"));
		sb.append(commandMap.get("userbirth_mm"));
		sb.append(commandMap.get("userbirth_dd"));
		member.setMember_birth(sb.toString());
		//sb 초기화 & 주소 합쳐주기
		
		if(((String)commandMap.get("mem_oaddress")).length()<2 && ((String)commandMap.get("mem_address")).length()<2 && ((String)commandMap.get("mem_detailaddress")).length()<3) {
			member.setMember_add(address);
		}
		else {
			sb = new StringBuilder();
			sb.append(commandMap.get("mem_oaddress")+" ");
			sb.append(commandMap.get("mem_address")+" ");
			sb.append(commandMap.get("mem_detailaddress"));
			member.setMember_add(sb.toString());
		}
		member.setMember_email((String)commandMap.get("member_email"));

		return memberDao.membermodify(member);
	}
	/**
	 * 주소빼고 수정 
	 */
	@Override
	public Object membermodifyAdd(Map<String, Object> commandMap) {
		//새로운 멤버클래스에 파라미터 삽입	
		Member member = new Member();
		member.setMember_id((String)commandMap.get("member_id"));
		member.setMember_name((String)commandMap.get("member_name"));
		member.setMember_pw((String)commandMap.get("member_pw"));
		member.setMember_tell((String)commandMap.get("member_tell"));
		//birth합쳐주기
		StringBuilder sb = new StringBuilder();
		sb.append(commandMap.get("userbirth_yy"));
		sb.append(commandMap.get("userbirth_mm"));
		sb.append(commandMap.get("userbirth_dd"));
		member.setMember_birth(sb.toString());
		//sb 초기화 & 주소 합쳐주기

		member.setMember_email((String)commandMap.get("member_email"));
		
		return memberDao.membermodifyAdd(commandMap);
		
	}
	
	
	/**
	 * member_id이용해서 조회
	 */
	@Override
	public Member selectAll(String member_id) {
		return memberDao.selectAll(member_id);
	}
	
	/**
	 * 회원 탈퇴
	 */
	@Override
	public int memberdelete(Member member) {
		return memberDao.memberdelete(member);
	}
	  /**
	    * 결제 완료 목록
	    */

	   @Override
	   public Map<String, Object> mypagePay(String member_id, Pay pay) {
	   
	      Map<String, Object> commandMap = new HashMap<String, Object>();

	      
	      List<Pay> list =memberDao.mypagePay(member_id);
	      
	      commandMap.put("list",list);
	      commandMap.put("member_id",member_id);

	      
	      return commandMap;
	            
	   }
	






	
	

}


