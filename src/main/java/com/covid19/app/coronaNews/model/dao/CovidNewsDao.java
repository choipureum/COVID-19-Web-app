package com.covid19.app.coronaNews.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.coronaNews.model.vo.CovidNews;

import common.util.Paging;

@Repository
public class CovidNewsDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertCovidNews(CovidNews covidnews){
		
		return sqlSession.insert("News.insertNews", covidnews);
	}
	
	public int deleteCovidNews(int news_idx) {
		
		return sqlSession.delete("News.deleteNews", news_idx);
	}


	public List<CovidNews> selectNewsList(Paging page) {
		return sqlSession.selectList("News.selectNewsList", page);
	}


	public int selectNewsCnt() {
		return sqlSession.selectOne("News.selectNewsCnt");

	}

	
}
