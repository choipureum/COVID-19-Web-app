<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

	<title>코로나-19 종합관리센터(COVID-19)</title>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
    
	<meta name="author" content="보건복지부, 코로나바이러스감염증-19(COVID-19), 질병관리본부">       
	<meta name="keywords" content="코로나바이러스감염증-19(COVID-19), 코로나바이러스감염증-19, 코로나바이러스, 보건복지부">
	<meta name="description" content="코로나바이러스감염증-19 정식 홈페이지로 발생현황, 국내발생현황, 국외발생현황, 시도별발생현황, 대상별 유의사항,  생활 속 거리 두기, 공적마스크 공급현황, 피해지원정책, 홍보자료, FAQ, 관련기관(보건소, 선별진료소 찾기), 정부 브리핑 안내">	
	<meta name="copyright" content="보건복지부">
	
	<meta property="og:url" content="index.html">
	<meta property="og:type" content="website">
	<meta property="og:site_name" content="코로나바이러스감염증-19(COVID-19)">
	<meta property="og:locale" content="ko">
	<meta property="og:title" content="코로나바이러스감염증-19(COVID-19)">
	<meta property="og:description" content="코로나바이러스감염증-19 정식 홈페이지로 발생현황, 국내발생현황, 국외발생현황, 시도별발생현황, 대상별 유의사항,  생활 속 거리 두기, 공적마스크 공급현황, 피해지원정책, 홍보자료, FAQ, 관련기관(보건소, 선별진료소 찾기), 정부 브리핑 안내">
	<meta property="og:image" content="/resources/static/image/header/homeimg.png"> 
	
	
	<link rel="icon" type="image/png" sizes="64x64" href="/resources/static/image/header/ROK.png">
    <link rel="stylesheet" href="/resources/static/css/co_commonb946.css">	
    <link rel="stylesheet" href="/resources/static/css/co_component.css">
    <link rel="stylesheet" href="/resources/static/css/lightslider.min.css">
	<link rel="stylesheet" href="/resources/static/css/co_main_new3708f.css">	
	
    <script src="/resources/static/js/jquery-1.11.2.min.js"></script>
    <script src="/resources/static/js/lightslider.min.js"></script>
    <script src="/resources/static/js/co_common.js"></script>
	<script src="/resources/static/js/co_mainb946.js?ver=20200506"></script>
	

		
	<script type="text/javaScript">
	
	function fn_goMenu(url, brd_id, brd_gubun, data_Gubun){
		
		$("#brdId").val(brd_id);
		$("#brdGubun").val(brd_gubun);
		$("#dataGubun").val(data_Gubun);
	
		var frm = $("#menuFrm");
		frm.attr("action", url);
		frm.submit();
	}
	
	function search( where ){
	
	var thisForm = $("#"+ where);
	var thisSearch = $(thisForm).find("#searchTerm");
	var cont = $(thisSearch).val();
	
	//특수문자 체크
	if (containsChars(cont,"~!@#$%^&*()+|`=\\[]{};:'\".<>/?")) {
		alert("특수문자는 제외하고 검색해주시기 바랍니다.");
		$(thisSearch).val("");
		event.preventDefault();
		return false;
		
	}else if ( cont == "" || cont == null || cont == undefined){
		alert("검색어를 입력하세요");
		$(thisSearch).focus();
		event.preventDefault();
		return false;
	}
	
	return true;		
	
}
	function fn_goHostUrl(){
		if(wCatch() == 'p'){
			window.open("https://www.g-health.kr/portal/health/pubHealthSearch/list.do?rows=5&amp;cpage=1&amp;cl_cd=71&amp;c_view=1&amp;bbsId=U00198&amp;menuNo=200452");
		} else {
			window.open("https://www.g-health.kr/mobile/m03/m01_02.do?cm_cd=71");
		}
	}


	</script>
<!-- 폰트 다운로드 -->
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Gothic+A1:wght@400;700&family=Nanum+Myeongjo:wght@700&display=swap');
</style>

	<link rel="stylesheet" href="/resources/static/css/chart_kr0a6d.css">
	<script src="/resources/static/js/Chart.min.js"></script>
	<script src="/resources/static/js/chartjs-plugin-datalabels.min.js"></script>
	<script src="/resources/static/js/chart_kr0a6d.js?ver=20200710"></script>
	
</head>
<body>
<form name="menuFrm" id="menuFrm" method="get">
	<input name="brdId" id="brdId" type="hidden" />
	<input name="brdGubun" id="brdGubun" type="hidden" />
	<input name="dataGubun" id="dataGubun" type="hidden" />
	<input name="ncvContSeq" id="ncvContSeq" type="hidden" />
	<input name="contSeq" id="contSeq" type="hidden" />
	<input name="board_id" id="board_id" type="hidden" />
</form>
<!--  반응형 --> 
	<div class="wrap nj">
		<div class="w_catch">
			<div class="wc_p t_dp_n m_dp_n"><span class="hdn">너비 1180px 이상</span></div>
			<div class="wc_t p_dp_n m_dp_n"><span class="hdn">너비 768px - 1179px</span></div>
			<div class="wc_m p_dp_n t_dp_n"><span class="hdn">너비 767px 이하</span></div>
		</div>
		
		<!-- Navigation -->
		<div class="navigation t_dp_n m_dp_n">
			<div>
				<div class="n_left"><h1 class="corona_h1"><a href="/main.do">코로나-19 종합관리센터<span>(COVID-19)</span></a></h1></div>
                <div class="n_right">
                	<ul class="shim">
                    	<li><a href="http://www.mohw.go.kr/" target="_blank" title="새창">중앙사고수습본부</a></li>
                      	<li><a href="http://www.cdc.go.kr/" target="_blank" title="새창">중앙방역대책본부</a></li>
                    </ul>
					<ul class="sns">
						<li class="facebook"><a href="http://www.faceook.com/koreacdcpr" target="_blank" title="질병관리본부 페이스북으로 새창">페이스북</a></li>
						<li class="youtube"><a href="https://youtube.com/channel/UCa7-3Zvxg-5Rfxgu3RQY_gw" target="_blank" title="질병관리본부 유튜브 새창">유튜브</a></li>
						<li class="post"><a href="https://post.naver.com/my.nhn?memberNo=20182790" target="_blank" title="질병관리본부 포스트 새창">포스트</a></li>
						<li class="github"><a href="https://github.com/COVID-19-WEB-App/COVID-19-Web-app" target="_blank" title="프로젝트 깃헙">깃허브</a></li>
					</ul>
					<ul class="main_login">
						<li><a href="#" title="새창">로그인</a></li> 
						<li><a href="#" title="새창">회원가입</a></li> 
					</ul>
                </div>
			</div>
		</div>
		<!-- // Navigation -->
		<!-- Header -->
		<div id="header" class="header">
			<div>
            	<div class="h_left">
					<h1 class="logo"><a href="/main.do">코로나-19 종합관리센터<span>(COVID-19)</span></a></h1>
					<div class="t_top_other">
						<ul class="t_sns">
							<li class="facebook"><a href="http://www.faceook.com/koreacdcpr" target="_blank" title="질병관리본부 페이스북으로 새창">페이스북</a></li>
							<li class="youtube"><a href="https://youtube.com/channel/UCa7-3Zvxg-5Rfxgu3RQY_gw" target="_blank" title="질병관리본부 유튜브 새창">유튜브</a></li>
							<li class="post"><a href="https://post.naver.com/my.nhn?memberNo=20182790" target="_blank" title="질병관리본부 포스트 새창">포스트</a></li>
							<li class="github"><a href="https://github.com/COVID-19-WEB-App/COVID-19-Web-app" target="_blank" title="프로젝트 깃헙">깃허브</a></li>
						</ul>
						<ul class="t_camp">
							<li><a href="http://www.mohw.go.kr/" target="_blank" title="새창">중앙사고수습본부</a></li>
							<li><a href="http://www.cdc.go.kr/" target="_blank" title="새창">중앙방역대책본부</a></li>
						</ul>						
						<ul class="t_country">
							<li><a href="/resources/en/index.html" target="_blank" title="새창">로그인</a></li>
							<li><a href="/resources/cn/index.html" target="_blank" title="새창">회원가입</a></li> 
						</ul>
					</div>
				</div>
				<div class="h_right">
					<div id="gnb" class="gnb t_dp_n m_dp_n">
                        
                        <ul>
                            <li><a href="baroView4f20.html?brdId=4&amp;brdGubun=41">바로알기</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="baroView4f20.html?brdId=4&amp;brdGubun=41">&middot; 코로나19 란? </a></li>
                                        <li><a href="baroView2dfba.html?brdId=4&amp;brdGubun=42">&middot; 대한민국 방역체계</a></li>
                                        <li><a href="baroView3d57c.html?brdId=4&amp;brdGubun=43">&middot; 환자치료 및 관리</a></li>
                                        <li><a href="baroView4260b.html?brdId=4&amp;brdGubun=44">&middot; 예방 조치 안내</a></li>
                                    </ul>
                                </div></div>                            
                            </li>
                            <li><a href="bdBoardList62bd.html?brdId=1&amp;brdGubun=11">발생동향</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="bdBoardList62bd.html?brdId=1&amp;brdGubun=11">&middot; 국내 발생 현황</a></li>
                                        <li><a href="bdBoardListb8cf.html?brdId=1&amp;brdGubun=14">&middot; 국외 발생 현황</a></li>
                                        <li><a href="bdBoardList0949.html?brdId=1&amp;brdGubun=13">&middot; 시도별 발생동향</a></li>
                                        <li><a href="bdBoardList98a5.html?brdId=1&amp;brdGubun=12">&middot; 확진환자 이동경로</a></li>
                                    </ul>
                                </div></div>                              
                            </li>
                            <li><a href="tcmBoardList81c5.html?brdId=3&amp;brdGubun=">뉴스 & 이슈</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="tcmBoardList81c5.html?brdId=3&amp;brdGubun=">&middot; 보도자료</a></li>
                                        <li><a href="factBoardListacb8.html?brdId=3&amp;brdGubun=33">&middot; 코로나19 이슈체크</a></li>
                                        <li><a href="maskBoardList3767.html?brdId=3&amp;brdGubun=36">&middot; 공적마스크 공급현황</a></li>
                                        <li><a href="lastBannerListced8.html?brdId=3&amp;brdGubun=38">&middot; 일별 브리핑 모아보기</a></li>
                                    </ul>
                                </div></div>
                            </li>
                            <li><a href="infoBoardList306c.html?brdId=3&amp;brdGubun=32">홍보자료 & FAQ</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="infoBoardList306c.html?brdId=3&amp;brdGubun=32">&middot; 홍보자료</a></li>
                                        <li><a href="faqBoardList0b7a.html?brdId=3&amp;brdGubun=37">&middot; FAQ</a></li>
                                    </ul>
                                </div></div>
                            </li>
                            <li><a href="supportPolicyBoardListfce2.html?brdId=5&amp;brdGubun=51">피해지원정책</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="supportPolicyBoardListfce2.html?brdId=5&amp;brdGubun=51">&middot; 일반인(대국민)</a></li>
                                        <li><a href="supportPolicyBoardList0d2e.html?brdId=5&amp;brdGubun=52">&middot; 취약계층</a></li>
                                        <li><a href="supportPolicyBoardList39b1.html?brdId=5&amp;brdGubun=53">&middot; 소상공인 및 기업</a></li>
                            			<li><a href="supportPolicyBoardListdb3a.html?brdId=5&amp;brdGubun=54">&middot; 의료기관</a></li>
                                        <li><a href="supportPolicyBoardListc19a.html?brdId=5&amp;brdGubun=55">&middot; 발생지역</a></li>
                                        <li><a href="supportPolicyBoardList3b0c.html?brdId=5&amp;brdGubun=56">&middot; 기타</a></li>
                                    </ul>
                                </div></div>
                            </li>  
                            <li><a href="duBoardList2048.html?brdId=2&amp;brdGubun=21">공지사항</a>
                                <div class="g_sub"><div>
                                    <ul>
                                    	<li><a href="duBoardList2048.html?brdId=2&amp;brdGubun=21">&middot; 일반인</a></li>
                                        <li><a href="duBoardLista087.html?brdId=2&amp;brdGubun=23">&middot; 입국자 및 해외여행객</a></li>
                                        <li><a href="duBoardList31a7.html?brdId=2&amp;brdGubun=22">&middot; 자가격리자</a></li>
                            			<li><a href="duBoardList0c4d.html?brdId=2&amp;brdGubun=24">&middot; 의료기관</a></li>
                                        <li><a href="duBoardList7b7a.html?brdId=2&amp;brdGubun=25">&middot; 집단 및 다중이용시설</a></li>
                                        <li><a href="duBoardListcd10.html?brdId=2&amp;brdGubun=28">&middot; 지자체</a></li>
                                        <li><a href="duBoardList3201.html?brdId=2&amp;brdGubun=26">&middot; 기업 및 시장</a></li>
                                        <li><a href="duBoardList42ba.html?brdId=2&amp;brdGubun=27">&middot; 사회적 거리 두기</a></li>
                                    </ul>
                                </div></div>
                            </li>
                            <li><a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61">생활 속 거리 두기</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61">&middot; 기본 수칙</a></li>
										   <li><a href="guidelineList99ba.html?brdId=6&amp;brdGubun=63">&middot; 공동체 수칙</a></li>
                                         <li><a href="guidelineList0a61.html?brdId=6&amp;brdGubun=62&amp;dataGubun=">&middot; 장소별 실천수칙</a></li>
                                    </ul>
                                </div></div>
                            </li>  
                            <!-- 쇼핑 -->
                             <li><a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61">쇼핑</a>
                                <div class="g_sub"><div>
                                    <ul>
                                        <li><a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61">&middot; 공동 구매</a></li>
										   <li><a href="guidelineList99ba.html?brdId=6&amp;brdGubun=63">&middot; 소상공인 쇼핑몰</a></li>
                                    </ul>
                                </div></div>
                            </li>                            
                        </ul>
					</div>	
					
					<!--20200221 검색추가 시작-->
					<div class="p_search">
						<form id="searchForm1" name="searchForm" action="http://ncov.mohw.go.kr/search/search.jsp" method="post">
							<input type="hidden" id="pageNum" name="pageNum" value="1" />					<!-- 현재페이지 -->
							<input type="hidden" id="searchTab" name="searchTab" value="TOTAL" />				<!-- 검색탭 -->
							<input type="hidden" id="order" name="order" value="weight" />							<!-- 정렬 -->
							<input type="hidden" id="sDate" name="sDate" value="" />							<!-- 시작일자 -->
							<input type="hidden" id="eDate" name="eDate" value="" />							<!-- 시작일자 -->
							<input type="hidden" id="searchRange" name="searchRange" value="total" />		<!-- 검색범위 -->
							<input type="hidden" id="dateRange" name="dateRange" value="all" />				<!-- 등록범위 -->
							<div class="n_search">
								<label for="searchTerm" class="hdn">검색어</label>
								<input type="text" name="searchTerm" id="searchTerm" value=""  placeholder="검색어를 입력하세요."/>
								<input type="submit" class="btn_search" onclick="search( 'searchForm1' );"><span class="hdn">검색</span>
							</div>
						</form>	
					</div>
					<!--20200221 검색추가 끝//-->
					<!--20200221 검색추가(tablet, mobile) 추가-->
					<a href="#" class="btn_global_search"><span class="hdn">통합검색</span><i></i></a>
					<div class="global_search">
						<form id="searchForm2" name="searchForm" action="http://ncov.mohw.go.kr/search/search.jsp" method="post">
							<input type="hidden" id="pageNum" name="pageNum" value="1" />					<!-- 현재페이지 -->
							<input type="hidden" id="searchTab" name="searchTab" value="TOTAL" />				<!-- 검색탭 -->
							<input type="hidden" id="order" name="order" value="weight" />							<!-- 정렬 -->
							<input type="hidden" id="sDate" name="sDate" value="" />							<!-- 시작일자 -->
							<input type="hidden" id="eDate" name="eDate" value="" />							<!-- 시작일자 -->
							<input type="hidden" id="searchRange" name="searchRange" value="total" />		<!-- 검색범위 -->
							<input type="hidden" id="dateRange" name="dateRange" value="all" />				<!-- 등록범위 -->
							<div class="n_search">
								<label for="searchTerm" class="hdn">검색어</label>
								<input type="text" name="searchTerm" id="searchTerm" value=""  placeholder="검색어를 입력하세요."/>
								<input type="submit" class="btn_search" onclick="search( 'searchForm2' );"><span class="hdn">검색</span>
							</div>
						</form>	
						<a href="#" class="btn_close"><span class="hdn">통합검색닫기</span></a>
					</div>
					<!--20200221 검색추가 추가 끝//-->
					
					<a href="#" class="btn_global_menu"><span class="hdn">전체메뉴</span><i></i></a>	
				</div>
			</div>
		</div>
		<!-- // Header -->
		<!-- Global_menu -->
		<div class="global_menu">
			<div>
				<div class="gm_title">
					<div class="gmt_p">
						<span>전체메뉴</span>
					</div>
					<div class="gmt_tm">
						<div class="gmtt_b">
							<div class="gmt_site">
								<ul>
									<li><a href="/main.do">홈</a></li>
								</ul>
							</div>
						</div>
					</div>				
				</div>
				<div class="gm_content">
					<div>
                        <ul>
                            <li><a href="javascript:void(0);" class="gmc_title">바로알기</a>
                            	<div class="gmc_list">
                                    <ul>
                                        <li><a href="baroView4f20.html?brdId=4&amp;brdGubun=41">코로나19 란? </a></li>
                                        <li><a href="baroView2dfba.html?brdId=4&amp;brdGubun=42">대한민국 방역체계</a></li>
                                        <li><a href="baroView3d57c.html?brdId=4&amp;brdGubun=43">환자치료 및 관리</a></li>
                                        <li><a href="baroView4260b.html?brdId=4&amp;brdGubun=44">예방 조치 안내</a></li>
                                    </ul>
                                  </div>         
                            </li>
                            <li><a href=href%3d_javascript_void(0)%3b_.html class="gmc_title">발생동향</a>
                            	<div class="gmc_list">
                                    <ul>
                                        <li><a href="bdBoardList62bd.html?brdId=1&amp;brdGubun=11">국내 발생 현황</a></li>
                                        <li><a href="bdBoardListb8cf.html?brdId=1&amp;brdGubun=14">국외 발생 현황</a></li>
                                        <li><a href="bdBoardList0949.html?brdId=1&amp;brdGubun=13">시도별 발생동향</a></li>
                                        <li><a href="bdBoardList98a5.html?brdId=1&amp;brdGubun=12">확진환자 이동경로</a></li>
                                    </ul>                              	
                            	</div>
                            </li>                      
                            <li><a href="javascript:void(0);" class="gmc_title">뉴스 & 이슈</a>
                                <div class="gmc_list">
                                    <ul>
										<li><a href="tcmBoardList81c5.html?brdId=3&amp;brdGubun=">보도자료</a></li>
										<li><a href="factBoardListacb8.html?brdId=3&amp;brdGubun=33">코로나19 팩트 & 이슈체크</a></li>
										<li><a href="maskBoardList3767.html?brdId=3&amp;brdGubun=36">공적마스크 공급현황</a></li>
										<li><a href="lastBannerListced8.html?brdId=3&amp;brdGubun=38">일별 브리핑 이슈 모아보기</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="javascript:void(0);" class="gmc_title">홍보자료 & FAQ</a>
                                <div class="gmc_list">
                                    <ul>
										<li><a href="infoBoardList306c.html?brdId=3&amp;brdGubun=32">홍보자료</a></li>
										<li><a href="faqBoardList0b7a.html?brdId=3&amp;brdGubun=37">FAQ</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="javascript:void(0);" class="gmc_title">피해지원정책</a>
                                <div class="gmc_list">
                                    <ul>
                                        <li><a href="supportPolicyBoardListfce2.html?brdId=5&amp;brdGubun=51">일반인(대국민)</a> </li>
                                        <li><a href="supportPolicyBoardList0d2e.html?brdId=5&amp;brdGubun=52">취약계층</a> </li>
                                        <li><a href="supportPolicyBoardList39b1.html?brdId=5&amp;brdGubun=53">소상공인 및 기업</a> </li>
                                        <li><a href="supportPolicyBoardListdb3a.html?brdId=5&amp;brdGubun=54">의료기관</a> </li>
                                        <li><a href="supportPolicyBoardListc19a.html?brdId=5&amp;brdGubun=55">발생지역</a> </li>
                                        <li><a href="supportPolicyBoardList3b0c.html?brdId=5&amp;brdGubun=56">기타</a> </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="javascript:void(0);" class="gmc_title">공지사항</a>
                                <div class="gmc_list">
                                    <ul>
										<li><a href="duBoardList2048.html?brdId=2&amp;brdGubun=21">일반인</a></li>
										<li><a href="duBoardLista087.html?brdId=2&amp;brdGubun=23">입국자 및 해외여행객</a></li>
										<li><a href="duBoardList31a7.html?brdId=2&amp;brdGubun=22">자가격리자</a></li>
										<li><a href="duBoardList0c4d.html?brdId=2&amp;brdGubun=24">의료기관</a></li>
										<li><a href="duBoardList7b7a.html?brdId=2&amp;brdGubun=25">집단 및 다중이용시설</a></li>
										<li><a href="duBoardListcd10.html?brdId=2&amp;brdGubun=28">지자체</a></li>
										<li><a href="duBoardList3201.html?brdId=2&amp;brdGubun=26">기업 및 시장</a></li>
										<li><a href="duBoardList42ba.html?brdId=2&amp;brdGubun=27">사회적 거리 두기</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="javascript:void(0);" class="gmc_title">생활 속 거리 두기</a>
                                <div class="gmc_list">
                                    <ul>
                                        <li><a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61">기본 수칙</a> </li>
                                        <li><a href="guidelineList99ba.html?brdId=6&amp;brdGubun=63">공동체 수칙</a> </li>
                                        <li><a href="guidelineList0a61.html?brdId=6&amp;brdGubun=62&amp;dataGubun=">장소별 실천 수칙</a> </li>
                                    </ul>
                                </div>
                            </li>
                                                        
                        </ul>
					</div>
				</div>
				<a href="#" class="btn_close"><span class="hdn">전체메뉴닫기</span></a>
			</div>
		</div>