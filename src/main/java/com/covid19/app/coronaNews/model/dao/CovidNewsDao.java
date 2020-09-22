package com.covid19.app.coronaNews.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.coronaNews.model.vo.CovidNews;
import com.covid19.app.coronaNews.model.vo.FactCheck;

import common.util.InfoPaging;
import common.util.NewsPaging;
import common.util.Paging;

@Repository
public class CovidNewsDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//크롤링 후 DB 업로드
	public int insertCovidNews(CovidNews covidnews){
		
		return sqlSession.insert("News.insertNews", covidnews);
	}
	
	//크롤링 후 DB 중복 뉴스 제거
	public int deleteCovidNews(int news_idx) {
		
		return sqlSession.delete("News.deleteNews", news_idx);
	}

	//뉴스 리스트
	public List<CovidNews> selectNewsList(NewsPaging page) {
		return sqlSession.selectList("News.selectNewsList", page);
	}

	//뉴스 카운트
	public int selectNewsCnt(Map<String,Object> commandMap) {
		return sqlSession.selectOne("News.selectNewsCnt", commandMap);

	}

	//팩트 및 이슈체크 업로드
	public int uploadIssueCheck(FactCheck factCheck) {
		return sqlSession.insert("News.uploadIssueCheck", factCheck);
	}

	//팩트 및 이슈체크 파일업로드
	public int uploadFile(Map<String, String> fileInfo) {
		return sqlSession.insert("News.uploadFile", fileInfo);
	}

	//이슈체크 카운트
	public int selectIssueCnt(Map<String, Object> commandMap) {
		
		return sqlSession.selectOne("News.selectIssueCnt", commandMap);
	}

	//이슈체크 리스트
	public List<CovidNews> selectIssueList(InfoPaging page) {
		
		return sqlSession.selectList("News.selectIssueList", page);
	}

	//팩트체크 카운트
	public int selectFactCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("News.selectFactCnt", commandMap);
	}

	//팩트체크 리스트
	public List<CovidNews> selectFactList(InfoPaging page) {
		return sqlSession.selectList("News.selectFactList", page);
	}

	public FactCheck selectCheckDetail(int fc_idx) {
		return sqlSession.selectOne("News.selectCheckDetail", fc_idx);
	}

	public List<Map<String, String>> selectFileWithCheck(int fc_idx) {
		return sqlSession.selectList("News.selectFileWithCheck", fc_idx);
	}

	
}
