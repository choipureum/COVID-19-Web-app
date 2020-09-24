package com.covid19.app.board.model.service;

import java.util.Map;

public interface NoticeService {

	Map<String, Object> selectNoticeList(int currentPage, int cntPerPage, String search_item, String search_content);

}
