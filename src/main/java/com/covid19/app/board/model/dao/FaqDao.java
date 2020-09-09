package com.covid19.app.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.board.model.vo.Faq;

@Repository
public class FaqDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Faq> selectFaq() {
		
		return sqlSession.selectList("Faq.selectFaq");
	}

}
