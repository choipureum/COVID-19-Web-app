package com.covid19.app.board.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.board.model.dao.NoticeDao;
import com.covid19.app.board.model.vo.Notice;

import common.util.InfoPaging;
import common.util.NewsPaging;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public Map<String, Object> selectNoticeList(int currentPage, int cntPerPage, String search_item, String search_content) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("search_item", search_item);
		commandMap.put("search_content", search_content);
		
		//페이징
		InfoPaging p = new InfoPaging(noticeDao.selectNoticeCnt(commandMap), currentPage, cntPerPage);
		p.setSearch_item(search_item);
		p.setSearch_content(search_content);
		List<Notice> nlist = noticeDao.selectNoticeList(p);
		commandMap.put("nlist", nlist);
		commandMap.put("NoticePaging", p);
		
		
		return commandMap;
	}

}
