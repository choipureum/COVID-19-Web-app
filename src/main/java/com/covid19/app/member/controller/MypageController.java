package com.covid19.app.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;

@Controller
@RequestMapping("mypage")
public class MypageController {
	
	@Autowired   
	public MemberService memberService;
	
	/**
	 * 회원 정보 수정 get
	 */
	@RequestMapping(value = "/memberModify.do", method = RequestMethod.GET)
	public ModelAndView mypageModify(HttpSession session) {		
		ModelAndView mav = new ModelAndView();
		
		Member res = (Member) session.getAttribute("logInInfo");
		
		//세션 값에 아이디랑 이름만
		System.out.println("res" + res);
		
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
	/**
	 * 회원 정보 수정 post
	 */
	@RequestMapping(value="/memberModifyimpl.do", method = RequestMethod.POST)
	public String mypageModifyimpl(@RequestParam Map<String,Object> commandMap, HttpSession session, Model model) {

		Member res= (Member)session.getAttribute("logInInfo");
		String member_id=res.getMember_id();
		System.out.println("mypage" + commandMap);
	
		Member member3 = new Member();
		
		member3 = memberService.selectAll(member_id);
		String address=member3.getMember_add();
		
		System.out.println("addressdfsd 나와라 좀" + address);

		System.out.println("command map " + commandMap);
		
		session.setAttribute("modify",memberService.membermodify(commandMap));

		
		System.out.println(session.getAttribute("modify"));
		return "/mypage/memberModify.do";
	}
	 
	
	
	
	/**
	 * 회원 등급
	 */
	@RequestMapping(value = "/memberMypageGrade.do", method = RequestMethod.GET)
	public String mypageGrade() {
		return "/mypage/memberMypageGrade";
	}
	
	/**
	 * 회원 결제목록
	 */
	@RequestMapping(value = "/memberMypagePay.do", method = RequestMethod.GET)
	public String mypagePay() {
		return "/mypage/memberMypagePay";
	}
	
	
	
	/**
	 * 회원 장바구니
	 */
	@RequestMapping(value = "/memberMypageBag.do", method = RequestMethod.GET)
	public String mypageBag() {
		
		return "/mypage/memberMypageBag";
	}
}
















