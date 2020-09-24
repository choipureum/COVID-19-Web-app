package com.covid19.app.admin.login.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.admin.login.vo.AdminMember;
import com.covid19.app.admin.login.vo.AdInfoList;
import com.covid19.app.admin.login.vo.AdMemberList;
import com.covid19.app.admin.login.vo.AdShare;
import com.covid19.app.admin.login.vo.CovidPat;
import com.covid19.app.board.model.vo.Faq;
import com.covid19.app.shareper.model.dto.Share;

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
	
	//회원삭제
	public int deleteList(String check) {
		// TODO Auto-generated method stub
		return session.delete("Admin.deleteList", check);
	}

	public int insertConfirmed(CovidPat covidpat) {
		return session.insert("Admin.insertConfirmed", covidpat);
	}
	
	//확진자 총 수
	public int selectCntConAll() {
		return session.selectOne("Admin.selectCntConAll");
	}
	
	//확진자 키워드
	public int selectCntCon(String keyword) {
		return session.selectOne("Admin.selectCntCon", keyword);
	}

	//확진자  리스트
	public List<CovidPat> selectConList(adPaging paging, String keyword) {
		Map<String, Object>map =new HashMap<>();
		map.put("paging",paging);
		map.put("keyword", keyword);
		return session.selectList("Admin.selectconSearchList", map);
	}
	
	//확진자 검색
	public List<CovidPat> selectConList(Map<String, Object> searchMap) {
		return session.selectList("Admin.selectconSearchList",searchMap);
	}

	//확진자 검색
	public int selectCntConSearchAll(String keyword) {
		return session.selectOne("Admin.selectCntConSearchAll", keyword);
	}
	
	//확진자 삭제
	public int deleteconList(int pat_no) {
		return session.delete("Admin.deleteconList", pat_no);
	}

	//---------------------------------------------------------------
	
	//정보공유 게시판
	public int selectCntInfoAll() {
		return session.selectOne("Admin.selectCntInfoAll");
	}
	//정보공유게시판 키워드 별 카운트
	public int selectCntInfo(String keyword) {
		return session.selectOne("Admin.selectCntInfo",keyword); 
	}

	//정보공유 게시판 페이징
	public List<AdInfoList> selectInfoList(adPaging paging,String keyword) {
		Map<String, Object>map =new HashMap<>();
		map.put("paging",paging);
		map.put("keyword", keyword);
		return session.selectList("Admin.selectInfoSearchList", map);
	}

	//정보공유 검색
	public List<AdInfoList> selectInfoList(Map<String, Object> searchMap) {
		return session.selectList("Admin.selectInfoSearchList",searchMap);
	}

	//정보공유 검색
	public int selectCntInfoSearchAll(String keyword) {
		return session.selectOne("Admin.selectCntInfoSearchAll", keyword);
	}

	//----------------------------------------------------------------
	
	//FAQ
	public int selectCntFaqAll() {
		return session.selectOne("Admin.selectCntFaqAll");
	}
	
	//FAQ 키워드 별 카운트
	public int selectCntFaq(String keyword) {
		return session.selectOne("Admin.selectCntFaq",keyword);
	}

	//FAQ
	public List<Faq> selectFaqList(adPaging paging,String keyword) {
		Map<String, Object>map =new HashMap<>();
		map.put("paging",paging);
		map.put("keyword", keyword);
		return session.selectList("Admin.selectFaqSearchList", map);
	}

	//FAQ검색
	public List<Faq> selectFaqList(Map<String, Object> searchMap) {
		return session.selectList("Admin.selectFaqSearchList",searchMap);
	}

	//FAQ 검색
	public int selectCntFaqSearchAll(String keyword) {
		return session.selectOne("Admin.selectCntFaqSearchAll", keyword);
	}

	//회원페이지
	public int selectCntUserAll() {
		return session.selectOne("Admin.selectCntUserAll");
	}

	public int selectCntUser(String keyword) {
		return session.selectOne("Admin.selectCntUser",keyword);
	}

	public List<AdMemberList> selectUserList(adPaging paging, String keyword) {
		Map<String, Object>map =new HashMap<>();
		map.put("paging",paging);
		map.put("keyword", keyword);
		return session.selectList("Admin.selectUserSearchList", map);
	}

	public int selectCntUserSearchAll(String keyword) {
		return session.selectOne("Admin.selectCntUserSearchAll", keyword);
	}

	public List<AdInfoList> asUserSearchList(Map<String, Object> searchMap) {
		return session.selectList("Admin.asUserSearchList",searchMap);
	}

	public int deleteInfoList(int faq_idx) {
		return session.delete("Admin.deleteInfoList", faq_idx);
	}
	
	//---------------------------------------------

	public int selectCntShareAll() {
		return session.selectOne("Admin.selectCntShareAll");
	}

	public int selectCntShare(String keyword) {
		return session.selectOne("Admin.selectCntShare", keyword);
	}

	public List<Share> selectShareList(adPaging paging, String keyword) {
		Map<String, Object>map =new HashMap<>();
		map.put("paging",paging);
		map.put("keyword", keyword);
		return session.selectList("Admin.selectShareList", map);
	}

	public int selectCntShareSearchAll(String keyword) {
		return session.selectOne("Admin.selectCntShareSearchAll", keyword);
	}

	public List<Share> adShareSearchList(Map<String, Object> searchMap) {
		return session.selectList("Admin.adShareSearchList",searchMap);
	}

	public int deleteShareList(int share_idx) {
		return session.delete("Admin.deleteShareList", share_idx);
	}







	




}
