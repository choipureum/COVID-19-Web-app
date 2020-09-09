package com.covid19.app.admin.login.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.AdMemberList;
import com.covid19.app.admin.login.vo.AdShare;
import com.covid19.app.admin.login.vo.CovidPat;

import common.util.Paging;
import common.util.adPaging;

@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate session;

	//로그인 기능
	public AdminMember selectAdmin(AdminMember admember) {
		return session.selectOne("Admin.selectAdmin", admember);
	}

	//회원 상세보기 리스트
	public List<AdMemberList> selectUserList(adPaging adpaging) {
		return session.selectList("Admin.selectUserList", adpaging);
	}

	//총 게시글 수
	public int selectCntUserAll() {
		return session.selectOne("Admin.selectCntUserAll");
	}
	
	//회원 상세보기 검색 리스트 페이징
	public int selectCntListSearchAll(String keyword) {
		return session.selectOne("Admin.selectCntListSearchAll", keyword);
	}

	//회원 검색
	public List<AdMemberList> selectUserList(Map<String, Object> searchMap) {
		return session.selectList("Admin.selectSearchList",searchMap);
	}
	
	//쇼핑 페이징 처리
	public int deleteList(int memberId) {
		// TODO Auto-generated method stub
		return session.delete("Admin.deleteList", memberId);
	}
	
	//쇼핑 총 게시글
	public int selectCntShareAll() {
		return session.selectOne("Admin.selectCntShareAll");
	}

	//쇼핑 리스트
	public List<AdShare> selectShareList(adPaging paging) {
		return session.selectList("Admin.selectShareList", paging);
	}

	




}
