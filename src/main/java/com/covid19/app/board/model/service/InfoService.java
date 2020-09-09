package com.covid19.app.board.model.service;

import java.util.List;
import java.util.Map;

import javax.annotation.processing.FilerException;

import org.springframework.web.multipart.MultipartFile;

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
	public int insertInfo(InfoShare infoShare, List<MultipartFile> files, String root)throws FileException;
	
	//조회수 증가
	public void updateInfoHit(int num);
	
	
}
