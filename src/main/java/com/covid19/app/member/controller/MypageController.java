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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;
import com.covid19.app.shareper.model.dto.Pay;

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
		Member member3 = new Member();	
		member3 = memberService.selectAll(member_id);
		String address=member3.getMember_add();
		
		System.out.println("address : "+address);
		
		session.setAttribute("modify",memberService.membermodify(commandMap,address));

		System.out.println(session.getAttribute("modify"));
		return "redirect:/mypage/memberModify.do";
	}
	
	/**
	 * 회원탈퇴
	 */
	@ResponseBody
	@RequestMapping(value="/memberDeleteimpl.do", method = RequestMethod.POST)
	public int memberDeleteimpl(@ModelAttribute Member member, HttpSession session) {
		//int.jsp
		int res = memberService.memberdelete(member);
		session.invalidate();
		return res;
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
	public ModelAndView mypagePay(HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		Member res = (Member) session.getAttribute("logInInfo");
		
		//세션 값에 아이디랑 이름만
		System.out.println("res" + res);
		
		String member_id=res.getMember_id();
		//id로 전체 멤버만들기
		
		Pay pay = new Pay();
		
		System.out.println("아이디 나오니? " + member_id);
		
		pay = memberService.mypagePay(member_id);
		
		
		//member를 mav addobject하기
		mav.addObject("mypagePay", pay);
		mav.setViewName("/mypage/memberMypagePay");
		return mav;
	

		
	}
	
	

}
















