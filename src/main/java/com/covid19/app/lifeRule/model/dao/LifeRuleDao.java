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
		
	
	public int selectBasicRuleContentCnt() {	
		return sqlSession.selectOne("LifeRule.selectBasicRuleContentCnt");
	}

	public List<Map<String, Object>> selecBasicRuleList(RulePaging p) {
		return sqlSession.selectList("LifeRule.selectBasicRuleList", p);
	}

	public Map<String, Object> selectBasicDetail(int lfNo) {
		return sqlSession.selectOne("LifeRule.selectBasicDetail",lfNo);
	}
	
	public int selectBasic2RuleContentCnt() {
		return sqlSession.selectOne("LifeRule.selectBasic2RuleContentCnt");
	}

	public List<Map<String, Object>> selecBasic2RuleList(RulePaging p) {
		return sqlSession.selectList("LifeRule.selectBasic2RuleList", p);
	}
}
