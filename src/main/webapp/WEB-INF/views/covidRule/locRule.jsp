<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>
<!-- js AJAX 검색구현 -->
<script>
$(document).ready(function() {
    $("#search_content").keyup(function() {
    	var k = $(this).val();
    	$(".subGrp").hide();
        var temp = $(".listLink:contains('" + k + "')");
        $(temp).parent().parent().parent().show();
        
        var item = document.getElementsByClassName("listLink");
        for(i=0;i<item.length;i++){      
        	if(item[i].innerHTML.indexOf(k)>-1){       		
        		 item[i].style.display = "inline-block";
        	}
        	else{
        		item[i].style.display = "none";
        	}
        }
        
    });
});
</script>




	<div class="container" style="background:white;"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="/main.do"><span class="hdn">홈</span></a></li>
		                        <li><a href="/locRule.do">생활 속 거리 두기</a></li>
		                        
		                        
		                        <li><a href="/locRule.do">장소별 실천 수칙</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                    
		                    
		                    <h3>장소별 실천 수칙</h3>
		                    </div>
		                </div>
		            </div>
		            <!--텝메뉴-->
		             <!-- 장소별 실천 수칙 -->
                        <div class="tab_flt cnt2-2-2">
                            <ul>
                                <li class="on"><a href="/locRule.do"><span>설명 자료</span></a></li>
                                <li ><a href="guidelineListf207.html?brdId=6&amp;brdGubun=62&amp;dataGubun=622"><span>홍보 자료</span></a></li>
                            </ul>
                        </div>
                    
		                               
                    <!--텝메뉴-->
                    
					 <!--게시물 검색 -->
					 <div class="guidePlace_search">
					 	<div>
							<fieldset>
								<legend><span class="hdn">장소별 실천수칙 통합검색</span></legend>
								    <label class="hdn" for="place_word">검색어</label>
									<input type="text" id="search_content" name="search_content" value=""  placeholder="검색어를 입력해 주세요." />
									<input type="submit" class="submit" value="검색" /><a href="/locRule.do" class="allList" >전체목록</a>
							</fieldset>
						</div>
					 </div>
                    <!--게시물 검색//-->
                    
	                <!--게시판 상단-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count">총<strong>55</strong>건</p>
	                    </div>
					</div>
					 <!--게시판 상단//-->					                     

					 <!--게시판 목록-->
					 <div class="guidePlace">
						<!--게시판 분류 업무-->
						<div class="grpList">
							<h4 class="title">
								<p class="tit_name">업무</p>
								<button type="button" class="ctr_btn" data-ctrlist="grp_toggle" title="목록접기"><span class="hdn">목록 접기</span></button>
							</h4>

							<div class="grpListViewArea">
							
							
								<div class="subGrp">
									<p class="subtitle" style="text-align:left">일할 때</p>
				 	 		  		
									<ul>				
							 				<li><a class="listLink" href="javascript:void(0);" >사업장</a></li>
								 		
							 		
								 		
							 				<li ><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3112', '', '625');">회의</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3113', '', '625');">민원창구</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3114', '', '625');">우체국</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3115', '', '625');">국내출장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3116', '', '625');">방문서비스</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3151', '', '625');">콜센터</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3152', '', '625');">건설업</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3153', '', '625');">은행지점</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3154', '', '625');">물류센터</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3155', '', '625');">전시행사</a></li>
		 		
									</ul>						
								</div>

							</div>
						</div>
						<!--게시판 분류 업무//-->
						<div class="grpList">
							<h4 class="title">
								<p class="tit_name">일상</p>
								<button type="button" class="ctr_btn" data-ctrlist="grp_toggle" title="목록접기"><span class="hdn">목록 접기</span></button>
							</h4>
							<div class="grpListViewArea">
							
							
								
								<div class="subGrp">
									<p class="subtitle">이동할 때</p>
									
									<ul>
		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3117', '', '626');">대중교통</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3118', '', '626');">여객선</a></li>
 		
									</ul>
									
								</div>
								
								
								<div class="subGrp">
									<p class="subtitle">식사할 때</p>
									
									<ul>
		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3119', '', '627');">음식점</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3333', '', '627');">카페/스터디카페</a></li>
		
									</ul>
									
								</div>
								
								
								<div class="subGrp">
									<p class="subtitle">공부할 때</p>
									
									<ul>
			 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3120', '', '628');">학원ㆍ독서실 등</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3156', '', '628');">고시원</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3157', '', '628');">연수시설</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3158', '', '628');">학술행사</a></li>
						 		
									</ul>									
								</div>
						<div class="subGrp">
									<p class="subtitle">쇼핑할 때</p>
									
									<ul>
 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3121', '', '629');">대형유통시설</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3122', '', '629');">전통시장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3123', '', '629');">중소슈퍼</a></li>
								 		
							 		
									</ul>
									
								</div>
					
								<div class="subGrp">
									<p class="subtitle">특별한 날</p>
									
									<ul>
							 										 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3124', '', '6210');">결혼 등 가족 행사</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3125', '', '6210');">장례식장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3126', '', '6210');">산후조리원</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3159', '', '6210');">기념식</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3614', '', '6210');">봉안시설</a></li>

									</ul>
									
								</div>
								
								
								<div class="subGrp">
									<p class="subtitle">종교생활</p>
									
									<ul>
 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3127', '', '6211');">종교시설</a></li>
	
									</ul>
									
								</div>
								
								
								<div class="subGrp">
									<p class="subtitle">병·의원 갈 때</p>
									
									<ul>
	
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3128', '', '6212');">병ㆍ의원</a></li>

									</ul>
									
								</div>
	
								<div class="subGrp">
									<p class="subtitle">에어컨 사용할 때</p>
									
									<ul>

							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3129', '', '6213');">에어컨 사용</a></li>
	
									</ul>
									
								</div>
								
								
								<div class="subGrp">
									<p class="subtitle">공동생활</p>
									
									<ul>

							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3164', '', '6214');">기숙사</a></li>
		 		
									</ul>
									
								</div>
				 
							</div>
						</div>

						<div class="grpList">
							<h4 class="title">
								<p class="tit_name">여가</p>
								<button type="button" class="ctr_btn" data-ctrlist="grp_toggle" title="목록접기"><span class="hdn">목록 접기</span></button>
							</h4>
							<div data-listarea="leisure" class="grpListViewArea">
						
								<div class="subGrp">
									<p class="subtitle">여행할 때</p>
									
									<ul>
	
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3130', '', '6215');">호텔ㆍ콘도업</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3131', '', '6215');">민박ㆍ숙박업</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3132', '', '6215');">유원시설</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3133', '', '6215');">야영장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3134', '', '6215');">동물원</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3135', '', '6215');">국립공원</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3160', '', '6215');">해수욕장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3161', '', '6215');">하천·계곡</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3162', '', '6215');">수상레저</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3297', '', '6215');">지역축제</a></li>
 		
							 		
									</ul>
									
								</div>
								
								
								<div class="subGrp">
									<p class="subtitle">여가 등</p>
									
									<ul>

								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3136', '', '6216');">야외활동</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3137', '', '6216');">공중화장실 등</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3138', '', '6216');">이ㆍ미용업</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3139', '', '6216');">목욕장업</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3140', '', '6216');">도서관</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3141', '', '6216');">공연장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3142', '', '6216');">영화상영관</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3143', '', '6216');">박물관ㆍ미술관</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3144', '', '6216');">야구장ㆍ축구장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3145', '', '6216');">노래연습장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3146', '', '6216');">실내체육시설</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3147', '', '6216');">수영장</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3148', '', '6216');">PC방</a></li>
								 		
							 		
								 		
							 				<li><a class="listLink" href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3163', '', '6216');">유흥시설</a></li>
		 		
									</ul>
									
								</div>
			 
							</div>
						</div>
						
					 </div>
					 <!--게시판 목록//-->

					 <!--게시물 일부 다운로드-->
					 <div class="guideDnArea">
					 	<a href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3149', '', '6217');" class="downbtn"><span>생활 속 거리두기 세부지침 (3판) 바로가기</span></a>
					 	<a href="javascript:void(0);" onclick="javascript:fn_boardView('/guidelineView.do','6','62','3150', '', '6217');" class="downbtn"><span>활동 종류별 감염 위험도 분석 결과 바로가기</span></a>
					 </div>
					 <!--게시물 이불 다운로드//-->
	                
	                
				</div>
			</div>
		</div>
	</div>
</form>

		
<jsp:include page="/footer.do"/>
		
