package com.covid19.app.covidPat.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid19.app.covidPat.service.CovidPatService;

@Controller
public class CovidPatController {
	
	@Autowired
	private CovidPatService covidPatService;
	
	private static final Logger logger = LoggerFactory.getLogger(CovidPatController.class);
	
	//국내발생현황
	@RequestMapping(value = "/domesticPat.do", method = RequestMethod.GET)
	public String aboutCorona19(Locale locale, Model model) {
		logger.info(" About CORONA domesticPat....{}", locale);				
		return "/patient/domesticPat";
	}
	//국외발생현황
	@RequestMapping(value = "/overseaPat.do", method = RequestMethod.GET)
	public String preventionSystem(Locale locale, Model model) {
		logger.info(" About CORONA oerseaPat....{}", locale);				
		return "/patient/overseaPat";
	}
	//시도별 발생현황
	@RequestMapping(value = "/detailPat.do", method = RequestMethod.GET)
	public String pat_cure(Locale locale, Model model) {
		logger.info(" About detailPatmap....{}", locale);				
		return "/patient/detailPat";
	}
	//확진환자이동경로
	@RequestMapping(value = "/movingPat.do", method = RequestMethod.GET)
	public String CoronaPrecaution(Locale locale, Model model) {
		logger.info(" About Corona patient moving route....{}", locale);				
		return "/patient/movingPat";
	}
	
}
