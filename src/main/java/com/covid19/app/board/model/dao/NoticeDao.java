package com.covid19.app.board.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.board.model.vo.Notice;

import common.util.InfoPaging;

@Repository
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Notice> selectNoticeList(InfoPaging p) {
		
		return sqlSession.selectList("Notice.selectNoticeList", p);
	}

	public int selectNoticeCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Notice.selectNoticeCnt", commandMap);
	}


}
