package com.covid19.app.covidPat.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.covid19.app.covidPat.dao.CovidPatDao;

@Service
public class CovidPatService {
	
	@Autowired
	private CovidPatDao covidPatDao;
	
	
}
