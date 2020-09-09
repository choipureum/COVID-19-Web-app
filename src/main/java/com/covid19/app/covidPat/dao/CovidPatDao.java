package com.covid19.app.covidPat.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CovidPatDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
