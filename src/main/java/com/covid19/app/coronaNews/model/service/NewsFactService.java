package com.covid19.app.coronaNews.model.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.covid19.app.coronaNews.model.vo.CovidNews;

public interface NewsFactService{

	public List<CovidNews> getCovidNews() throws IOException;

	public Map<String, Object> selectNewsList(int cPage, int cntPerPage);
	
	public List<CovidNews> getCardNews() throws IOException;
	
}
