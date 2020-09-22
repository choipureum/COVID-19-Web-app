package com.covid19.app.board.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.board.model.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "/noticeBoard.do", method=RequestMethod.GET)
	public ModelAndView noticeBoard(
			@RequestParam(required=false, defaultValue = "1")int cPage,
			@RequestParam(required=false, defaultValue = "t")String search_item,
			@RequestParam(required=false, defaultValue = "")String search_content)throws IOException {
		
		search_content = search_content.trim(); //공백제거
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 6;
		Map<String, Object> commandMap = noticeService.selectNoticeList(cPage, cntPerPage, search_item, search_content);
		mav.addObject("paging", commandMap.get("NoticePaging"));
		mav.addObject("list", commandMap);
		mav.setViewName("noticeBoard/noticeBoard");
		return mav;
		
	}
}
