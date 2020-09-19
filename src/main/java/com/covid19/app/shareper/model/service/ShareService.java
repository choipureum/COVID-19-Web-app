package com.covid19.app.shareper.model.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.shareper.model.dao.ShareDao;
import com.covid19.app.shareper.model.dto.Donate;
import com.covid19.app.shareper.model.dto.Goods;
import com.covid19.app.shareper.model.dto.Pay;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareFile;

import common.util.FileUtil;
import common.util.Paging;

@Service
public class ShareService {
	
	@Autowired
	private ShareDao sharedao;
	
	public void shareup(Share share, List<MultipartFile> file, String root , HttpServletRequest req) {

		
		sharedao.insertBoard(share);
		
		String[] gn = req.getParameterValues("goodsName");
		String[] pr = req.getParameterValues("price");
		String[] gs = req.getParameterValues("goodsStock");
	
		for(int i=0; i<gn.length; i++){
			Goods goods = new Goods();
			goods.setGoods_Name(gn[i]);
			goods.setGoods_Price(pr[i]);
			goods.setGoods_Stock(Integer.parseInt(gs[i]));
			sharedao.insertGoods(goods);
		}
		
		
		if(!(file.size() == 1 && file.get(0).getOriginalFilename().equals(""))) {
			//파일업로드를 위해 FileUtil.fileUpload() 호출
			List<Map<String,String>> filedata 
					= new FileUtil().fileupload(file, root);
			for(Map<String,String> f : filedata) {
				sharedao.insertThumb(f);
			}
		}
	}

	public void insertFile(ShareFile shf) {
		sharedao.insertFile(shf);
	}


	public Map<String, Object> selectSlist(int cPage, int cntPerPage,String filter) {
		
		 Map<String, Object> commandMap 
	 		= new HashMap<String, Object>();
		 
		 int total = 0;
		 if(filter.equals("*")) {
			total = sharedao.selectContentCnt(filter);
		 }else{
			total = sharedao.selectContentCnt2(filter);
		 }
		 //페이징 처리를 위한 객체 생성
		 Paging p = new Paging(total
				 ,cPage,cntPerPage);
		 p.setFilter(filter);
		 //현재 페이지에 필요한 게시물 목록
		 List<Object> nlist = sharedao.selectshar(p);
		 commandMap.put("nlist", nlist);
		 commandMap.put("paging", p);
		 return commandMap;
			
		}


	public Map<String, Object> sharedetail(int share_idx) {
		Map<String, Object> commandMap 
 		= new HashMap<String, Object>();
		
		List<Share> dlist = sharedao.sharedetail(share_idx);
		commandMap.put("dlist", dlist);
		System.out.println(commandMap);
		return commandMap;
		
	}

	public List<Goods> selectGoods(int share_idx) {
		List<Goods> gList = sharedao.selectGoods(share_idx);
		return gList;
	}

	public void insertPay(HashMap<String, Object> pay) {
		Pay payy = new Pay();
		
		payy.setPayment(Integer.parseInt(pay.get("payment").toString()));
		payy.setMember_id((String)pay.get("mem_id"));
		payy.setShare_idx(Integer.parseInt(pay.get("share_idx").toString()));
		payy.setGoods_name((String)pay.get("good_name"));
		payy.setAddress((String)pay.get("address"));
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-hh:mm:ss");
		String paydate = sdf.format(date);
		payy.setPay_day(paydate);
		int share_idx = Integer.parseInt(pay.get("share_idx").toString());
		//member pay 1% 적립---------------
		int mem_pay = payy.getPayment()*1/100;
		
		//--------기부테이블 1% 적립-----------
		sharedao.insertDonate(mem_pay);
		//---------------------------------
		
		String mem_id = payy.getMember_id();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("mem_pay", mem_pay);
		sharedao.insertMempoint(map);
		//--------------------------------
		//참여자 +1
		sharedao.insertjoinper(share_idx);
		//--------------------------------
		sharedao.insertPayment(payy);
		
	}



	
	

	
}
