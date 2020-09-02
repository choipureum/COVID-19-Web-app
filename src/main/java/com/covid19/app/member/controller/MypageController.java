package com.covid19.app.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid19.app.member.model.service.MemberService;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@Autowired   
	public MemberService memberService;
	
	@RequestMapping(value = "/memberModify.do", method = RequestMethod.GET)
	public String mypageModify() {
		return "/mypage/memberModify";
		
	}
	 
	 
}
