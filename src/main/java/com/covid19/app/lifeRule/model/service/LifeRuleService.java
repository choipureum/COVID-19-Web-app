package com.covid19.app.lifeRule.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.lifeRule.model.dao.LifeRuleDao;

import common.util.RulePaging;

@Service
public class LifeRuleService {

	@Autowired
	private LifeRuleDao lifeRuleDao;
	
	//기본수칙 총 게시물수
	public int selectBasicRuleContentCnt() {
		return lifeRuleDao.selectBasicRuleContentCnt();
	}	
	//기본수칙 리스트 출력
	public Map<String, Object> selectBasicRuleList(int currentPage, int cntPerPage) {
		
		 Map<String,Object> commandMap = new HashMap<String, Object>();
         
         //페이징 처리를 위한 객체 생성
         RulePaging p = new RulePaging(lifeRuleDao.selectBasicRuleContentCnt(), currentPage, cntPerPage);
         
         //현재 페이지에 필요한 게시물 목록
         List<Map<String,Object>> RuleList = lifeRuleDao.selecBasicRuleList(p);
         commandMap.put("BasicList", RuleList);
         commandMap.put("paging", p);
   
		return commandMap;
	}
	//기본수칙 디테일뷰
	public Map<String, Object> selectBasicDetail(int lfNo) {
		Map<String,Object> commandMap = new HashMap<String, Object>();
		Map<String,Object> basic= lifeRuleDao.selectBasicDetail(lfNo);
		//List<Map<String,String>> flist = noticeDao.selectFileWithNotice(nIdx);
		
		commandMap.put("basic", basic);
		//파일
		//commandMap.put("flist", flist);			   
		return commandMap;
	
	}
	//기본 수칙 -2홍보 / 리스트
	public Map<String, Object> selectBasic2RuleList(int currentPage, int cntPerPage) {
		Map<String,Object> commandMap = new HashMap<String, Object>();
         
         //페이징 처리를 위한 객체 생성
         RulePaging p = new RulePaging(lifeRuleDao.selectBasic2RuleContentCnt(), currentPage, cntPerPage);
         
         //현재 페이지에 필요한 게시물 목록
         List<Map<String,Object>> RuleList = lifeRuleDao.selecBasic2RuleList(p);
         commandMap.put("BasicList", RuleList);
         commandMap.put("paging", p);
   
		return commandMap;
	}
	//기본 수칙 -2홍보 / 숫자
	public int selectBasic2RuleContentCnt() {
		return lifeRuleDao.selectBasic2RuleContentCnt();
	}
	
	
	
	
}
