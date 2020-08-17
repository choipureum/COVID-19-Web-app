package com.covid19.app.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("member")
public class MemberController {

	@RequestMapping(value ="/join.do", method = RequestMethod.GET)
	public String join() {
		return "member/join";
		
	}
}
