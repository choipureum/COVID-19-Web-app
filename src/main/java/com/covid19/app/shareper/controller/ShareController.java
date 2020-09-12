package com.covid19.app.shareper.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import java.lang.ProcessBuilder.Redirect;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareFile;
import com.covid19.app.shareper.model.service.ShareService;

@Controller
public class ShareController {
	@Autowired
	ShareService shareSer = new ShareService();
	
	@RequestMapping("/share/list.do")
	public ModelAndView slist(
			@RequestParam(required=false, defaultValue="1") 
			int cPage,
			@RequestParam(required = false, defaultValue = "*")
			String filter,
			HttpServletResponse res
			) {
		
		if(filter == "all") {
			filter = "*";
		}
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 16;
		Map<String,Object> map = shareSer.selectSlist(cPage, cntPerPage,filter);

		mav.addObject("paging", map.get("paging"));
		mav.addObject("list", map);
		

		if(cPage == 1) {
		mav.setViewName("share/list");
		}else {
			mav.setViewName("share/scroll");

		} 
		
		return mav;
	}
	
	@RequestMapping("/share/filter.do")
	public ModelAndView filterlist(
			@RequestParam(required=false, defaultValue="1") 
			int cPage,
			@RequestParam(required = false, defaultValue = "*")
			String filter,
			HttpServletResponse res
			) {
		 
		System.out.println("여기는 컨트롤러 필터링 맵을 받을거야 : " + filter);
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 16;
		Map<String,Object> map = shareSer.selectSlist(cPage, cntPerPage,filter);
		
		mav.addObject("paging", map.get("paging"));
		mav.addObject("list", map);
		
		mav.setViewName("share/scroll");
		return mav;
	}
	
	
	
	@RequestMapping("/share/detail.do")
	public ModelAndView sdetail(@RequestParam int share_idx,
			@RequestParam String shareDate ) {
		
		ModelAndView mav = new ModelAndView();
		String paramDate = shareDate.substring(0, 10);
		java.sql.Date sharedDay = java.sql.Date.valueOf(paramDate);
		
		Date endday = sharedDay;
		Date sysdate = new java.sql.Date(new java.util.Date().getTime());
		long hidate = endday.getTime() - sysdate.getTime();
		int dDay = (int)Math.floor(hidate/(1000*60*60*24)+1);
		
		Map<String,Object> map = shareSer.sharedetail(share_idx);
		
		mav.addObject("list", map.get("dlist"));
		mav.addObject("dDay", dDay);
		mav.setViewName("share/detail");
		return mav;
	}
	
	
	
	@RequestMapping("/share/board.do")
	public ModelAndView sboard() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("share/upload");
		

		return mav;
	}
	
	@RequestMapping(value = "/share/boardup.do", method = RequestMethod.POST)
	public ModelAndView supload(

			HttpSession session,
			Share share,
			List<MultipartFile> file,
			HttpServletRequest request
			) {
		ModelAndView mav = new ModelAndView(); 
		String root = session.getServletContext().getRealPath("/");
		shareSer.shareup(share,file,root,request);

		mav.setViewName("redirect:list.do");
		
		return mav;
		
	}
	
	@RequestMapping(value = "/share/fileup.do", method = RequestMethod.POST)
	public void file_uploader_html5(HttpServletRequest request,
				HttpServletResponse response)
		{ 
			try {
				ShareFile shf = new ShareFile();
			//파일정보
			String sFileInfo = ""; 
			//파일명을 받는다 - 일반 원본파일명
			String filename = request.getHeader("file-name"); 
			//파일 확장자 
			String filename_ext = filename.substring(filename.lastIndexOf(".")+1); 
			//확장자를소문자로 변경 
			filename_ext = filename_ext.toLowerCase(); 
			//이미지 검증 배열변수 
			String[] allow_file = {"jpg","png","bmp","gif"}; 
			//file 번호
			int fidx = 0;
			
			//돌리면서 확장자가 이미지인지 
			int cnt = 0; for(int i=0; i<allow_file.length; i++) 
			{ 
				if(filename_ext.equals(allow_file[i])){ cnt++; } 
				
			} 
			//이미지가 아님
			if (cnt == 0) { PrintWriter print = response.getWriter();
			print.print("NOTALLOW_"+filename);
			print.flush();
			print.close(); } 
			else {
				//파일번호
				fidx++;
				//이미지이므로 신규 파일로 디렉토리 설정 및 업로드
				//파일 기본경로
				String dftFilePath = request.getSession().getServletContext().getRealPath("/"); 
				//파일 기본경로 _ 상세경로 
				String filePath = dftFilePath + "resources" + File.separator + "upload" + File.separator +"share" + File.separator; 
				File file = new File(filePath); if(!file.exists()) { file.mkdirs(); }
				String realFileNm = "";
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss"); 
				String today= formatter.format(new java.util.Date());
				realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf(".")); 
				String rlFileNm = filePath + realFileNm;
				///////////////// 서버에 파일쓰기 /////////////////
				InputStream is = request.getInputStream(); 
				OutputStream os=new FileOutputStream(rlFileNm); 
				int numRead; 
				byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
				while((numRead = is.read(b,0,b.length)) != -1){ os.write(b,0,numRead); } 
				if(is != null) { is.close(); }
				os.flush(); 
				os.close();
				///////////////// 서버에 파일쓰기 ///////////////// 
			
				shf.setOriginfile(filename);
				shf.setRenamefile(realFileNm);
				shf.setSavepath(filePath);
				shareSer.insertFile(shf);
				// 정보 출력
				sFileInfo += "&bNewLine=true"; 
				// img 태그의 title 속성을 원본파일명으로 적용시켜주기 위함
				sFileInfo += "&sFileName="+ filename;;
				sFileInfo += "&sFileURL="+"/resources/upload/share/"+realFileNm;
				PrintWriter print = response.getWriter(); print.print(sFileInfo); 
				print.flush();
				print.close(); } 
			} 
		catch (Exception e) { e.printStackTrace(); }
			}

			
	
}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	




	

