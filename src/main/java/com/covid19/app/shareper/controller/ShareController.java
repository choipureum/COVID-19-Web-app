package com.covid19.app.shareper.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.covid19.app.member.model.vo.Member;
import com.covid19.app.shareper.model.dto.Goods;
import com.covid19.app.shareper.model.dto.QnaPager;
import com.covid19.app.shareper.model.dto.Reply;
import com.covid19.app.shareper.model.dto.Share;
import com.covid19.app.shareper.model.dto.ShareCheering;
import com.covid19.app.shareper.model.dto.ShareFile;
import com.covid19.app.shareper.model.dto.ShareLike;
import com.covid19.app.shareper.model.dto.ShareQna;
import com.covid19.app.shareper.model.service.ShareService;

@Controller
public class ShareController {
	@Autowired
	ShareService shareSer = new ShareService();

	@RequestMapping("/share/list.do")
	public ModelAndView slist(@RequestParam(required = false, defaultValue = "1") int cPage,
			@RequestParam(required = false, defaultValue = "*") String filter, HttpServletResponse res) {

		if (filter == "all") {
			filter = "*";
		}
		ModelAndView mav = new ModelAndView();
		int cntPerPage = 16;
		Map<String, Object> map = shareSer.selectSlist(cPage, cntPerPage, filter);

		System.out.println(map);

		mav.addObject("paging", map.get("paging"));
		mav.addObject("list", map);

		if (cPage == 1) {
			mav.setViewName("share/list");
		} else {
			mav.setViewName("share/scroll");

		}

		return mav;
	}

	@RequestMapping("/share/filter.do")
	public ModelAndView filterlist(@RequestParam(required = false, defaultValue = "1") int cPage,
			@RequestParam(required = false, defaultValue = "*") String filter, HttpServletResponse res) {

		ModelAndView mav = new ModelAndView();
		int cntPerPage = 16;
		Map<String, Object> map = shareSer.selectSlist(cPage, cntPerPage, filter);

		mav.addObject("paging", map.get("paging"));
		mav.addObject("list", map);

		mav.setViewName("share/scroll");
		return mav;
	}

	@RequestMapping("/share/detail.do")
	public ModelAndView sdetail(@RequestParam int share_idx, @RequestParam String shareDate) {

		ModelAndView mav = new ModelAndView();
		String paramDate = shareDate.substring(0, 10);
		java.sql.Date sharedDay = java.sql.Date.valueOf(paramDate);

		Date endday = sharedDay;
		Date sysdate = new java.sql.Date(new java.util.Date().getTime());
		long hidate = endday.getTime() - sysdate.getTime();
		int dDay = (int) Math.floor(hidate / (1000 * 60 * 60 * 24) + 1);
		List<Goods> goods = shareSer.selectGoods(share_idx);
		Map<String, Object> map = shareSer.sharedetail(share_idx);
		mav.addObject("goods", goods);
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
	public ModelAndView supload(HttpSession session, Share share, List<MultipartFile> file,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String root = session.getServletContext().getRealPath("/");
		shareSer.shareup(share, file, root, request);

		mav.setViewName("redirect:list.do");

		return mav;

	}

	@RequestMapping(value = "/share/fileup.do", method = RequestMethod.POST)
	public void file_uploader_html5(HttpServletRequest request, HttpServletResponse response) {
		try {
			ShareFile shf = new ShareFile();
			// 파일정보
			String sFileInfo = "";
			// 파일명을 받는다 - 일반 원본파일명
			String filename = request.getHeader("file-name");
			// 파일 확장자
			String filename_ext = filename.substring(filename.lastIndexOf(".") + 1);
			// 확장자를소문자로 변경
			filename_ext = filename_ext.toLowerCase();
			// 이미지 검증 배열변수
			String[] allow_file = { "jpg", "png", "bmp", "gif" };
			// file 번호
			int fidx = 0;

			// 돌리면서 확장자가 이미지인지
			int cnt = 0;
			for (int i = 0; i < allow_file.length; i++) {
				if (filename_ext.equals(allow_file[i])) {
					cnt++;
				}

			}
			// 이미지가 아님
			if (cnt == 0) {
				PrintWriter print = response.getWriter();
				print.print("NOTALLOW_" + filename);
				print.flush();
				print.close();
			} else {
				// 파일번호
				fidx++;
				// 이미지이므로 신규 파일로 디렉토리 설정 및 업로드
				// 파일 기본경로
				String dftFilePath = request.getSession().getServletContext().getRealPath("/");
				// 파일 기본경로 _ 상세경로
				String filePath = dftFilePath + "resources" + File.separator + "upload" + File.separator + "share"
						+ File.separator;
				File file = new File(filePath);
				if (!file.exists()) {
					file.mkdirs();
				}
				String realFileNm = "";
				SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
				String today = formatter.format(new java.util.Date());
				realFileNm = today + UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
				String rlFileNm = filePath + realFileNm;
				///////////////// 서버에 파일쓰기 /////////////////
				InputStream is = request.getInputStream();
				OutputStream os = new FileOutputStream(rlFileNm);
				int numRead;
				byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
				while ((numRead = is.read(b, 0, b.length)) != -1) {
					os.write(b, 0, numRead);
				}
				if (is != null) {
					is.close();
				}
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
				sFileInfo += "&sFileName=" + filename;
				;
				sFileInfo += "&sFileURL=" + "/resources/upload/share/" + realFileNm;
				PrintWriter print = response.getWriter();
				print.print(sFileInfo);
				print.flush();
				print.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("/share/slog/payment.do")
	public ModelAndView payment(HttpSession session, @RequestParam int share_idx) {
		ModelAndView mav = new ModelAndView();
		List<Goods> goods = shareSer.selectGoods(share_idx);
		mav.addObject("shidx", share_idx);
		mav.addObject("goods", goods);
		mav.addObject("attr", session.getAttribute("logInInfo"));
		mav.setViewName("share/payment");

		return mav;
	}

	@RequestMapping(value = "/share/slog/paycomple.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public ModelAndView paymentcomple(@RequestBody HashMap<String, Object> pay) {
		ModelAndView mav = new ModelAndView();

		shareSer.insertPay(pay);
		mav.setViewName("redirect:/share/list.do");
		return mav;
	}

	// 장바구니 등록
	@RequestMapping(value = "/share/cart.do")
	public String insertCart(@ModelAttribute ShareLike like, HttpSession session) {

		// @ModelAttribute는 sumit된 form의 내용을 저장해서 전달받거나, 다시 뷰로 넘겨서 출력하기 위해 사용되는 오브젝트 이다.
		// 도메인 오브젝트나 DTO의 프로퍼티에 요청 파라미터를 바인딩해서 한번에 받으면 @ModelAttribute 라고 볼 수 있다.
		// @ModelAttribute는 컨트롤러가 리턴하는 모델에 파라미터로 전달한 오브젝트를 자동으로 추가해준다.
		// 로그인 여부를 체크하기 위해 세션에 저장된 아이디 확인
		Member res = (Member) session.getAttribute("logInInfo");

		// 세션 값에 아이디랑 이름만
		System.out.println("res" + res);

		String member_id = res.getMember_id();
		System.out.println("컨트롤러 멤버" + member_id);

		if (member_id == null) {

			// 로그인하지 않은 상태이면 로그인 화면으로 이동

			return "redirect:/member/login.do";
		}

		like.setMember_id(member_id);
		System.out.println("컨트롤러 member" + member_id);

		System.out.println("컨트롤러 like" + like);

		// 장바구니 기존에 상품있는지 확인
		int count = shareSer.countCart(like.getShare_idx(), member_id);
//			count == 0 ? shareSer.updateCart(like) : shareSer.insertCart(like);
		if (count == 0) {
			// 없으면 insert
			shareSer.insertCart(like);
		} else {
			// 있으면 update
			shareSer.updateCart(like);
		}
		return "redirect:/share/cartList.do"; // 장바구니 목록으로 이동
	}

	@RequestMapping(value = "/share/cartList.do", method = RequestMethod.GET)
	public ModelAndView list(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<>();

		// hashmap은 map(key,value)로 이뤄져 있고,
		// key값은 중복이 불가능 하고 value는 중복이 가능하다.
		// value에 null값도 사용이 가능하다.
		// 전달할 정보가 많을 경우에는 HashMap<>을 사용하는 것이 좋다.
		// 장바구니에 담을 값들이 많기 때문에 여기선 HashMap<>를 사용한다.

		Member res = (Member) session.getAttribute("logInInfo");

		// 세션 값에 아이디
		System.out.println("res" + res);

		String member_id = res.getMember_id();
		// session에 저장된 userid를 getAttribute()메소드를 사용해서 얻어오고 오브젝트 타입이기 때문에
		// String 타입으로 타입변환한다.

		if (member_id != null) {
			// 로그인한 상태이면 실행
			List<ShareLike> list = shareSer.listCart(member_id);// 장바구니 목록
			int sumMoney = shareSer.sumMoney(member_id);// 금액 합계

			System.out.println("컨트롤러" + sumMoney);
//		            int fee=sumMoney >= 30000 ? 0 : 2500; 

			// 배송료 계산
			// hasp map에 장바구니에 넣을 각종 값들을 저장함
			map.put("sumMoney", sumMoney);
			map.put("list", list); // 장바구니 목록
			map.put("count", list.size()); // 레코드 갯수

			mav.setViewName("share/cart"); // 이동할 페이지의 이름
			mav.addObject("map", map); // 데이터 저장

			return mav; // 화면 이동

		} else { // 로그인하지 않은 상태

			return new ModelAndView("member/login", "", null);
			// 로그인을 하지 않았으면 로그인 페이지로 이동시킨다.
		}
	}

	/*
	 * cart_list.jsp에 있는 delete을 호출하면 컨트롤러로 이동해 delete.do와 맵핑하고 서비스에 장바구니 id를 넘겨준다.
	 * 서비스에서는 넘겨받은 id를 DAO에 저장하고, DAO에서는 태그 아이디가 delete인 태그를 mapper에 전달하고, id도 전달한다.
	 * mapper에서는 memberid가 특정 id (사용자가 선택한 id)를 다 지우게끔 한다. 그리고 장바구니를 삭제한 후에 다시 컨트롤러로
	 * 돌아와 list.jsp 파일로 이동한다.
	 */
	// 삭제
	@RequestMapping(value = "/share/cartDelete.do")
	public String delete(@RequestParam int sharelike_id) {
		shareSer.deleteCart(sharelike_id);
		return "redirect:/share/list.do";
	}

	/*
	 * cart.jsp에 있는 javascript구문에서 deleteAll을 호출하면 컨트롤러로 이동해 deleteAll.do와 맵핑하고 세션에서
	 * 유저의아이디를 가져와서 null이 아닐경우에 서비스로 아이디를 넘긴다. 서비스에서는 넘겨받은 id로 DAO를 호출하고, DAO에서는 태그
	 * 아이디가 deleteAll인 태그를 mapper에 전달하고, id도 전달한다. mapper에서는 memberid 특정 id (사용자가
	 * 선택한 id)를 다 지우게끔 한다. 그리고 장바구니를 전부다 비운 후에 다시 컨트롤러로 돌아와 list.jsp 파일로 이동한다.
	 */
	@RequestMapping(value = "/share/cartDeleteAll.do")
	public String deleteAll(HttpSession session) {
		Member res = (Member) session.getAttribute("logInInfo");

		// 세션 값에 아이디
		System.out.println("res" + res);

		String member_id = res.getMember_id();

		if (member_id != null) {
			shareSer.deleteAllCart(member_id);
		}
		return "redirect:/share/list.do";
	}

	// 댓글 수정 GET
//		 @RequestMapping(value="/share/cartUpdateView.do", method = RequestMethod.GET)
//		 public String UpdateViewCart(Model model,
//		 		ShareLike like ) {
//		 	model.addAttribute("read", shareSer.detailCart(like.getSharelike_id()));
//		 	System.out.println(like.getSharelike_id());
//		 	return "/share/cart";
//		 	
//		 }
	// 수량 변경 업데이트
	@RequestMapping(value = "/share/cartUpdate.do", method = RequestMethod.POST)
	public String updateCart(@RequestParam int[] like_check, @RequestParam int[] share_idx, HttpSession session) {

		Member res = (Member) session.getAttribute("logInInfo");

		// 세션 값에 아이디
		System.out.println("res" + res);

		String member_id = res.getMember_id();

		// 레코드의 갯수 만큼 반복문 실행
		for (int i = 0; i < share_idx.length; i++) {
			ShareLike vo = new ShareLike();
			vo.setMember_id(member_id);
			vo.setLike_check(like_check[i]);
			vo.setShare_idx(share_idx[i]);

			shareSer.modifiyCart(vo);
		}

		return "redirect:/share/cartList.do";
	}

	// 댓글 작성
	@ResponseBody
	@RequestMapping(value = "/share/insert_QnA.do" , method = RequestMethod.POST)
	public void sdetail_QnAInfom(ShareQna qna, HttpSession session) {

		Member res = (Member) session.getAttribute("logInInfo");

		System.out.println("res" + res);

		String member_id = res.getMember_id();

		qna.setMember_id(member_id);

		shareSer.write(qna);

	}

	// 게시판 리스트
	@RequestMapping("/share/detail_QnA.do")
	public ModelAndView sQnA(@RequestParam int share_idx,
			@RequestParam(required = false, defaultValue = "1") int curPage, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<ShareQna> one = shareSer.readQna(share_idx);
		mav.addObject("one", one);
		System.out.println("controller" + share_idx);
		System.out.println("one" + one);

		// 페이징 처리
		int count = shareSer.count(share_idx);
		QnaPager qnapager = new QnaPager(count, curPage);
		int start = qnapager.getPageBegin();
		int end = qnapager.getPageEnd();
		System.out.println("컨트롤러 컬페이지" + curPage);
		List<ShareQna> qna = shareSer.qnaView(share_idx, start, end, session);

		mav.setViewName("share/detail_QnA");
		mav.addObject("qlist", qna);
		System.out.println("qlist컨트롤러 영역" + qna);
		mav.addObject("qnapager", qnapager);

		return mav;

	}

	// 게시판 목록 Json방식으로 처리 : 데이터 리턴
	@RequestMapping("/share/detail_QnAJson.do")
	@ResponseBody // 리턴데이터를 json으로 변환
	public List<ShareQna> listJson(@RequestParam int share_idx,
			@RequestParam(required = false, defaultValue = "1") int curPage, HttpSession session) {
		int count = shareSer.count(share_idx);
		QnaPager qnapager = new QnaPager(count, curPage);
		int start = qnapager.getPageBegin();
		int end = qnapager.getPageEnd();

		List<ShareQna> qna = shareSer.qnaView(share_idx, start, end, session);

		return qna;
	}

	// 댓글 수정 GET
	@RequestMapping(value = "/share/read_QnA.do", method = RequestMethod.GET)
	public String qnaUpdateView(Model model, ShareQna qna, RedirectAttributes ra) {
//					ra.addAttribute("share_idx", qna.getShare_idx());
		model.addAttribute("read", shareSer.detailQna(qna.getShareQnaIdx()));

		model.addAttribute("shareQnaIdx", qna.getShareQnaIdx());
		model.addAttribute("shareQnaContent", qna.getShareQnaContent());
		model.addAttribute("share_idx", qna.getShare_idx());

		return "share/qna_Update";
	}

	// 댓글 수정 Post
	@RequestMapping(value = "/share/readUpdate_QnA.do", method = RequestMethod.POST)
	public String qnaUpdate(ShareQna qna, Model model, RedirectAttributes ra, @RequestParam int share_idx) {
		shareSer.updateQna(qna);

		ra.addAttribute("share_idx", qna.getShare_idx());
//			mav.setViewName("redirect:detail.do");
		return "share/detail";

	}

	// 댓글 삭제 GET
	@RequestMapping(value = "/share/delete_QnA.do", method = RequestMethod.GET)
	public String qnaDeleteView(Model model, ShareQna qna, RedirectAttributes ra) {

		model.addAttribute("delete", shareSer.detailQna(qna.getShareQnaIdx()));

		model.addAttribute("shareQnaIdx", qna.getShareQnaIdx());
		model.addAttribute("shareQnaContent", qna.getShareQnaContent());
		model.addAttribute("share_idx", qna.getShare_idx());
		return "share/qna_Delete";

	}

	// 상품 소감(댓글) 삭제
	@RequestMapping(value = "/share/delete_QnA.do", method = RequestMethod.POST)
	public ModelAndView getDelte(ShareQna qna, HttpSession session, Model model, RedirectAttributes ra)
			throws Exception {
		ModelAndView mav = new ModelAndView();
		//
		shareSer.deleteQna(qna.getShareQnaIdx());
		ra.addAttribute("share_idx", qna.getShare_idx());
		ra.addAttribute("shareQnaIdx", qna.getShareQnaIdx());
		mav.setViewName("redirect:list.do");
		return mav;
	}

	// 게시판 답변란 =======================================
	// 댓글 입력

	@RequestMapping("/share/insertReply.do")
	public void insert(@ModelAttribute Reply vo, HttpSession session) {
		Member res = (Member) session.getAttribute("logInInfo");

		System.out.println("res" + res);

		String member_id = res.getMember_id();

		vo.setMember_id(member_id);
		shareSer.createReply(vo);
	}

	// 댓글 목록(@Controller방식 : veiw(화면)를 리턴)
	@RequestMapping("/share/listReply.do")
	public ModelAndView list(@RequestParam int shareQnaIdx, ModelAndView mav) {
		List<Reply> list = shareSer.listReply(shareQnaIdx);
		// 뷰이름 지정
		mav.setViewName("share/replyList");
		// 뷰에 전달할 데이터 지정
		mav.addObject("list", list);
		// replyList.jsp로 포워딩
		return mav;
	}

	// 댓글 목록(@RestController Json방식으로 처리 : 데이터를 리턴)
	@RequestMapping("/share/listJsonReply.do")
	@ResponseBody // 리턴데이터를 json으로 변환(생략가능)
	public List<Reply> listJson(@RequestParam int shareQnaIdx) {
		List<Reply> list = shareSer.listReply(shareQnaIdx);
		return list;
	}

	// 응원 글 작성 화면
	@RequestMapping(value = "/share/detail_Cheering.do", method = RequestMethod.GET)
	public ModelAndView shList(@RequestParam int share_idx, Model model) {
		ModelAndView mav = new ModelAndView();
		List<ShareCheering> one = shareSer.readCheering(share_idx);
		mav.addObject("slist", one);
		mav.setViewName("share/detail_Cheering");
		return mav;

	}

	// 응원 목록 Json방식으로 처리 : 데이터 리턴
	@RequestMapping("/share/detail_CheeringJson.do")
	@ResponseBody // 리턴데이터를 json으로 변환
	public List<ShareCheering> listJson(@RequestParam int share_idx, HttpSession session) {

		List<ShareCheering> one = shareSer.readCheering(share_idx);

		return one;
	}

	// 응원 글 작성
	@RequestMapping(value = "/share/insert_Cheering.do", method = RequestMethod.POST)
	public void write(ShareCheering ch, HttpSession session) {
		Member res = (Member) session.getAttribute("logInInfo");

		System.out.println("res" + res);

		String member_id = res.getMember_id();

		ch.setMember_id(member_id);

		System.out.println("-========================" + ch);
		shareSer.write(ch);
	}

}
