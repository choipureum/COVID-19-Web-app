package com.covid19.app.shareper.model.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.covid19.app.member.model.vo.Member;
import com.covid19.app.shareper.model.dao.ShareDao;
import com.covid19.app.shareper.model.dto.Goods;
import com.covid19.app.shareper.model.dto.Pay;
import com.covid19.app.shareper.model.dto.Reply;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareCheering;
import com.covid19.app.shareper.model.dto.ShareFile;
import com.covid19.app.shareper.model.dto.ShareLike;
import com.covid19.app.shareper.model.dto.ShareQna;

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
/*좋아요 기능 구간*/
	
	/* 장바구니 등록*/
	 public void insertCart(ShareLike like) {
			System.out.println("서비스 like" + like);
		 sharedao.insertCart(like);
		 
	    }
	 /* 장바구니 리스트 */
	 public List<ShareLike> listCart(String member_id) {
		 return sharedao.listCart(member_id);
	 }
	 
	 /* 장바구니 삭제 */
	public void deleteCart(int sharelike_id) {
		sharedao.deleteCart(sharelike_id);
	}
	 /* 장바구니 전체 삭제 */
	public void deleteAllCart(String member_id) {
		sharedao.deleteAllCart(member_id);
	}
//	public ShareLike detailCart(int sharelike_id) {
//		return sharedao.detailCart(sharelike_id);
//	}\\

	
	/* 장바구니 수량 변경*/
	public void modifiyCart(ShareLike vo) {
		sharedao.modifiyCart(vo);
	}
	
	
	 
	 /* 총금액 */
	 public int sumMoney(String member_id) {
		 return sharedao.sumMoney(member_id);
	 }
     /* 장바구니 상품 확인 */
	public int countCart(int share_idx, String member_id) {

		return sharedao.countCart(share_idx, member_id);
	}
	  /* 장바구니 상품 수량 변경 */
	public void updateCart(ShareLike like) {
		sharedao.updateCart(like);
	}

	
	//상품 댓글 작성
		public void write(ShareQna qna) {
			sharedao.insertQna(qna);
		}
		
		//qna 댓글 리스트
		public List<ShareQna> qnaView(int share_idx,int start, int end, HttpSession session) {
			 List<ShareQna> item = sharedao.listQna(share_idx,start, end);
			 Member res = (Member) session.getAttribute("logInInfo");
				
				//세션 값에 아이디
				System.out.println("res" + res);
				
				String member_idx = res.getMember_id();
				
				for(ShareQna qna : item) {
					if(qna.getSecretReply().equals("Y")) {
						if(member_idx == null) {
							qna.setSecretReply("비밀글 입니다.");
						}
					} else {
						String member_id = qna.getMember_id();
						if(!member_idx.equals(member_id)) {
							qna.setShareQnaContent("비밀글 입니다.");
						}
					}
				}
				
			return item;
		}
		
		//글 갯수
		public int count(int share_idx) {
			return sharedao.count(share_idx);
		}
		
		public List<ShareQna> readQna(int share_idx) {
			
			return sharedao.readQna(share_idx);
		}
		
		//qno 조회
		public ShareQna detailQna(int qno) {
			return sharedao.detailQna(qno);
		}
		
		//qna 수정
		public void updateQna(ShareQna qna) {
			sharedao.updateQna(qna);
		}
		//qna 삭제
		public void deleteQna (int qno) {
			sharedao.deleteQna(qno);
		}

		/* 답변 입력 */
		public void createReply(Reply vo) {
			sharedao.createReply(vo);
			
		}
		/* 답변 조회  */
		public List<Reply> listReply(int shareQnaIdx) {
		
			return sharedao.listReply(shareQnaIdx);
		}
		
		
		
		
		//응원 게시물 작성
		public void write(ShareCheering ch) {
			System.out.println("서비스"+ch);
			sharedao.insertCheering(ch);
		}
		
		
		//응원 게시물 목록 조회
		public List<ShareCheering> listCheering(int share_idx) {
			System.out.println("service" + share_idx);
			return sharedao.listCheering(share_idx);
		}
		public List<ShareCheering> readCheering(int share_idx) {
			return sharedao.readCheering(share_idx);
		}


	
	

	
}
