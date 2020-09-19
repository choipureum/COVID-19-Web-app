package com.covid19.app.board.model.dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.covid19.app.board.model.vo.InfoReply;
import com.covid19.app.board.model.vo.InfoShare;

import common.util.Paging;


@Repository
public class InfoDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	//info 게시판 전체 출력
	public List<InfoShare> selectInfoList(Paging page) {

		return sqlSession.selectList("Info.selectInfoList", page);
	}

	//전체 게시글 숫자 반환
	public int selectInfoCnt() {
		return sqlSession.selectOne("Info.selectInfoCnt");
	}

//	게시글 상세
	public InfoShare selectInfoDetail(int info_idx) {
		return sqlSession.selectOne("Info.selectInfoDetail", info_idx);
	}
//	//게시글 상세
//	public InfoShare selectInfoDetail(Map<String, Object> paramMap) {
//		return sqlSession.selectOne("Info.selectInfoDetail", paramMap);
//	}
	
	//게시글삭제
	public int deleteInfo(int info_idx) {
		return sqlSession.delete("Info.deleteInfo", info_idx);
		
	}
	
	//조회수 증가
	public void updateInfoHit(int num) {
		sqlSession.update("Info.updateInfoHit", num);
	}

	public int insertInfo(InfoShare infoShare) {
		return sqlSession.insert("Info.insertInfo", infoShare);
	}

	public int insertFile(Map<String, String> fileInfo) {
		
		return sqlSession.insert("Info.insertFile",fileInfo);
	}

	public List<InfoReply> getReplyList(Map<String, Object> paramMap) {
		return sqlSession.selectList("Info.selectInfoReplyList", paramMap);
	}

	public void insertReply(InfoReply param) {
		
		if(param.getReply_idx()==null || "".equals(param.getReply_idx())) {
			sqlSession.insert("Info.insertInfoReply", param);
		}else {
			sqlSession.insert("Info.updateInfoReply", param);
		}
	}
	
	public List<?> selectInfoReplyList(int info_idx){
		return sqlSession.selectList("Info.selectInfoReplyList",info_idx);
	}

	public int deleteInfoReply(String reply_idx) {
		return sqlSession.delete("Info.deleteInfoReply", reply_idx);
	}

	public int updateInfoReply(InfoReply infoReply) {
		return sqlSession.update("Info.updateInfoReply", infoReply);
	};
	
}
