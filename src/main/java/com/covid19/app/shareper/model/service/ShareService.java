package com.covid19.app.shareper.model.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.shareper.model.dao.ShareDao;
import com.covid19.app.shareper.model.dto.Goods;
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
			goods.setGoodsName(gn[i]);
			goods.setPrice(pr[i]);
			goods.setGoodsStock(Integer.parseInt(gs[i]));
			sharedao.insertGoods(goods);
		}
		
		
		if(!(file.size() == 1
				&& file.get(0).getOriginalFilename().equals(""))) {
				
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



	
	

	
}
