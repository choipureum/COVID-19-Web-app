package com.covid19.app.board.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.processing.FilerException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.covid19.app.board.model.service.InfoService;
import com.covid19.app.board.model.vo.InfoShare;
import com.covid19.app.member.model.vo.Member;

import common.exception.FileException;

@Controller
public class InfoShareController {

	@Autowired
	private InfoService infoService;
	
	@RequestMapping(value = "/infoInsertForm.do", method = RequestMethod.GET)
	public String infoFrom() {
		return "infoBoard/infoInsertForm";
		
	}
	
	//정보공유 게시판 전체 목록조회
	@RequestMapping(value = "infoBoard.do", method = RequestMethod.GET)
	public ModelAndView InfoBoardList(@RequestParam(required=false, defaultValue="1")int cPage) {
		
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 10;
		Map<String, Object> commandMap = infoService.selectInfo(cPage, cntPerPage);
		mav.addObject("paging", commandMap.get("paging"));
		mav.addObject("list", commandMap);
		mav.setViewName("infoBoard/infoBoardList");
		
		return mav;
	}
	
	//정보공유 게시판 상세조회
	@RequestMapping(value = "infoBoardDetail.do", method = RequestMethod.GET)
	public ModelAndView InfoView(int info_idx){
		ModelAndView mav = new ModelAndView();
		int info_hits = 0;
		
		
		Map<String,Object> commandmap = infoService.selectInfoDetail(info_idx);
		infoService.updateInfoHit(info_idx);
		mav.addObject("info_hits", info_hits);
		mav.addObject("data", commandmap);
		mav.setViewName("infoBoard/infoBoardView");
		return mav;
	}	
	
	//정보공유 게시판 글삭제
	@RequestMapping(value= "deleteInfo.do", method = RequestMethod.GET)
	public String DeleteInfo(int info_idx) {
		
		infoService.deleteInfo(info_idx);
		return "redirect: infoBoard.do";
		
	}
	
	//정보공유 게시판 글작성
	@RequestMapping(value= "uploadInfo.do", method = RequestMethod.POST)
	public ModelAndView InfoUpload(@RequestParam List<MultipartFile> files,  HttpSession session, InfoShare infoShare) throws FileException {
		ModelAndView mav = new ModelAndView();
		
		String root = session.getServletContext().getRealPath("/");
		System.out.println(root);
		Member sessionMember = (Member) session.getAttribute("logInInfo");
		
		if(sessionMember != null) {
			
			infoShare.setMember_id(sessionMember.getMember_id());
		}else {
			
			infoShare.setMember_nick("비회원");
		}
		
		infoService.insertInfo(infoShare, files, root);
		
		mav.setViewName("redirect:infoBoard.do");
		
		return mav;
	}
	
}



