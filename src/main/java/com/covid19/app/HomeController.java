package com.covid19.app;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//홈 부팅
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome COVID-19 PROJECT!! KH_FINAL_PROJECT HERE.{}", locale);			
		//model 값 지정해서 메인으로 값보내주기
		return "main";
	}
	//헤더 부팅 
	@RequestMapping(value = "/header.do", method = RequestMethod.GET)
	public String header(Model model) {
		return "/include/header";
	}
	@RequestMapping(value = "/footer.do", method = RequestMethod.GET)
	public String footer(Model model) {
		return "/include/footer";
	}
}
