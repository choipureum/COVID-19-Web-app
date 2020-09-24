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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.admin.login.service.AdminService;
import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.CovidPat;
import com.covid19.app.board.model.vo.Faq;
import com.covid19.app.member.model.vo.Member;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.admin.login.vo.AdInfoList;
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
	
	//회원삭제 기능
	@RequestMapping(value = "/aduserdelete.do", method = RequestMethod.POST)
	public String adminListDelete(HttpServletRequest req, Model model) {
		
		String root = req.getContextPath();
		
		String[] checkArr = req.getParameterValues("checkRow");
		
		if(checkArr == null) {
			model.addAttribute("alertMsg", "체크박스 선택 확인");
			model.addAttribute("url", root + "/admin/userdetail.do");
		}else {
			//선택시 삭제 실행
			for(int i=0; i<checkArr.length; i++) {
				String check = checkArr[i];
				int res = adminService.deleteList(check); 
			}
		}
		
		return "redirect:/admin/aduserlist.do";
		
	}
	
	//확진자 페이지
	@RequestMapping(value = "/adconfirmed.do", method = RequestMethod.GET)
	public String adminConfirmed(Locale locale, Model model, HttpServletRequest req, 
			@RequestParam(required = false,defaultValue = "1") int curPage,
			@RequestParam(required = false,defaultValue = "") String keyword) {
		
		
		adPaging paging = adminService.conListPaging(req, keyword);
		
		List<CovidPat> list = adminService.selectConlist(paging, keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		model.addAttribute("keyword",keyword);
		
		return "admin/board/confirmed";
		
	}
	
	//확진자 추가 페이지
	@RequestMapping(value="/adconfiremedimpl.do", method=RequestMethod.GET)
	public String confirmedImpl() {
		return "/admin/board/confirmedwrite";
	}
	
	//확진자 추가 페이지
	@RequestMapping(value="/adconfiremedimpl.do", method=RequestMethod.POST)
	public ModelAndView confirmedImpl(@RequestParam Map<String,Object> commandMap,HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		
		int res=adminService.insertConfirmed(commandMap);
		String root = request.getContextPath();
		
		if(res > 0) {
			mav.addObject("alertMsg", "등록 성공");
			mav.addObject("url", "/admin/adconfirmed.do");
			mav.setViewName("/common/result");
		} else {
			mav.addObject("alertMsg", "등록 실패");
			mav.addObject("url", root + "/admin/adconfiremedimpl.do"); 
			mav.setViewName("/common/result");
		}
		
		return mav;	
		
	}
	
	//확진자 검색(이름)
	@RequestMapping(value = "/adconsearch.do", method = RequestMethod.POST)
	public String adconSearch(Model model,@RequestParam String keyword,HttpServletRequest req) {
		
		String root = req.getContextPath();
		
		adPaging paging = adminService.adconSearchPaging(req,keyword);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("keyword", keyword);
		searchMap.put("paging", paging);
				
		List<CovidPat> list = adminService.adconSearchList(searchMap);
		
		if(keyword.equals("")) {
			
			model.addAttribute("alertMsg", "검색어를 입력해주세요");
			model.addAttribute("url", root + "/admin/adconfirmed.do");

			return "/common/result";
			
		}
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
				
		return "/admin/board/confirmed";
	}
	
	//확진자삭제 기능
	@RequestMapping(value = "/adcondelete.do", method = RequestMethod.POST)
	public String adminConDelete(HttpServletRequest req, Model model) {
		
		String root = req.getContextPath();
		
		String[] checkArr = req.getParameterValues("checkRow");
		
		if(checkArr == null) {
			model.addAttribute("alertMsg", "체크박스 선택 확인");
			model.addAttribute("url", root + "/admin/adconfirmed.do");
		}else {
			//선택시 삭제 실행
			for(int i=0; i<checkArr.length; i++) {
				int pat_no = Integer.parseInt(checkArr[i]);
				int res = adminService.deleteconList(pat_no); 
			}
		}
		
		return "redirect:/admin/adconfirmed.do";
		
	}
	
	//--------------------------------------------------------
	
	//정보공유
	@RequestMapping(value="/adboard.do", method = RequestMethod.GET)
	public String infoboardList(Locale locale, Model model, HttpServletRequest req, 
			@RequestParam(required = false,defaultValue = "1") int curPage,
			@RequestParam(required = false,defaultValue = "") String keyword) {
			
		adPaging paging = adminService.boardInfoList(req,keyword);
		
		List<AdInfoList> list = adminService.selectInfolist(paging,keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		model.addAttribute("keyword",keyword);
		
		return "admin/board/board";
	}
	
	
	//정보정보 검색(작성자, 제목)
	@RequestMapping(value = "/adinfosearch.do", method = RequestMethod.POST)
	public String infoboardListImpl(Model model,@RequestParam String keyword,HttpServletRequest req) {
		
		String root = req.getContextPath();
		
		adPaging paging = adminService.adinfoSearchPaging(req,keyword);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("keyword", keyword);
		searchMap.put("paging", paging);
				
		List<AdInfoList> list = adminService.adinfoSearchList(searchMap);
		
		if(keyword.equals("")) {
			
			model.addAttribute("alertMsg", "검색어를 입력해주세요");
			model.addAttribute("url", root + "/admin/adboard.do");

			return "/common/result";
			
		}
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
				
		return "/admin/board/board";
	}
	
	//--------------------------------------------------------
	
	//FAQ
	@RequestMapping(value="/adfaq.do", method = RequestMethod.GET)
	public String faqlist(Locale locale, Model model, HttpServletRequest req, 
			@RequestParam(required = false,defaultValue = "1") int curPage,
			@RequestParam(required = false,defaultValue = "") String keyword) {
		
		adPaging paging = adminService.faqList(req, keyword);
		
		List<Faq> list = adminService.selectFaqlist(paging, keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		model.addAttribute("keyword",keyword);
		
		return "admin/board/faq";
	}
	
	//FAQ검색
	@RequestMapping(value = "/adfaqimpl.do", method = RequestMethod.POST)
	public String faqlistImpl(Model model,@RequestParam String keyword,HttpServletRequest req) {
		
		String root = req.getContextPath();
		
		adPaging paging = adminService.adFaqSearchPaging(req,keyword);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("keyword", keyword);
		searchMap.put("paging", paging);
				
		List<Faq> list = adminService.adFaqSearchList(searchMap);
		
		if(keyword.equals("")) {
			
			model.addAttribute("alertMsg", "검색어를 입력해주세요");
			model.addAttribute("url", root + "/admin/adboard.do");

			return "/common/result";
			
		}
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
				
		return "/admin/board/faq";
	}
	
	//쇼핑
	@RequestMapping(value="/adshrelist.do", method = RequestMethod.GET)
	public String AdShareList(Locale locale, Model model, HttpServletRequest req, 
			@RequestParam(required = false,defaultValue = "1") int curPage,
			@RequestParam(required = false,defaultValue = "") String keyword) {
		
		adPaging paging = adminService.shareListPaging(req, keyword);
		
		List<Share> list = adminService.selectShareList(paging, keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		model.addAttribute("keyword",keyword);
		
		return "admin/adshare/shlist";
	}
	
	//쇼핑 검색
	@RequestMapping(value = "/adsharesearch.do", method = RequestMethod.POST)
	public String AdShareListImpl(Model model,@RequestParam String keyword,HttpServletRequest req) {
		
		String root = req.getContextPath();
		
		adPaging paging = adminService.adShareSearchPaging(req,keyword);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("keyword", keyword);
		searchMap.put("paging", paging);
		
		List<Share> list = adminService.adShareSearchList(searchMap);
		
		if(keyword.equals("")) {
			
			model.addAttribute("alertMsg", "검색어를 입력해주세요");
			model.addAttribute("url", root + "/admin/adshrelist.do");
			
			return "/common/result";
			
		}
		
		model.addAttribute("keyword", keyword);
		model.addAttribute("list", list);
		
		model.addAttribute("paging", paging);
		
		return "/admin/adshare/shlist";
	}
	
	//쇼핑목록 삭제
	@RequestMapping(value = "/adsharedelete.do", method = RequestMethod.POST)
	public String adminShareDelete(HttpServletRequest req, Model model) {
		
		String root = req.getContextPath();
		
		String[] checkArr = req.getParameterValues("checkRow");
		
		if(checkArr == null) {
			model.addAttribute("alertMsg", "체크박스 선택 확인");
			model.addAttribute("url", root + "/admin/adshrelist.do");
		}else {
			//선택시 삭제 실행
			for(int i=0; i<checkArr.length; i++) {
				int share_idx = Integer.parseInt(checkArr[i]);
				int res = adminService.deleteShareList(share_idx); 
			}
		}
		
		return "redirect:/admin/adshrelist.do";
		
	}
	
	//판매자 관리
	@RequestMapping(value="/adseller.do", method = RequestMethod.GET)
	public String test4(Locale locale, Model model) {
		return "admin/adshare/seller";
	}
	
	
	//멤버 페이지
	@RequestMapping(value = "/aduserlist.do", method = RequestMethod.GET)
	public String adUserList(Locale locale, Model model, HttpServletRequest req, 
			@RequestParam(required = false,defaultValue = "1") int curPage,
			@RequestParam(required = false,defaultValue = "") String keyword) {
		
		
		adPaging paging = adminService.userListPaging(req, keyword);
		
		List<AdMemberList> list = adminService.selectUserList(paging, keyword);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		model.addAttribute("keyword",keyword);
		
		return "/admin/board/userdetail";
		
	}
	

	//유저 검색(작성자, 제목)
	@RequestMapping(value = "/adusersearch.do", method = RequestMethod.POST)
	public String adUserListImpl(Model model,@RequestParam String keyword,HttpServletRequest req) {
		
		String root = req.getContextPath();
		
		adPaging paging = adminService.adUserSearchPaging(req,keyword);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("keyword", keyword);
		searchMap.put("paging", paging);
				
		List<AdInfoList> list = adminService.asUserSearchList(searchMap);
		
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
	
	//정보공유삭제 기능
	@RequestMapping(value = "/adinfodelete.do", method = RequestMethod.POST)
	public String adminInfoDelete(HttpServletRequest req, Model model) {
		
		String root = req.getContextPath();
		
		String[] checkArr = req.getParameterValues("checkRow");
		
		if(checkArr == null) {
			model.addAttribute("alertMsg", "체크박스 선택 확인");
			model.addAttribute("url", root + "/admin/adboard.do");
		}else {
			//선택시 삭제 실행
			for(int i=0; i<checkArr.length; i++) {
				int faq_idx = Integer.parseInt(checkArr[i]);
				int res = adminService.deleteInfoList(faq_idx); 
			}
		}
		
		return "redirect:/admin/adboard.do";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
}
