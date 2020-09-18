package com.covid19.app.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.board.model.vo.InfoReply;

@Repository
public class ReplyDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//댓글 카운트
	public int getReplyCount(int info_idx) {
		return sqlSession.selectOne("Reply.getReplyCount",info_idx);
	}

	//댓글 리스트
	public List<InfoReply> replyList(int info_idx) {
		return sqlSession.selectList("Reply.replyList", info_idx);
	}

	//댓글 조회
	public InfoReply selectReply(int info_idx) {
		return sqlSession.selectOne("Reply.selectReply", info_idx);
	}
	
	
	
}
