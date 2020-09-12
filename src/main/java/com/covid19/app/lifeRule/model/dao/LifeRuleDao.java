package com.covid19.app.lifeRule.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import common.util.RulePaging;

@Repository
public class LifeRuleDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
		
	public Map<String, Object> selectBasicDetail(int lfNo) {
		return sqlSession.selectOne("LifeRule.selectBasicDetail",lfNo);
	}
	//1번
	public int selectBasicRuleContentCnt(Map<String,Object> commandMap) {	
		return sqlSession.selectOne("LifeRule.selectBasicRuleContentCnt",commandMap);
	}

	public List<Map<String, Object>> selecBasicRuleList(RulePaging p) {
		return sqlSession.selectList("LifeRule.selectBasicRuleList", p);
	}
	
	//2번
	public int selectBasic2RuleContentCnt(Map<String,Object> commandMap) {
		return sqlSession.selectOne("LifeRule.selectBasic2RuleContentCnt",commandMap);
	}

	public List<Map<String, Object>> selecBasic2RuleList(RulePaging p) {
		return sqlSession.selectList("LifeRule.selectBasic2RuleList", p);
	}
	
	//3번
	public int selectBasic3RuleContentCnt(Map<String,Object> commandMap) {
		return sqlSession.selectOne("LifeRule.selectBasic3RuleContentCnt",commandMap);
	}

	public List<Map<String, Object>> selecBasic3RuleList(RulePaging p) {
		return sqlSession.selectList("LifeRule.selectBasic3RuleList", p);
	}
	
	//4번
	public int selectBasic4RuleContentCnt(Map<String,Object> commandMap) {
		return sqlSession.selectOne("LifeRule.selectBasic4RuleContentCnt",commandMap);
	}

	public List<Map<String, Object>> selecBasic4RuleList(RulePaging p) {
		return sqlSession.selectList("LifeRule.selectBasic4RuleList", p);
	}
}
