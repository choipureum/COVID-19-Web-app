package com.covid19.app.board.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.annotation.processing.FilerException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.covid19.app.board.model.service.InfoService;
import com.covid19.app.board.model.vo.InfoReply;
import com.covid19.app.board.model.vo.InfoShare;
import com.covid19.app.member.model.vo.Member;

import common.exception.FileException;
import common.util.InfoUploadFileUtils;

@Controller
public class InfoShareController {

	@Autowired
	private InfoService infoService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	//정보공유 게시판 전체 목록조회
	@RequestMapping(value = "/infoBoard.do", method = RequestMethod.GET)
	public ModelAndView InfoBoardList(@RequestParam(required=false, defaultValue="1")int cPage) {
		
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 10;
		Map<String, Object> commandMap = infoService.selectInfo(cPage, cntPerPage);
		mav.addObject("paging", commandMap.get("paging"));
		mav.addObject("list", commandMap);
		mav.setViewName("infoBoard/infoBoardList");
		
		return mav;
	}

	//정보게시판 게시글 등록 양식
	@RequestMapping(value = "/infoBoardUpload.do", method = RequestMethod.GET)
	public String infoBoardUploadForm(InfoShare infoShare)throws Exception{
		
		
		return "infoBoard/infoInsertForm";
	}	
	
	//정보게시판 게시글 등록
	@RequestMapping(value = "/infoBoardUpload.do", method = RequestMethod.POST)
	public String infoBoardUpload(InfoShare infoShare, MultipartFile file)throws Exception{
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = InfoUploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;
		
		if(file != null) {
			fileName = InfoUploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		}else {
			fileName = uploadPath + File.separator + "image" + File.separator + "none";
		}
		infoShare.setInfo_img(File.separator + "imgUpload"+ ymdPath + File.separator + fileName);
//		infoShare.setInfo_thumbimg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);

			
		
		infoService.insertInfo(infoShare);
		
		
		return "redirect:/infoBoard.do";
	}	
	
	
	//정보공유 게시판 상세조회
	@RequestMapping(value = "/infoBoardDetail.do", method = RequestMethod.GET)
	public ModelAndView InfoView(@RequestParam Map<String, Object> paramMap, int info_idx){
		ModelAndView mav = new ModelAndView();
		int info_hits = 0;
		
		Map<String,Object> commandmap = infoService.selectInfoDetail(info_idx);
		List<?> replylist = infoService.selectReplyList(info_idx);
		infoService.updateInfoHit(info_idx);
		mav.addObject("info_hits", info_hits);
		mav.addObject("data", commandmap);
		mav.addObject("replylist", replylist);
		mav.setViewName("infoBoard/infoBoardView");
		return mav;
	}	
	
	//정보공유 게시판 글삭제
	@RequestMapping(value= "/deleteInfo.do", method = RequestMethod.GET)
	public String DeleteInfo(int info_idx) {
		
		infoService.deleteInfo(info_idx);
		return "redirect: infoBoard.do";
		
	}
	
//	//정보공유 게시판 글작성
//	@RequestMapping(value= "/uploadInfo.do", method = RequestMethod.POST)
//	public ModelAndView InfoUpload(@RequestParam List<MultipartFile> files,  HttpSession session, InfoShare infoShare) throws FileException {
//		ModelAndView mav = new ModelAndView();
//		
//		String root = session.getServletContext().getRealPath("/");
//		System.out.println(root);
//		Member sessionMember = (Member) session.getAttribute("logInInfo");
//		
//		if(sessionMember != null) {
//			
//			infoShare.setMember_id(sessionMember.getMember_id());
//		}else {
//			
//			infoShare.setMember_nick("비회원");
//		}
//		
//		infoService.insertInfo(infoShare, files, root);
//		
//		mav.setViewName("redirect:infoBoard.do");
//		
//		return mav;
//	}
	
	//댓글저장
	@RequestMapping(value="/infoReplySave.do", method = RequestMethod.POST)
	public String infoReplySave(HttpServletRequest request, InfoReply infoReply) {
		
		infoService.insertInfoReply(infoReply);
		
		return "redirect:/infoBoardDetail.do?info_idx=" + infoReply.getInfo_idx();
		
	}
	
	//댓글삭제
	@ResponseBody
	@RequestMapping(value= "/infoReplyDelete.do", method = RequestMethod.POST)
	public String infoReplyDelete(HttpServletRequest request, InfoReply infoReply) {
		
		infoService.deleteInfoReply(infoReply.getReply_idx());
		return "redirect:/infoBoardDetail.do?info_idx=" + infoReply.getInfo_idx();
		
	}
	
	//댓글수정
	@RequestMapping(value= "/infoReplyUpdate.do", method = RequestMethod.POST)
	public String replyUpdate(InfoReply infoReply) {
		
		infoService.replyUpdate(infoReply);
		
		return "redirect:/infoBoardDetail.do?info_idx=" + infoReply.getInfo_idx();
	}
}



