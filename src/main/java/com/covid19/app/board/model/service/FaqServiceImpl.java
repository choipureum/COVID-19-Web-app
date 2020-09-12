package com.covid19.app.board.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.board.model.dao.FaqDao;
import com.covid19.app.board.model.vo.Faq;

@Service
public class FaqServiceImpl implements FaqService{

	@Autowired
	private FaqDao faqDao;
	
	@Override
	public Map<String, Object> selectFaq() {
		
		Map<String,Object> commandMap = new HashMap<String, Object>();
		List<Faq> faqlist = faqDao.selectFaq();
		commandMap.put("faqlist", faqlist);
		System.out.println(commandMap);
		return commandMap;
	}

}
