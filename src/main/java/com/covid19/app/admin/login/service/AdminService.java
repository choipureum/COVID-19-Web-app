package com.covid19.app.admin.login.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.AdMemberList;
import com.covid19.app.admin.login.vo.AdShare;

import common.util.adPaging;

public interface AdminService {

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember);

	//회원 상세보기 리스트
	public List<AdMemberList> selectUserlist(adPaging adpaging);

	//회원 상세보기 페이징 처리
	public adPaging userListPaging(HttpServletRequest req);

	//회원 상세보기 검색 리스트 페이징
	public adPaging aduserSearchPaging(HttpServletRequest req, String keyword);

	//회원 상세보기 이름,주소 검색결과
	public List<AdMemberList> aduserSearchList(Map<String, Object> searchMap);

	//회원 삭제
	public int deleteList(int memberId);

	//쇼핑 페이징 처리
	public adPaging shareListPaging(HttpServletRequest req);

	//쇼핑 리스트 처리
	public List<AdShare> selectShareList(adPaging paging);







	
	


}
