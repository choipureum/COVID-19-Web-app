package com.covid19.app.coronaNews.model.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.coronaNews.model.dao.CovidNewsDao;
import com.covid19.app.coronaNews.model.vo.CovidNews;
import com.covid19.app.coronaNews.model.vo.FactCheck;

import common.util.Paging;

@Service
public class NewsFactServiceImpl implements NewsFactService{

	@Autowired
	private CovidNewsDao covidNewsDao;
	
	private static String COVID_SNEWS_URL = "https://news.sbs.co.kr/news/newsHotIssueList.do?tagId=10000050973";
	private static String COVID_FACT_URL = "http://ncov.mohw.go.kr/factBoardList.do?brdId=3&brdGubun=33";
	
	//시작하자마자 메소드를 실행하게 해주는 어노테이션
//	@PostConstruct
	public List<CovidNews> getCovidNews() throws IOException {
		
		List<CovidNews> newsList = new ArrayList<>();
		Document doc = Jsoup.connect(COVID_SNEWS_URL).get();
//		Elements contents = doc.select("#container > div > div.w_news_list.type_issue > ul > li:nth-child(1) > a.news > p > strong");
		Elements contents = doc.select("#container > div > div.w_news_list.type_issue > ul > li > a.news");
		
		for(Element content : contents) {
			
			CovidNews covidnews = new CovidNews();
			covidnews.setNewsTitle(content.select("strong.sub").html()); //뉴스제목
			covidnews.setThumbNail(content.select("span.thumb").html()); //썸네일
			covidnews.setNewsContents(content.select("span.read").text()); //뉴스 간략내용
			covidnews.setLink(content.select("a.news").attr("href")); //뉴스 링크
			covidnews.setRegDate(content.select("span.date").text()); //작성일
			covidnews.setCompany(1); //뉴스 보도자료는 1번
			newsList.add(covidnews);
//			System.out.println(covidnews.getRegDate());
			
				covidNewsDao.insertCovidNews(covidnews);
				//크롤링 할때마다 DB에 넣어주기
				covidNewsDao.deleteCovidNews(covidnews.getNews_idx());
//				//크롤링 할때마다 DB에 중복값 지워주기
			
//			System.out.println(covidnews.toString());
			
			
		}
		
		
		return newsList;
		
		
		
		
	}

	
	@PostConstruct
	public List<FactCheck> getCoronaFact() throws IOException {
		
		List<FactCheck> factList = new ArrayList<>();
		Document doc = Jsoup.connect(COVID_FACT_URL).get();
		Elements contents = doc.select("#content > div > div.faq_list > ul");
//		System.out.println(contents);
		for(Element content : contents) {
			Elements liContents = content.select("div.bv_category");
			Elements openContents = content.select("li.open");
//			System.out.println("짜증난다" + liContents);
			FactCheck factCheck = new FactCheck();
			factCheck.setFcTitle(content.select("span.fl_ttl").text()); //제목
			factCheck.setFcWriter(liContents.select("span.bvc_detail").text());
			factCheck.setFcContents(openContents.select("p").html());
//			factCheck.setFcRegDate(content.select("span.bvc_detail").text()); //작성날짜
			factList.add(factCheck);
			System.out.println(factList);
//			#content > div > div.board_list > table > tbody > tr:nth-child(1) > td:nth-child(4)
////				covidNewsDao.insertCovidNews(covidnews);
//				//크롤링 할때마다 DB에 넣어주기
////				covidNewsDao.deleteCovidNews(covidnews.getNews_idx());
//				//크롤링 할때마다 DB에 중복값 지워주기
//			
//				System.out.println("kbs"+covidnews.toString());
		}
			return factList;
	}
	
	
	@Override
	public Map<String, Object> selectNewsList(int currentPage, int cntPerPage) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		
		Paging p = new Paging(covidNewsDao.selectNewsCnt(), currentPage, cntPerPage);
		
		List<CovidNews> clist = covidNewsDao.selectNewsList(p);
		commandMap.put("clist", clist);
		commandMap.put("paging", p);
		
		
		
		return commandMap;
	}


	@Override
	public List<CovidNews> getCardNews() throws IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
}
