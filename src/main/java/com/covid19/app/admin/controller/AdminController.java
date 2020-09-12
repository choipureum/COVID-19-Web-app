package com.covid19.app.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.admin.login.service.AdminService;
import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.AdMemberList;

import common.util.adPaging;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	//관리자 메인
	@RequestMapping(value = "/admain.do", method = RequestMethod.GET)
	public String adminHome(Locale locale, Model model) {
		logger.info("Welcome COVID-19 PROJECT!! KH_FINAL_PROJECT HERE.{}", locale);				
		return "/admin/admain";
	}
	
	//로그인 화면
	@RequestMapping(value = "/adlogin.do", method = RequestMethod.GET)
	public String adminLogin(Locale locale, Model model) {
		
		logger.info("로그인", locale);
		
		return "admin/adlogin";
		
	}
	
	//로그인 기능
	@RequestMapping(value = "/adloginimpl.do", method = RequestMethod.POST)
	public ModelAndView adloginImpl(
			AdminMember admember, 
			HttpSession session,
			HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		AdminMember res = adminService.selectAdmin(admember);
		
		if( res != null) {

			mav.addObject("alertMsg", "로그인 성공");
			mav.addObject("url", request.getContextPath()+ "/admin/admain.do");
			
		} else {
			
			mav.addObject("alertMsg", "로그인 실패");
			mav.addObject("url", request.getContextPath()+ "/admin/adlogin.do");
		}
		
		mav.setViewName("common/result");
		
		return mav;
		
	}
	
	//회원상세정보 페이지
	@RequestMapping(value = "/aduserlist.do", method = RequestMethod.GET)
	public String adminList(Locale locale, 
			Model model, 
			HttpServletRequest req, 
			@RequestParam(required = false,defaultValue = "1") int curPage) {
		
		logger.info("회원 상세정보", locale);
		
		adPaging paging = adminService.userListPaging(req);
		
		List<AdMemberList> list = adminService.selectUserlist(paging);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		return "admin/board/userdetail";
		
	}
	
	//회원상세정보 검색(이름, 닉네임, 주소, 전화번호, email)
	@RequestMapping(value = "/adusersearch.do", method = RequestMethod.POST)
	public String aduserSearch(Model model,@RequestParam String keyword,HttpServletRequest req) {
		
		String root = req.getContextPath();
		
		adPaging paging = adminService.aduserSearchPaging(req,keyword);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("keyword", keyword);
		searchMap.put("paging", paging);
				
		List<AdMemberList> list = adminService.aduserSearchList(searchMap);
		
		if(keyword.equals("")) {
			
			model.addAttribute("alertMsg", "검색어를 입력해주세요");
			model.addAttribute("url", root + "/admin/aduserlist.do");

			return "/common/result";
			
		}
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
				
		return "/admin/board/userdetail";
	}
	
	//회원삭제 기능
	@RequestMapping(value = "/aduserdelete.do", method = RequestMethod.POST)
	public String adminListDelete(HttpServletRequest req, Model model) {
		
		String root = req.getContextPath();
		
		String[] checkArr = req.getParameterValues("checkRow");
		
		if(checkArr == null) {
			model.addAttribute("alertMsg", "체크박스 선택 확인");
			model.addAttribute("url", root + "/admin/board/userdetail");
		}else {
			//선택시 삭제 실행
			for(int i=0; i<checkArr.length; i++) {
				int memberId = Integer.parseInt(checkArr[i]);
				int res = adminService.deleteList(memberId); 
			}
		}
		
		return "redirect:/admin/aduserlist.do";
		
	}
	
	//커뮤니티
	@RequestMapping(value="/adboard.do", method = RequestMethod.GET)
	public String test1(Locale locale, Model model) {
		return "admin/board/board";
	}
	
	//쇼핑
	@RequestMapping(value="/adshrelist.do", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {
		return "admin/adshare/shlist";
	}
	
	//FAQ
	@RequestMapping(value="/adfaq.do", method = RequestMethod.GET)
	public String test3(Locale locale, Model model) {
		return "admin/board/faq";
	}
	
	//판매자 관리
	@RequestMapping(value="/adseller.do", method = RequestMethod.GET)
	public String test4(Locale locale, Model model) {
		return "admin/adshare/seller";
	}
	
	//확진자 페이지
	@RequestMapping(value = "/adconfirmed.do", method = RequestMethod.GET)
	public String adminConfirmed(Locale locale, Model model) {
		
		logger.info("확진자 페이지", locale);
		
		return "admin/board/confirmed";
		
	}
	
//	@RequestMapping(value = "/adconinsert.do", method = RequestMethod.POST)
//	public ModelAndView adminConInsert(HttpServletRequest request) {
//		
//		CovidPat covid = new CovidPat();
//		
//		covid.setPatName((String)request.getParameter("name"));
//		covid.setPatTime((String)request.getParameter("time"));
//		covid.setPatLoc((String)request.getParameter("loc"));
//		covid.setPatSex((String)request.getParameter("sex"));
//		covid.setPatRoute((String)request.getParameter("route"));
//		covid.setPatAge((String)request.getParameter("age"));
//		
//		return null;
//		
//	}
	
//	//쇼핑 게시판
//	@RequestMapping(value = "/adsharelist.do", method = RequestMethod.GET)
//	public String adminShareList(Locale locale, 
//			Model model, 
//			HttpServletRequest req, 
//			@RequestParam(required = false,defaultValue = "1") int curPage) {
//				
//		adPaging paging = adminService.shareListPaging(req);
//		
//		List<AdShare> slist = adminService.selectShareList(paging);
//		
//		model.addAttribute("slist", slist);
//		model.addAttribute("paging", paging);
//		
//		return "admin/adshare/shlist";
//		
//	};
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
}
