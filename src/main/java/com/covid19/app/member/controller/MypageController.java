package com.covid19.app.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@Autowired   
	public MemberService memberService;
	
	@RequestMapping(value = "/memberModify.do", method = RequestMethod.GET)
	public String mypageModify() {
		return "/mypage/memberModify";
		
	}
	
	@RequestMapping(value="/memberModifyimpl.do", method = RequestMethod.POST)
	public String mypageModifyimpl(@ModelAttribute Member member, HttpSession session, Model model) {
		
		System.out.println("mypage" + member);
		session.setAttribute("modify",memberService.membermodify(member));
		
		System.out.println(session.getAttribute("modify"));
		return "redirect:/mypage/memberModify.do";
	}
	 
	 
}
