package com.covid19.app.board.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {

	
	@RequestMapping(value = "/noticeBoard.do", method=RequestMethod.GET)
	public ModelAndView noticeBoard(Model model) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("noticeBoard/noticeBoard");
		return mav;
		
	}
}
