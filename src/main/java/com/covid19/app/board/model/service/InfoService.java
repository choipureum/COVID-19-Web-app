package com.covid19.app.board.model.service;

import java.util.List;

import java.util.Map;

import com.covid19.app.board.model.vo.InfoReply;
import com.covid19.app.board.model.vo.InfoShare;




public interface InfoService {
	
	//정보공유 게시판 목록
	public Map<String,Object> selectInfo(int currentPage, int cntPerPage, String search_item, String search_content);

	//정보공유 상세 조회
	public Map<String, Object> selectInfoDetail(int info_idx);
	
	//정보공유 게시판 게시글 작성
	public int insertInfo(InfoShare infoshare);
	
	//정보공유 게시판 게시글 삭제
	public int deleteInfo(int info_idx);
	
	//정보공유 게시판 게시글 수정
	public int updateInfo(InfoShare infoShare);
	
	//조회수 증가
	public void updateInfoHit(int num);

	//댓글 등록
	public void insertInfoReply(InfoReply infoReply);

	//댓글 목록
	public List<?> selectReplyList(int info_idx);

	//댓글 삭제
	public int deleteInfoReply(String reply_idx);
	
	//댓글 수정
	public void replyUpdate(InfoReply infoReply);
	
}
