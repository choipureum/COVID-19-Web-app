package com.covid19.app.admin.login.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.admin.login.dao.AdminDao;
import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.CovidPat;
import com.covid19.app.board.model.vo.Faq;
import com.covid19.app.member.model.vo.Member;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.admin.login.vo.AdInfoList;
import com.covid19.app.admin.login.vo.AdMemberList;
import com.covid19.app.admin.login.vo.AdShare;

import common.util.adPaging;


@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	//로그인 기능
	@Override
	public AdminMember selectAdmin(AdminMember admember) {
		return adminDao.selectAdmin(admember);
	}


	//회원 상세보기 삭제
	@Override
	public int deleteList(String check) {
		int res = adminDao.deleteList(check);
		return res;
	}



	//확진자 상세보기 리스트
	@Override
	public List<CovidPat> selectConlist(adPaging paging, String keyword) {
		List<CovidPat> list = adminDao.selectConList(paging, keyword);
		return list;
	}
	
	//확진자 페이징 처리
	@Override
	public adPaging conListPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		int totalCount=0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		if(keyword.equals("")) {
			//테이블의 총 게시글 수를 조회한다(키워드없을때)
			totalCount = adminDao.selectCntConAll();
		}else {
			//키워드있을때
			totalCount=adminDao.selectCntCon(keyword);
		}
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}
	
	//확진자 등록
	@Override
	public int insertConfirmed(Map<String, Object> commandMap) {
		
		CovidPat covidpat = new CovidPat();
		
		covidpat.setPat_Name((String)commandMap.get("patName"));
		covidpat.setPat_Sex((String)commandMap.get("patSex"));
		covidpat.setPat_Loc((String)commandMap.get("patLoc"));
		covidpat.setPat_Route((String)commandMap.get("patRoute"));
		
		return adminDao.insertConfirmed(covidpat);
	}

	//확진자 검색
	@Override
	public List<CovidPat> adconSearchList(Map<String, Object> searchMap) {
		List<CovidPat> list = adminDao.selectConList(searchMap);
		return list;
	}

	//확진자 검색 리스트
	@Override
	public adPaging adconSearchPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntConSearchAll(keyword);
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//확진자 삭제
	@Override
	public int deleteconList(int pat_no) {
		int res = adminDao.deleteconList(pat_no);
		return res;
	}

	//---------------------------------------------------------------------------------
	
	//정보공유 게시판
	@Override
	public adPaging boardInfoList(HttpServletRequest req,String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		int totalCount=0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		if(keyword.equals("")) {
			//테이블의 총 게시글 수를 조회한다(키워드없을때)
			totalCount = adminDao.selectCntInfoAll();
		}else {
			//키워드있을때
			totalCount=adminDao.selectCntInfo(keyword);
		}

		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//정보공유 게시판
	@Override
	public List<AdInfoList> selectInfolist(adPaging paging,String keyword) {
		List<AdInfoList> list = adminDao.selectInfoList(paging,keyword);
//		System.out.println("null값 찾기 " + list);
		return list;
	}
	
	//----------------------------------------------------------------------------------

	//정보공유 검색
	@Override
	public List<AdInfoList> adinfoSearchList(Map<String, Object> searchMap) {
		List<AdInfoList> list = adminDao.selectInfoList(searchMap);
		return list;
	}

	//정보공유 검색
	@Override
	public adPaging adinfoSearchPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntInfoSearchAll(keyword);
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//FAQ 리스트
	@Override
	public adPaging faqList(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		int totalCount=0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		if(keyword.equals("")) {
			//테이블의 총 게시글 수를 조회한다(키워드없을때)
			totalCount = adminDao.selectCntFaqAll();
		}else {
			//키워드있을때
			totalCount=adminDao.selectCntFaq(keyword);
		}
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//FAQ 리스트
	@Override
	public List<Faq> selectFaqlist(adPaging paging,String keyword) {
		List<Faq> list = adminDao.selectFaqList(paging, keyword);
//		System.out.println("FAQ null값 찾기 " + list);
		return list;
	}

	//FAQ 검색
	@Override
	public adPaging adFaqSearchPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntFaqSearchAll(keyword);
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//FAQ 검ㅅㄱ
	@Override
	public List<Faq> adFaqSearchList(Map<String, Object> searchMap) {
		List<Faq> list = adminDao.selectFaqList(searchMap);
		return list;
	}

	@Override
	public adPaging userListPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		int totalCount=0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		if(keyword.equals("")) {
			//테이블의 총 게시글 수를 조회한다(키워드없을때)
			totalCount = adminDao.selectCntUserAll();
		}else {
			//키워드있을때
			totalCount=adminDao.selectCntUser(keyword);
		}
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
		
	}

	@Override
	public List<AdMemberList> selectUserList(adPaging paging, String keyword) {
		List<AdMemberList> list = adminDao.selectUserList(paging,keyword);
		return list;
	}

	@Override
	public adPaging adUserSearchPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntUserSearchAll(keyword);
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	@Override
	public List<AdInfoList> asUserSearchList(Map<String, Object> searchMap) {
		List<AdInfoList> list = adminDao.asUserSearchList(searchMap);
		return list;
	}


	@Override
	public int deleteInfoList(int faq_idx) {
		int res = adminDao.deleteInfoList(faq_idx);
		return res;
	}


	@Override
	public adPaging shareListPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		int totalCount=0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		if(keyword.equals("")) {
			//테이블의 총 게시글 수를 조회한다(키워드없을때)
			totalCount = adminDao.selectCntShareAll();
		}else {
			//키워드있을때
			totalCount=adminDao.selectCntShare(keyword);
		}
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}


	@Override
	public List<Share> selectShareList(adPaging paging, String keyword) {
		List<Share> list = adminDao.selectShareList(paging,keyword);
		return list;
	}


	@Override
	public adPaging adShareSearchPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntShareSearchAll(keyword);
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}


	@Override
	public List<Share> adShareSearchList(Map<String, Object> searchMap) {
		List<Share> list = adminDao.adShareSearchList(searchMap);
		return list;
	}


	@Override
	public int deleteShareList(int share_idx) {
		int res = adminDao.deleteShareList(share_idx);
		return res;
	}


	






}
