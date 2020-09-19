package com.covid19.app.lifeRule.controller;

import java.util.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.lifeRule.model.service.LifeRuleService;

//생활속 거리두기
@Controller
public class LifeRuleController {
	
	@Autowired
	private LifeRuleService lifeRuleService;
	private static final Logger logger = LoggerFactory.getLogger(LifeRuleController.class);
	
	//1,2 -기본수칙 / 3,4 - 공동체수칙 , 검색
	@RequestMapping(value="/basicRule.do")
	public ModelAndView basicList(						
		@RequestParam(required=false, defaultValue="1")int currentPage,
		@RequestParam(required=false, defaultValue="1")int boundary,
		@RequestParam(required=false, defaultValue="t")String search_item, //검색카테고리
		@RequestParam(required=false, defaultValue="")String search_content	//검색내용	
			) { 
		search_content=search_content.trim(); //공백제거
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 10;
		Map<String, Object> commandMap=null;
		
		int cnt=0;
		//기본수칙
		if(boundary==1 ||boundary==2) {
			switch(boundary) {
			//1번 - 설명자료(if(boundary=1
			case 1:
				 commandMap= lifeRuleService.selectBasicRuleList(currentPage, cntPerPage,search_item,search_content);
				 cnt= lifeRuleService.selectBasicRuleContentCnt(search_item,search_content);				 
				break;
			case 2:
				 commandMap= lifeRuleService.selectBasic2RuleList(currentPage, cntPerPage,search_item,search_content);
				 cnt= lifeRuleService.selectBasic2RuleContentCnt(search_item,search_content);
				break;
			}
			mav.setViewName("/covidRule/basicRule");		
		}
		//공동체수칙
		else {
			switch(boundary) {
			//3번 - 설명자료
			case 3:
				commandMap= lifeRuleService.selectBasic3RuleList(currentPage, cntPerPage,search_item,search_content);
				cnt= lifeRuleService.selectBasic3RuleContentCnt(search_item,search_content);		
				break;
			//4번 - 홍보자료
			case 4:
				commandMap= lifeRuleService.selectBasic4RuleList(currentPage, cntPerPage,search_item,search_content);
				cnt= lifeRuleService.selectBasic4RuleContentCnt(search_item,search_content);		
				break;
			}
			mav.setViewName("/covidRule/corRule");		
		}	
		//paging 객체를 paging이라는 키로 담아서 보낸다.
		mav.addObject("paging", commandMap.get("paging"));
		mav.addObject("RuleList", commandMap);		
		mav.addObject("ListCnt",cnt);
		mav.addObject("boundary",boundary);		
		return mav;
	}
	
	//기본수칙 디테일뷰(1,2번)
	@RequestMapping(value="/basicDetail.do", method=RequestMethod.GET)
	public ModelAndView basicDetail(int lfNo) {
		
		ModelAndView mav = new ModelAndView();		
		Map<String,Object> commandMap = lifeRuleService.selectBasicDetail(lfNo);		
		mav.addObject("basic", commandMap);
		mav.setViewName("/covidRule/basicRuleDetail");	
		return mav;
	}
	
	
	//장소별 실천수칙(메뉴)
	@RequestMapping(value = "/locRule.do", method = RequestMethod.GET)
	public String locRule(Locale locale, Model model) {
		logger.info(" About CORONA location Rule....{}", locale);	
		return "/covidRule/locRule";
	}
}







