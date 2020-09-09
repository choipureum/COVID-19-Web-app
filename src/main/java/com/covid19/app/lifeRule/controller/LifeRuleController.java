package com.covid19.app.lifeRule.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid19.app.lifeRule.model.service.LifeRuleService;

//생활속 거리두기
@Controller
public class LifeRuleController {
	
	@Autowired
	private LifeRuleService lifeRuleService;
	private static final Logger logger = LoggerFactory.getLogger(LifeRuleController.class);
	
	//장소별 실천수칙
	@RequestMapping(value = "/locRule.do", method = RequestMethod.GET)
	public String locRule(Locale locale, Model model) {
		logger.info(" About CORONA location Rule....{}", locale);				
		return "/covidRule/locRule";
	}
}
