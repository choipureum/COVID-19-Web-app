package com.covid19.app.board.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.board.model.service.FaqService;


@Controller
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@RequestMapping(value = "/faqBoard.do", method=RequestMethod.GET)
	public ModelAndView FaqBoard(Model model) {
		
		ModelAndView mav = new ModelAndView();
		Map<String, Object> commandMap = faqService.selectFaq();
		mav.addObject("list", commandMap);
		mav.setViewName("faqBoard/faqList");
		return mav;
		
	}
	
	
	
}
