package com.covid19.app.coronaNews.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.coronaNews.model.service.NewsFactService;
import com.covid19.app.coronaNews.model.vo.FactCheck;

import common.exception.FileException;

@Controller
public class NewsFactController {

	@Autowired
	private  NewsFactService covidNewsService; 
	
	@RequestMapping(value="/covidNews.do", method = RequestMethod.GET)
	public ModelAndView newsList(
			@RequestParam(required=false, defaultValue = "1")int cPage,
			@RequestParam(required=false, defaultValue = "t")String search_item,
			@RequestParam(required=false, defaultValue = "")String search_content) throws IOException {
		
		search_content = search_content.trim(); //공백제거
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 8;
		Map<String, Object> commandMap = covidNewsService.selectNewsList(cPage, cntPerPage, search_item, search_content);
		mav.addObject("paging", commandMap.get("NewsPaging"));
		mav.addObject("list", commandMap);
		mav.setViewName("newsBoard/news");
		
		return mav; 
	}
	
	@RequestMapping(value="/checkDetail.do", method = RequestMethod.GET)
	public ModelAndView checkDetail(int fc_idx) {
		
		ModelAndView mav = new ModelAndView();
		
		Map<String,Object> commandMap = covidNewsService.selectCheckDetail(fc_idx);
		mav.addObject("data",  commandMap);
		mav.setViewName("newsBoard/checkView");
		
		
		return mav;
	}
	
	
	@RequestMapping(value="/covidFact.do", method = RequestMethod.GET)
	public ModelAndView factCheck(
			@RequestParam(required=false, defaultValue = "1")int cPage,
			@RequestParam(required=false, defaultValue = "t")String search_item,
			@RequestParam(required=false, defaultValue = "")String search_content) {
	
		search_content = search_content.trim();
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 8;
		Map<String, Object> commandMap = covidNewsService.selectFactCheckList(cPage, cntPerPage, search_item, search_content);
		mav.addObject("paging", commandMap.get("NewsPaging"));
		mav.addObject("list",commandMap);
		mav.setViewName("newsBoard/covidFact");
		
		return mav;
	}


	
	
	@RequestMapping(value="/issueCheck.do", method = RequestMethod.GET)
	public ModelAndView issueCheck(
			@RequestParam(required=false, defaultValue = "1")int cPage,
			@RequestParam(required=false, defaultValue = "t")String search_item,
			@RequestParam(required=false, defaultValue = "")String search_content) {
		
		search_content = search_content.trim();
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 8;
		Map<String, Object> commandMap = covidNewsService.selectIssueCheckList(cPage, cntPerPage, search_item, search_content);
		mav.addObject("paging", commandMap.get("NewsPaging"));
		mav.addObject("list",commandMap);
		mav.setViewName("newsBoard/issueCheck");
		
		return mav;
	}
	
	@RequestMapping(value="/checkForm.do", method = RequestMethod.GET)
	public String issueCheckForm() {
		return "newsBoard/checkForm";
	}
	
	
	@RequestMapping(value="/checkUpload.do", method= RequestMethod.POST)
	public ModelAndView issueCheckUpload(
			//다중 파일 업로드를 위한 
			@RequestParam List<MultipartFile> files,
			HttpSession session, FactCheck factCheck, HttpServletRequest req)throws FileException{
		ModelAndView mav = new ModelAndView();		
		String root = session.getServletContext().getRealPath("/");
		
		covidNewsService.uploadIssueCheck(factCheck, files, root);
		
		mav.setViewName("redirect:/covidFact.do");	
		return mav;
	}
	
	@RequestMapping(value="/checkDownload.do", method = RequestMethod.GET)
	@ResponseBody
	public FileSystemResource checkDownload(
			HttpServletResponse response,
			HttpSession session,
			String ofname,
			String rfname,
			HttpServletRequest req
			) {
		String readFolder = req.getServletContext().getRealPath("/resources/upload/news/");
		
		//FileSystemResource
		FileSystemResource downFile = new FileSystemResource(readFolder + "/" +rfname);
		
		try {
			response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(ofname, "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		return downFile;
	} 
	
	
	
}
