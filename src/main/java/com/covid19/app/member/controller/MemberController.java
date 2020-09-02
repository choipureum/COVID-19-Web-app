package com.covid19.app.member.controller;

import java.net.PasswordAuthentication;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.codehaus.jackson.JsonNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;

//컨트롤러설정
@Controller
@RequestMapping("member")

public class MemberController {
	 @Autowired   
	 public MemberService memberService;
	 
	 /**
	  * 카카오 로그인
	  */
	 private kakao_restapi kakao_restapi = new kakao_restapi();
	 
	
	 /**
	  * 회원가입 GET
	  */
	@RequestMapping(value="/join.do",method = RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	/**
	 * 회원가입 약관페이지
	 */
	@RequestMapping(value="/joininfo.do",method=RequestMethod.GET)
	public String joinfo() {
		return "/member/joininfo";
	}
	
	/**
	 * 회원가입 POST
	 * @param commandMap 멤버
	 * @return mav
	 */
	@RequestMapping(value="/joinimpl.do",method = RequestMethod.POST)
	public ModelAndView joinimpl(@RequestParam Map<String,Object> commandMap,HttpServletRequest request) {		
	
		ModelAndView mav = new ModelAndView();
		
		int res=memberService.insertMember(commandMap);
		String root = request.getContextPath();
		
		if(res > 0) {
			mav.addObject("alertMsg", "회원가입성공!");
			mav.addObject("url", "/main.do");
			mav.setViewName("/member/result");
		} else {
			mav.addObject("alertMsg", "회원가입에 실패");
			mav.addObject("url", root+"/member/join.do");
			mav.setViewName("/member/result");
		}
		return mav;
	}
	
	/**
	 * 아이디중복체크
	 */
	@RequestMapping(value="/idcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public String idcheck(String member_id) {
		
		int res = memberService.selectId(member_id);
		if(res > 0) {
			return member_id;
		}
		return "";
	}


	/**
	 * 로그인
	 */
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login() {
		return "/member/login";
	}
	
	/**
	 * 로그인 처리
	 */
	@RequestMapping(value="/loginimpl.do", method=RequestMethod.POST)
	public ModelAndView loginImpl(@RequestParam Map<String,Object> commandMap,HttpSession session,HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();  
		Member res = memberService.login(commandMap);
		System.out.println(res);
	      
		if(res != null) { //로그인성공!
	    	  
			session.setAttribute("logInInfo", res);
			System.out.println("memberid = " + session.getAttribute("logInInfo"));
	    	 
			mav.addObject("alertMsg", "로그인성공!");
			mav.addObject("url",request.getContextPath()+"/main.do");
	     
		} else { //실패하면  로그인
			mav.addObject("alertMsg", "로그인실패!");
			mav.addObject("url", request.getContextPath()+"/main.do");
		}
		mav.setViewName("member/result");
		return mav;
	}
	/**
	 * 로그아웃
	 */
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		//로그아웃시 main.do
		mav.setViewName("/main");
		return mav;
	}
	
	/**
	 * 카카오 로그인
	 */
	@RequestMapping(value = "/oauth", produces = "application/json")
	public String kakaoLogin(@RequestParam("code") String code, Member member, HttpSession session) {
		System.out.println("로그인 임시 코드값");
		
		System.out.println(code);
		System.out.println("로그인 결과값");
		
		//카카오 restapi 
		kakao_restapi kr = new kakao_restapi();
		
		JsonNode node = kr.getAccessToken(code);
		
		System.out.println(node);
		
		String token = node.get("access_token").toString();
		session.setAttribute("token", token);

		return "/main.do";
	}
	
	
//	https://kauth.kakao.com/oauth/authorize?client_id=a299cea4428cc95365d36f9a401470f4&redirect_uri=http://localhost:8888/app/oauth&response_type=code

	
	

	/**
	 * 아이디찾기 
	 */
	@RequestMapping(value="/searchId.do",method = RequestMethod.GET)
	public String searchId() {
		return "/member/searchId";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchIdimpl.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String searchIdimpl(@ModelAttribute Member member) {
		System.out.println("member" + member);
		String searchid = memberService.searchId(member);
		System.out.println(searchid);
		return searchid;
	}
	
	/**
	 * 비밀번호 찾기
	 * @return 비밀번호 찾기 jsp
	 */
	@RequestMapping(value="/searchPw.do",method = RequestMethod.GET)
	public String searchPw() {
		return "/member/searchPw";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchPwimpl.do",method = RequestMethod.POST)
	public int searchPwimpl(@ModelAttribute Member member) {
		System.out.println("member" + member);
		int searchpw = memberService.searchPw(member);
		System.out.println("searchpw " + searchpw);
		return searchpw;
	}
	
	/**
	 * 비밀번호 바꾸기
	 */
	@RequestMapping(value="/changePw.do", method = RequestMethod.GET)
	public String changePw() {
		return "/member/changePw";
	}
	
	@ResponseBody
	@RequestMapping(value = "/changePwimpl.do", method = RequestMethod.POST)
	public int changePwimpl(@RequestParam Member member,HttpSession session,HttpServletRequest request) {
	     
		int res = memberService.changePw(member);
	    String userid= member.getMember_id();
	      
	    System.out.println(userid);
	      
	    return res;
	}

	
	/**
	 * 이메일 인증
	 */
	@RequestMapping(value="/sendMail.do",method = RequestMethod.POST)
	@ResponseBody
	public String sendMail(HttpSession session, @RequestParam String member_email) {
		
		System.out.println("member_email " + member_email);
		int randomCode = new Random().nextInt(10000) + 1000;
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joinCode", joinCode);
		
		String subject = "COVID-19 회원가입 승인 번호 입니다";
		StringBuilder sb = new StringBuilder();
		sb.append("회원가입 승인번호는 < ").append(joinCode).append(" >입니다");
		
		boolean success=memberService.send(subject, sb.toString(), "vnfmaghkdwp@naver.com",member_email );
		if(success) {
			return joinCode;
		}else {
			return null ;
		}		
	}
	


	
}












