package com.covid19.app.board.model.dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	//게시글 상세
	public InfoShare selectInfoDetail(int info_idx) {
		return sqlSession.selectOne("Info.selectInfoDetail", info_idx);
	}
	
	//게시글삭제
	public int deleteInfo(int info_idx) {
		return sqlSession.delete("Info.deleteInfo", info_idx);
		
	}
	
	//조회수 증가
	public void updateInfoHit(int info_idx) {
		sqlSession.update("Info.updateInfoHit", info_idx);
	}

	public int insertInfo(InfoShare infoShare) {
		return sqlSession.insert("Info.insertInfo", infoShare);
	}

	public int insertFile(Map<String, String> fileInfo) {
		
		return sqlSession.insert("Info.insertFile",fileInfo);
	}
	
	
	
}
