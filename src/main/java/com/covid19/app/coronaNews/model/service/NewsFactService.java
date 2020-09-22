package com.covid19.app.coronaNews.model.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.coronaNews.model.vo.CovidNews;
import com.covid19.app.coronaNews.model.vo.FactCheck;

import common.exception.FileException;

public interface NewsFactService{

	//뉴스 업로드
	public List<CovidNews> getCovidNews() throws IOException;

	//뉴스리스트
	public Map<String, Object> selectNewsList(int cPage, int cntPerPage, String search_item, String search_content);

	//이슈,팩트 체크 업로드
	public int uploadIssueCheck(FactCheck factCheck, List<MultipartFile> files, String root) throws FileException;

	//이슈 체크 리스트
	public Map<String, Object> selectIssueCheckList(int cPage, int cntPerPage, String search_item, String search_content);

	//팩트 체크 리스트
	public Map<String, Object> selectFactCheckList(int cPage, int cntPerPage, String search_item, String search_content);

	//게시물 상세
	public Map<String, Object> selectCheckDetail(int fc_idx);
}
