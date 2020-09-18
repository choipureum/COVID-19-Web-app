package com.covid19.app.board.model.service;

import java.util.List;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.board.model.vo.InfoReply;
import com.covid19.app.board.model.vo.InfoShare;

import common.exception.FileException;



public interface InfoService {
	
	//정보공유 게시판 목록
	public Map<String,Object> selectInfo(int currentPage, int cntPerPage);

	//정보공유 상세 조회
	public Map<String, Object> selectInfoDetail(int info_idx);
	
	//정보공유 게시판 게시글 삭제
	public int deleteInfo(int info_idx);
	
	//정보공유 게시판 게시글 작성
	public void insertInfo(InfoShare infoshare) throws Exception;
	
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
