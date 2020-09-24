package com.covid19.app.board.model.service;



import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.board.model.dao.InfoDao;
import com.covid19.app.board.model.vo.InfoReply;
import com.covid19.app.board.model.vo.InfoShare;

import common.exception.FileException;
import common.util.FileUtil;
import common.util.InfoPaging;
import common.util.Paging;


@Service
public class InfoServiceImpl implements InfoService{

	@Autowired
	private InfoDao infoDao;
	
	//정보공유 게시판 목록
	@Override
	public Map<String, Object> selectInfo(int currentPage, int cntPerPage, String search_item, String search_content) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("search_item", search_item);
		commandMap.put("search_content", search_content);
		
		//페이징 처리를 위한 객체 생성
		InfoPaging p = new InfoPaging(infoDao.selectInfoCnt(commandMap), currentPage, cntPerPage);
		p.setSearch_item(search_item);
		p.setSearch_content(search_content);
		
		List<InfoShare> ilist = infoDao.selectInfoList(p);
		commandMap.put("ilist", ilist);
		commandMap.put("InfoPaging", p);
		
		return commandMap;
	}
	
	@Override
	public List<?> selectReplyList(int info_idx) {
		
		return infoDao.selectInfoReplyList(info_idx);
	}

	
	//정보공유 게시판 상세조회
	@Override
	public Map<String, Object> selectInfoDetail(int info_idx) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		InfoShare infoshare = infoDao.selectInfoDetail(info_idx);
		commandMap.put("infoshare", infoshare);
		
		return commandMap;
	}

	//정보공유 게시판 게시글 삭제
	@Override
	public int deleteInfo(int info_idx) {
		return infoDao.deleteInfo(info_idx);
	}
	
	
	//정보공유 게시판 조회수 증가
	@Override
	public void updateInfoHit(int num) {
		infoDao.updateInfoHit(num);
		
	}

//	@Transactional
//	public int insertInfo(InfoShare infoShare, List<MultipartFile> files, String root) throws FileException{
//		
//		try {
//			
//			int result = infoDao.insertInfo(infoShare);
//			
//			if(!(files.size() == 1 && files.get(0).getOriginalFilename().equals(""))) {
//				
//				//파일업로드를 위한 FileUtil.uploadFile
//				List<Map<String,String>> filedata = new FileUtil().fileupload(files, root);
//				
//				
//				for(Map<String,String>f : filedata) {
//					infoDao.insertFile(f);
//				}
//			}
//			return result;
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw new FileException("F_EROOR_01");
//		}	
//		
//	}

	
	//댓글등록
	@Override
	public void insertInfoReply(InfoReply infoReply) {
		
		infoDao.insertReply(infoReply);
	}

	//댓글삭제
	@Override
	public int deleteInfoReply(String reply_idx) {
		return infoDao.deleteInfoReply(reply_idx);
	}

	//댓글 수정
	@Override
	public void replyUpdate(InfoReply infoReply) {
		infoDao.updateInfoReply(infoReply);
		
	}

	@Override
	public int insertInfo(InfoShare infoshare){
		return infoDao.insertInfo(infoshare);
		
	}

	@Override
	public int updateInfo(InfoShare infoShare) {
		
		int result = infoDao.updateInfo(infoShare);
		
		return result;
	}

	
	
	

	
	

}
