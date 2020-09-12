package com.covid19.app.admin.login.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.admin.login.dao.AdminDao;
import com.covid19.app.admin.login.vo.AdminMember;
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

	//회원 상세보기 리스트
	@Override
	public List<AdMemberList> selectUserlist(adPaging adpaging) {
		List<AdMemberList> list = adminDao.selectUserList(adpaging);
		System.out.println("null값 찾기 " + list);
		return list;
	}

	//회원 상세보기 페이징 처리
	@Override
	public adPaging userListPaging(HttpServletRequest req) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntUserAll();
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//회원 상세보기 검색 리스트 페이징
	@Override
	public adPaging aduserSearchPaging(HttpServletRequest req, String keyword) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntListSearchAll(keyword);
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//회원검색
	@Override
	public List<AdMemberList> aduserSearchList(Map<String, Object> searchMap) {
		List<AdMemberList> list = adminDao.selectUserList(searchMap);
		return list;
	}

	//회원 상세보기 삭제
	@Override
	public int deleteList(int memberId) {
		int res = adminDao.deleteList(memberId);
		return res;
	}

	//쇼핑 페이징 처리
	@Override
	public adPaging shareListPaging(HttpServletRequest req) {
		String param = req.getParameter("curPage");
		int curPage = 0 ;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		}
		
		//테이블의 총 게시글 수를 조회한다
		int totalCount = adminDao.selectCntShareAll();
		
		//paging객체 생성
		adPaging paging = new adPaging(totalCount, curPage);
		
		//계산된 Paging 객체 반환
		return paging;
	}

	//쇼핑 리스트
	@Override
	public List<AdShare> selectShareList(adPaging paging) {
		List<AdShare> list = adminDao.selectShareList(paging);
		return list;
	}
	






}
