package com.covid19.app.aboutCorona;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.covid19.app.HomeController;

@Controller
@RequestMapping("/info")
public class CoronaInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//코로나19란?
	@RequestMapping(value = "/aboutCorona19.do", method = RequestMethod.GET)
	public String aboutCorona19(Locale locale, Model model) {
		logger.info(" About CORONA....{}", locale);				
		return "/info/aboutCorona19";
	}
	//대한민국 방역체계
	@RequestMapping(value = "/preventionSystem.do", method = RequestMethod.GET)
	public String preventionSystem(Locale locale, Model model) {
		logger.info(" About CORONA PreventionSystem....{}", locale);				
		return "/info/preventionSystem";
	}
	//환자 치료 및 관리
	@RequestMapping(value = "/pat_cure.do", method = RequestMethod.GET)
	public String pat_cure(Locale locale, Model model) {
		logger.info(" About PatientCureSystem....{}", locale);				
		return "/info/pat_cure";
	}
	//예방조치안내
	@RequestMapping(value = "/CoronaPrecaution.do", method = RequestMethod.GET)
	public String CoronaPrecaution(Locale locale, Model model) {
		logger.info(" About CoronaPrecautionSystem....{}", locale);				
		return "/info/CoronaPrecaution";
	}
	
	//선별진료소 찾기(지도)
	@RequestMapping(value = "/hospital.do", method = RequestMethod.GET)
	public String HospitalMap(Locale locale, Model model) {
		logger.info(" Hospital Map Loading....{}", locale);				
		return "/info/hospital";
	}
}
