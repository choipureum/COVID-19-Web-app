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
		
	//기본수칙1 총 게시물수
	public int selectBasicRuleContentCnt(String search_item,String search_content) {
		Map<String,Object> commandMap = new HashMap<>();
		commandMap.put("search_item",search_item);
		commandMap.put("search_content", search_content);
		
		return lifeRuleDao.selectBasicRuleContentCnt(commandMap);
	}	
	//기본수칙1 리스트 출력
	public Map<String, Object> selectBasicRuleList(int currentPage, int cntPerPage,String search_item,String search_content) {
		
		 Map<String,Object> commandMap = new HashMap<String, Object>();
		 commandMap.put("search_item",search_item);
		 commandMap.put("search_content", search_content);	
         //페이징 처리를 위한 객체 생성
         RulePaging p = new RulePaging(lifeRuleDao.selectBasicRuleContentCnt(commandMap), currentPage, cntPerPage);
         p.setSearch_item(search_item);
         p.setSearch_content(search_content);
         //현재 페이지에 필요한 게시물 목록
         List<Map<String,Object>> RuleList = lifeRuleDao.selecBasicRuleList(p);
         commandMap.put("BasicList", RuleList);
         commandMap.put("paging", p);
   
		return commandMap;
	}
	
	//기본 수칙 -2홍보 / 리스트
	public Map<String, Object> selectBasic2RuleList(int currentPage, int cntPerPage,String search_item,String search_content) {
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("search_item",search_item);
		commandMap.put("search_content", search_content);	
         //페이징 처리를 위한 객체 생성
         RulePaging p = new RulePaging(lifeRuleDao.selectBasic2RuleContentCnt(commandMap), currentPage, cntPerPage);
         p.setSearch_item(search_item);
         p.setSearch_content(search_content);
         //현재 페이지에 필요한 게시물 목록
         List<Map<String,Object>> RuleList = lifeRuleDao.selecBasic2RuleList(p);
         commandMap.put("BasicList", RuleList);
         commandMap.put("paging", p);
   
		return commandMap;
	}
	//기본 수칙 -2홍보 / 숫자
	public int selectBasic2RuleContentCnt(String search_item,String search_content) {
		Map<String,Object> commandMap = new HashMap<>();
		commandMap.put("search_item",search_item);
		commandMap.put("search_content", search_content);
		return lifeRuleDao.selectBasic2RuleContentCnt(commandMap);
	}
	
	//기본 수칙 -3 설명 / 리스트
		public Map<String, Object> selectBasic3RuleList(int currentPage, int cntPerPage,String search_item,String search_content) {
			Map<String,Object> commandMap = new HashMap<String, Object>();
			commandMap.put("search_item",search_item);
			commandMap.put("search_content", search_content);	
	         //페이징 처리를 위한 객체 생성
	         RulePaging p = new RulePaging(lifeRuleDao.selectBasic3RuleContentCnt(commandMap), currentPage, cntPerPage);
	         p.setSearch_item(search_item);
	         p.setSearch_content(search_content);
	         //현재 페이지에 필요한 게시물 목록
	         List<Map<String,Object>> RuleList = lifeRuleDao.selecBasic3RuleList(p);
	         commandMap.put("BasicList", RuleList);
	         commandMap.put("paging", p);
	   
			return commandMap;
		}
		//기본 수칙 -3 설명/ 숫자
		public int selectBasic3RuleContentCnt(String search_item,String search_content) {
			Map<String,Object> commandMap = new HashMap<>();
			commandMap.put("search_item",search_item);
			commandMap.put("search_content", search_content);
			return lifeRuleDao.selectBasic3RuleContentCnt(commandMap);
		}
		
		//기본 수칙 -4홍보 / 리스트
		public Map<String, Object> selectBasic4RuleList(int currentPage, int cntPerPage,String search_item,String search_content) {
			Map<String,Object> commandMap = new HashMap<String, Object>();
			commandMap.put("search_item",search_item);
			commandMap.put("search_content", search_content);	
	         //페이징 처리를 위한 객체 생성
	         RulePaging p = new RulePaging(lifeRuleDao.selectBasic4RuleContentCnt(commandMap), currentPage, cntPerPage);
	         p.setSearch_item(search_item);
	         p.setSearch_content(search_content);
	         //현재 페이지에 필요한 게시물 목록
	         List<Map<String,Object>> RuleList = lifeRuleDao.selecBasic4RuleList(p);
	         commandMap.put("BasicList", RuleList);
	         commandMap.put("paging", p);
	   
			return commandMap;
		}
		//기본 수칙 -4홍보 / 숫자
		public int selectBasic4RuleContentCnt(String search_item,String search_content) {
			Map<String,Object> commandMap = new HashMap<>();
			commandMap.put("search_item",search_item);
			commandMap.put("search_content", search_content);
			return lifeRuleDao.selectBasic4RuleContentCnt(commandMap);
		}
	
	
	
	
}
