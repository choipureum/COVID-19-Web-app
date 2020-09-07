package com.covid19.app.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@Autowired   
	public MemberService memberService;
	
	@RequestMapping(value = "/memberModify.do", method = RequestMethod.GET)
	public ModelAndView mypageModify(HttpSession session) {		
		ModelAndView mav = new ModelAndView();
		Member res = (Member) session.getAttribute("logInInfo");
		String member_id=res.getMember_id();
		//id로 전체 멤버만들기
		Member member2 = new Member();
		
		member2 = memberService.selectAll(member_id);
		System.out.println("넌 member2다" + member2);
		//member를 mav addobject하기
		mav.addObject("memberInfo", member2);
		mav.setViewName("/mypage/memberModify");
		return mav;
		
	}
	
	@RequestMapping(value="/memberModifyimpl.do", method = RequestMethod.POST)
	public String mypageModifyimpl(@ModelAttribute Member member, HttpSession session, Model model) {
		
		System.out.println("mypage" + member);
		session.setAttribute("modify",memberService.membermodify(member));
		
		System.out.println(session.getAttribute("modify"));
		return "/mypage/memberModify.do";
	}
	 
	 
}
