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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.coronaNews.model.dao.CovidNewsDao;
import com.covid19.app.coronaNews.model.vo.CovidNews;
import com.covid19.app.coronaNews.model.vo.FactCheck;

import common.exception.FileException;
import common.util.FcFileUtil;
import common.util.FileUtil;
import common.util.InfoPaging;
import common.util.NewsPaging;
import common.util.Paging;

@Service
public class NewsFactServiceImpl implements NewsFactService{

	@Autowired
	private CovidNewsDao covidNewsDao;
	
	private static String COVID_SNEWS_URL = "https://news.sbs.co.kr/news/newsHotIssueList.do?tagId=10000050973";
	
	//시작하자마자 메소드를 실행하게 해주는 어노테이션
	@PostConstruct
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
			
				covidNewsDao.insertCovidNews(covidnews);
//				크롤링 할때마다 DB에 넣어주기
				covidNewsDao.deleteCovidNews(covidnews.getNews_idx());
			
		}
		
		
		return newsList;
		
	}

	
	
	@Override
	public Map<String, Object> selectNewsList(int currentPage, int cntPerPage, String search_item, String search_content) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("search_item", search_item);
		commandMap.put("search_content", search_content);
				
		NewsPaging p = new NewsPaging(covidNewsDao.selectNewsCnt(commandMap), currentPage, cntPerPage);
		p.setSearch_item(search_item);
		p.setSearch_content(search_content);
		
		List<CovidNews> clist = covidNewsDao.selectNewsList(p);
		commandMap.put("clist", clist);
		commandMap.put("NewsPaging", p);
		
		
		
		return commandMap;
	}


	//이슈체크 게시판 업로드
	
	@Transactional
	public int uploadIssueCheck(FactCheck factCheck, List<MultipartFile> files, String root)throws FileException {
		
		try {
			int result = covidNewsDao.uploadIssueCheck(factCheck);
			
			if(!(files.size() == 1 && files.get(0).getOriginalFilename().equals(""))) {
				
				//파일업로드를 위한 FileUtil.uploadFile
				List<Map<String,String>> filedata = new FcFileUtil().fileUpload(files, root);
				
				for(Map<String,String>f :filedata) {
					covidNewsDao.uploadFile(f);
				}
				
			}
			
			return result;
		} catch (Exception e) {
			
			e.printStackTrace();
			throw new FileException("F_ERROR_01");
		}
		
		
		
	}


	@Override
	public Map<String, Object> selectIssueCheckList(int currentPage, int cntPerPage, String search_item, String search_content) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("search_item", search_item);
		commandMap.put("search_content", search_content);
		
		InfoPaging p = new InfoPaging(covidNewsDao.selectIssueCnt(commandMap), currentPage, cntPerPage);
		p.setSearch_item(search_item);
		p.setSearch_content(search_content);
		
		List<CovidNews> flist = covidNewsDao.selectIssueList(p);
		commandMap.put("flist", flist);
		commandMap.put("NewsPaging", p);
		
		return commandMap;
	}


	@Override
	public Map<String, Object> selectFactCheckList(int currentPage, int cntPerPage, String search_item,
			String search_content) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		commandMap.put("search_item", search_item);
		commandMap.put("search_content", search_content);
		
		InfoPaging p = new InfoPaging(covidNewsDao.selectFactCnt(commandMap), currentPage, cntPerPage);
		p.setSearch_item(search_item);
		p.setSearch_content(search_content);
		
		List<CovidNews> flist = covidNewsDao.selectFactList(p);
		commandMap.put("flist", flist);
		commandMap.put("NewsPaging", p);
		
//		flist.get(fc_idx);
//		List<Map<String,String>> filelist = covidNewsDao.selectFileWithCheck(fc_idx);
//		commandMap.put("filelist", filelist);
		
		return commandMap;
	}


	@Override
	public Map<String, Object> selectCheckDetail(int fc_idx) {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		FactCheck factCheck = covidNewsDao.selectCheckDetail(fc_idx);
		List<Map<String,String>> flist = covidNewsDao.selectFileWithCheck(fc_idx);
		commandMap.put("factCheck", factCheck);
		commandMap.put("flist", flist);
		
		return commandMap;
	}


	
	
	
}
