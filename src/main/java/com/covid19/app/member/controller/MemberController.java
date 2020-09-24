package com.covid19.app.member.controller;

import java.io.IOException;
import java.net.PasswordAuthentication;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import org.codehaus.jackson.JsonNode;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.covid19.app.member.model.service.MemberService;
import com.covid19.app.member.model.vo.Member;
import com.github.scribejava.core.model.OAuth2AccessToken;

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
//컨트롤러설정
@Controller
@RequestMapping("member")

public class MemberController {
	 @Autowired   
	 public MemberService memberService;
	 
	 private NaverLoginBO naverLoginBO;
	 private String apiResult = null;
	    
	 @Autowired
	 private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		 this.naverLoginBO = naverLoginBO;
	 }
	
	 /**
	  * 회원가입 GET
	  */
	@RequestMapping(value="/join.do",method = RequestMethod.GET)
	public String join() {
		return "/member/join";
	}
	/**
	 * 회원가입 약관페이지
	 */
	@RequestMapping(value="/joininfo.do",method=RequestMethod.GET)
	public String joinfo() {
		return "/member/joininfo";
	}
	
	/**
	 * 회원가입 POST
	 * @param commandMap 멤버
	 * @return mav
	 */
	@RequestMapping(value="/joinimpl.do",method = RequestMethod.POST)
	public ModelAndView joinimpl(@RequestParam Map<String,Object> commandMap,HttpServletRequest request) {		
	
		ModelAndView mav = new ModelAndView();
		if(commandMap.get("auth").equals("일반")) {
			commandMap.put("auth", 0);
		}else if(commandMap.get("auth").equals("사업자")){
			commandMap.put("auth", 1);
		}
		int res=memberService.insertMember(commandMap);
		String root = request.getContextPath();
		
		if(res > 0) {
			mav.addObject("alertMsg", "회원가입을 성공했습니다. 로그인하여 이용해주세요!");
			mav.addObject("url", "/main.do");
			mav.setViewName("/member/result");
		} else {
			mav.addObject("alertMsg", "회원가입에 실패했습니다. 다시 시도해 주세요");
			mav.addObject("url", root+"/member/join.do");
			mav.setViewName("/member/result");
		}
		return mav;
	}
	
	/**
	 * 아이디중복체크
	 */
	@RequestMapping(value="/idcheck.do", method = RequestMethod.POST)
	@ResponseBody
	public String idcheck(String member_id) {
		
		int res = memberService.selectId(member_id);
		if(res > 0) {
			return member_id;
		}
		return "";
	}


	/**
	 * 로그인
	 */
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login() {
		return "/member/login";
	}
	
	/**
	 * 로그인 처리
	 */
	@RequestMapping(value="/loginimpl.do", method=RequestMethod.POST)
	public ModelAndView loginImpl(@RequestParam Map<String,Object> commandMap,HttpSession session,HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();  
		Member res = memberService.login(commandMap);
		System.out.println(res);
	      
		if(res != null) { //로그인성공!
	    	  
			session.setAttribute("logInInfo", res);
			System.out.println("memberid = " + session.getAttribute("logInInfo"));
	    	 
			mav.addObject("alertMsg", "환영합니다 COVID - 19 종합 홈페이지 입니다");
			mav.addObject("url",request.getContextPath()+"/main.do");
	     
		} else { //실패하면  로그인
			mav.addObject("alertMsg", "아이디 또는 비밀번호를 확인해주세요!");
			mav.addObject("url", request.getContextPath()+"/main.do");
		}
		mav.setViewName("member/result");
		return mav;
	}
	/**
	 * 로그아웃
	 */
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		//로그아웃시 main.do
		mav.setViewName("/main");
		return mav;
	}
	
	
	
	

	
	

	/**
	 * 아이디찾기 
	 */
	@RequestMapping(value="/searchId.do",method = RequestMethod.GET)
	public String searchId() {
		return "/member/searchId";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchIdimpl.do", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	public String searchIdimpl(@ModelAttribute Member member) {
		System.out.println("member" + member);
		String searchid = memberService.searchId(member);
		System.out.println(searchid);
		return searchid;
	}
	
	/**
	 * 비밀번호 찾기
	 * @return 비밀번호 찾기 jsp
	 */
	@RequestMapping(value="/searchPw.do",method = RequestMethod.GET)
	public String searchPw() {
		return "/member/searchPw";
	}
	
	@ResponseBody
	@RequestMapping(value="/searchPwimpl.do",method = RequestMethod.POST)
	public int searchPwimpl(@ModelAttribute Member member) {
		System.out.println("member" + member);
		int searchpw = memberService.searchPw(member);
		System.out.println("searchpw " + searchpw);
		return searchpw;
	}
	
	/**
	 * 비밀번호 바꾸기
	 */
	@RequestMapping(value="/changePw.do", method = RequestMethod.GET)
	public ModelAndView changePw(String member_id) {
		ModelAndView mav = new ModelAndView();  
		
		mav.addObject("member_id", member_id);
		mav.setViewName("/member/changePw");
		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/changePwimpl.do", method = RequestMethod.POST)
	public int changePwimpl(@ModelAttribute Member member,HttpSession session,HttpServletRequest request) {
		int res = memberService.changePw(member);
	    String member_id= member.getMember_id();
	      
	    return res;
	}

	
	/**
	 * 이메일 인증
	 */
	@RequestMapping(value="/sendMail.do",method = RequestMethod.POST)
	@ResponseBody
	public String sendMail(HttpSession session, @RequestParam String member_email) {
		
		System.out.println("member_email " + member_email);
		int randomCode = new Random().nextInt(10000) + 1000;
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joinCode", joinCode);
		
		String subject = "COVID-19 회원가입 승인 번호 입니다";
		StringBuilder sb = new StringBuilder();
		sb.append("회원가입 승인번호는 < ").append(joinCode).append(" >입니다");
		
		boolean success=memberService.send(subject, sb.toString(), "vnfmaghkdwp@naver.com",member_email );
		if(success) {
			return joinCode;
		}else {
			return null ;
		}		
	}
	
	
	/**
	 * 네이버 로그인
	 */
	
	//로그인 첫 화면 요청 메소드
    @RequestMapping(value = "/naverlogin", method = { RequestMethod.GET, RequestMethod.POST })
    public String naverlogin(Model model, HttpSession session) {
        
        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        System.out.println("네이버:" + naverAuthUrl);
        
        //네이버 
        model.addAttribute("url", naverAuthUrl);
        
        /* 생성한 인증 URL을 View로 전달 */
        return "/member/naverlogin";
    }
    
//    //네이버 로그인 성공시 callback호출 메소드
//    @RequestMapping(value = "/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
//    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session, HttpServletRequest request, Member member)
//            throws IOException, ParseException, MessagingException {
//        
//    	int resultCnt =0;
//    	
//    	System.out.println("여기는 callback");
//        OAuth2AccessToken oauthToken;
//        oauthToken = naverLoginBO.getAccessToken(session, code, state);
//        
//        //로그인 사용자 정보를 읽어온다.
//        apiResult = naverLoginBO.getUserProfile(oauthToken);
//        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
//        
//        model.addAttribute("result", apiResult);
//        
//        System.out.println("result"+apiResult);
//        
//        //DB와 세션에 넣기
//        JSONParser jsonParser = new JSONParser();
//        JSONObject jsonObject = (JSONObject)jsonParser.parse(naverLoginBO.getUserProfile(oauthToken).toString());
//        
//        JSONObject response = (JSONObject)jsonObject.get("response");
//        
//        System.out.println("이것은" + jsonObject.get("response"));
//        String member_id=(String)response.get("id");
//        
//        System.out.println("아이디는" + member_id);
//        
//        member.setMember_id((String)response.get("id"));
//        member.setMember_pw("0000"); //DB에서 Not null로 처리했기에 임의로 준 값
//        member.setMember_name((String) response.get("name"));
//        member.setMember_email((String) response.get("email"));
//        member.setMember_birth((String) response.get("birthday"));
//        
//        System.out.println("멤바아이디는 " + member.getMember_id());
//        
//        session.setAttribute("logInInfo", member_id);
//         
//        model.addAttribute("result", apiResult);
//        //생략 가능_세션에 담기 위해 사용했다.
//        request.getSession(true).setAttribute("id", member.getMember_id());
//        
//        /* 네이버 로그인 성공 페이지 View 호출 */
//        return "/member/naversuccess";
//        
//        
//    }
    

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
}












