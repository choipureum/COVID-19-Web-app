package com.covid19.app.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;

//컨트롤러설정
@Controller
@RequestMapping("member")

public class MemberController {
	 @Autowired   
	 public MemberService memberService;
	
//	회원가입 
	@RequestMapping(value="/join.do",method = RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	
	@RequestMapping(value="/joinimpl.do",method = RequestMethod.POST)
	public ModelAndView joinimpl(@RequestParam Map<String,Object> commandMap,HttpServletRequest request) {		
		ModelAndView mav = new ModelAndView();
		int res=memberService.insertMember(commandMap);
		
		if(res>0) {
			
		}else {
			
		}
		return mav;

	}
	
//	아이디중복체크
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

	//로그인
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login() {
		return "/member/login";
	}
}












