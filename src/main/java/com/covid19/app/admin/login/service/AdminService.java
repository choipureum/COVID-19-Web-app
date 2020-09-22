package com.covid19.app.admin.login.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.CovidPat;
import com.covid19.app.board.model.vo.Faq;
import com.covid19.app.member.model.vo.Member;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.admin.login.vo.AdInfoList;
import com.covid19.app.admin.login.vo.AdMemberList;
import com.covid19.app.admin.login.vo.AdShare;

import common.util.adPaging;

public interface AdminService {

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember);

	//회원 삭제
	public int deleteList(String check);

	public int insertConfirmed(Map<String, Object> commandMap);

	//확진자 상세보기 리스트
	public List<CovidPat> selectConlist(adPaging paging, String keyword);

	//확진자 페이징 처리
	public adPaging conListPaging(HttpServletRequest req, String keyword);

	//확진자 검색
	public List<CovidPat> adconSearchList(Map<String, Object> searchMap);

	//확진자 검색 리스트
	public adPaging adconSearchPaging(HttpServletRequest req, String keyword);

	//확진자 삭제
	public int deleteconList(int pat_no);

	//--------------------------------------------------------------------
	
	//정보공유 게시판
	public adPaging boardInfoList(HttpServletRequest req,String keyword);

	//정보공유 게시판 페이징
	public List<AdInfoList> selectInfolist(adPaging paging, String keyword);

	//정보공유 검색
	public List<AdInfoList> adinfoSearchList(Map<String, Object> searchMap);

	//정보공유 검색
	public adPaging adinfoSearchPaging(HttpServletRequest req, String keyword);
	
	//---------------------------------------------------------------------

	//FAQ 페이징
	public adPaging faqList(HttpServletRequest req, String keyword);
	
	//FAQ 리스트
	public List<Faq> selectFaqlist(adPaging paging, String keyword);

	//FAQ 검색
	public adPaging adFaqSearchPaging(HttpServletRequest req, String keyword);
	
	//FAQ 검색
	public List<Faq> adFaqSearchList(Map<String, Object> searchMap);

	//---------------------------------------------------------------

	//정보공유 게시판
	
	public adPaging userListPaging(HttpServletRequest req, String keyword);

	public List<AdMemberList> selectUserList(adPaging paging, String keyword);

	public adPaging adUserSearchPaging(HttpServletRequest req, String keyword);

	public List<AdInfoList> asUserSearchList(Map<String, Object> searchMap);

	public int deleteInfoList(int faq_idx);

	//---------------------------------------------
	
	//쇼핑 게시판
	
	public adPaging shareListPaging(HttpServletRequest req, String keyword);

	public List<Share> selectShareList(adPaging paging, String keyword);

	public adPaging adShareSearchPaging(HttpServletRequest req, String keyword);

	public List<Share> adShareSearchList(Map<String, Object> searchMap);

	public int deleteShareList(int share_idx);


	








	
	


}
