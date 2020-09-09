package com.covid19.app.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.board.model.service.InfoReplyService;


//@Controller와 @RestController 의 차이점은 메서드가 종료되면 화면전환의 유무
@RestController
public class InfoReplyController {

	@Autowired
	private InfoReplyService infoReplyServcie;
	
	
	//댓글 목록(@Controller 방식 : view를 리턴)
	@RequestMapping("replyList.do")
	public ModelAndView replyList(@RequestParam int info_idx) {
		
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	
	
	
	
	
}
