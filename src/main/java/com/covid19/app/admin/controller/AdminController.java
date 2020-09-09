package com.covid19.app.admin.controller;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.HomeController;
import com.covid19.app.admin.login.service.AdminService;
import com.covid19.app.admin.login.vo.AdminMember;

@Controller
public class AdminController {
	
	@Autowired
	public AdminService adminService;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	//관리자 메인
	@RequestMapping(value = "/admain.do", method = RequestMethod.GET)
	public String adminHome(Locale locale, Model model) {
		logger.info("Welcome COVID-19 PROJECT!! KH_FINAL_PROJECT HERE.{}", locale);				
		return "/admin/admain";
	}
	
	//로그인 화면
	@RequestMapping(value = "/adlogin.do", method = RequestMethod.GET)
	public String adminLogin(Locale locale, Model model) {
		
		logger.info("로그인", locale);
		
		return "admin/adlogin";
		
	}
	
	//로그인 기능
	@RequestMapping(value = "/adloginimpl.do", method = RequestMethod.POST)
	public ModelAndView adloginImpl(
			AdminMember admember, 
			HttpSession session,
			HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		AdminMember res = adminService.selectAdmin(admember);
		
		if( res != null) {

			mav.addObject("alertMsg", "로그인 성공");
			mav.addObject("url", request.getContextPath()+ "/admain.do");
			
		} else {
			
			mav.addObject("alertMsg", "로그인 실패");
			mav.addObject("url", request.getContextPath()+ "/adlogin.do");
		}
		
		mav.setViewName("common/result");
		
		return mav;
		
	}
	
	
}
