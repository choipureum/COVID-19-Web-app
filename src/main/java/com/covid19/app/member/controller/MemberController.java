package com.covid19.app.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
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
	  * 회원가입
	  */
	@RequestMapping(value="/join.do",method = RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	
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
		
		System.out.println("userid가 넘어오나?"+ member_id);
		int res = memberService.selectId(member_id);
		if(res > 0) {
			System.out.println("res가뭐냐? "+ res);
			return member_id;
		}
		return "";

		
	}

//	/**
//	 * 로그인
//	 */
//	@RequestMapping(value="/login.do", method = RequestMethod.GET)
//	public String login() {
//		return "/member/login";
//	}
//	

	@RequestMapping(value="/loginimpl.do", method=RequestMethod.POST)
	public ModelAndView loginImpl(@ModelAttribute Member member, String userid, String userpw, HttpSession session,HttpServletRequest request) {

//		확인완료	
		member.setMember_id(userid);
		member.setMember_pw(userpw);
		
		boolean result = memberService.login(member,session);
		System.out.println(session.getAttribute("member_id"));
		System.out.println(session.getAttribute("member_name"));
		ModelAndView mav = new ModelAndView();
		
		if(result == true) { //로그인성공!
			
		
			mav.addObject("alertMsg", "로그인성공!");
			mav.addObject("url",request.getContextPath()+"/main.do");
			mav.setViewName("member/result");
			
		} else { //실패하면  로그인
			mav.addObject("alertMsg", "로그인실패!");
			mav.addObject("url", request.getContextPath()+"/main.do");
			mav.setViewName("member/result");
		}
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
		mav.setViewName("/main.do");
		
		return mav;
	}

	/**
	 * 아이디찾기 
	 * @return 아이디찾기 jsp
	 */
	@RequestMapping(value="/searchId.do",method = RequestMethod.GET)
	public String searchId() {
		return "/member/searchId";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchIdimpl.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String searchIdimpl(@ModelAttribute Member member) {
//		@RequestBody
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	
//	@RequestMapping(value="/email.do", method = RequestMethod.POST)
//	public ModelAndView mail() {
//		ModelAndView mav = new ModelAndView();
//		int random = new Random().nextInt(900000) + 100000;
////		와우 
//		mav.setViewName("/member/email");
//		mav.addObject("random", random);
//		return mav;
//		
//	}
//	
//	
//	
//	@RequestMapping(value="/sendMail.do", method= RequestMethod.POST)
//	@ResponseBody
//	public boolean sendMail(HttpSession session, @RequestParam String email) {
//		
//		int randomCode = new Random().nextInt(10000)+1000;
//		String joinCode = String.valueOf(randomCode);
//		session.setAttribute("joinCode", joinCode);
//		
//		String subject = "회원가입 인증 코드 발급 안내 입니다.";
//		StringBuilder sb = new StringBuilder();
//		sb.append("귀하의 인증 코드는 " + joinCode + "입니다.");
//		return memberService.send(subject, sb.toString(), "vnfmaghkdwp@naver.com", email);
//		
//	}
	
	



}












