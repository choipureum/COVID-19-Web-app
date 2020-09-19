<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>


<link rel="stylesheet" type="text/css"
	href="/resources/static/css/sharelist.css" />


<style type="text/css">

.select{ border: 3px soild black;
color:green;}

</style>

<!-- 무한스크롤 -->
<!-- 및 필터링 기능 -->
<script type="text/javascript">
var page = ${paging.currentPage };
$(document).ready(function () {
	
	
	$("a").click(function(){

		console.log($(this).children(0).val());
		var filter_val = $(this).children(0).val();
		$("#fival").val(filter_val);
		//여기부터 필터처리
		$.ajax({
		      type:"post"
		      , url: "/share/filter.do"
		      , data: {
				filter : $(this).children(0).val()
		      }
		      , dataType: "html"
		      , success: function(data) {
		    	  $(".page-wrapper").html(data);
					
		      }
		      , error: function() {
		         console.log("AJAX error")
		      }
		   })
		
		
	
	});

	

$(window).scroll(function(){
   
   if($(window).scrollTop() >= $(document).height() - $(window).height()){
		page++
      console.log(page);
	   if('${paging.lastPage }' >= page  ) {
	      loadlist();
      }      
   }

   });

function loadlist() {
   
	$.ajax({
      type:"post"
      , url: "/share/list.do"
      , data: {
    	  cPage : page,
    	  filter : $("#fival").val()
      }
      , dataType: "html"
      , success: function(data) {

    	  $(".scroll-final").append(data)
      	
      }
      , error: function() {
         console.log("AJAX error")
      }
   })

}

});
</script>


<main id="omcContainer" class="cont_support">
	<h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
	<div class="cMain">
		<article id="mContent" class="project_list">
			<h3 class="tit_section">프로젝트에 응원하고 리워드를 받는 펀딩</h3>
			<div class="box_category">
				<span class="screen_out">카테고리</span>
				<button type="button" class="btn_select">
					전체분야 <span class="ico_comm"></span>
				</button>
				<ul id="category_list" class="list_cate" role="tablist">
					<li class="on" role="tab"><a class="link_cate">전체 <input id="shli_1" type="hidden" value ="*"/>
					</a></li>

					<li><a class="link_cate"> 공간/리빙<input id="shli_2" type="hidden" value ="li"/>
					</a></li>

					<li role="tab" data-category-code="CATE_0006"><a
						class="link_cate"> 지역재생<input id="shli_3" type="hidden" value ="re"/>
					</a></li>

					<li role="tab" data-category-code="CATE_0007"><a
						class="link_cate"> 푸드<input id="shli_4" type="hidden" value ="fo"/>
					</a></li>

					<li role="tab" data-category-code="CATE_0010"><a
						class="link_cate"> 테크<input id="shli_5" type="hidden" value ="te"/>
					</a></li>

				</ul>
			</div>
			<input type = "hidden" id = "fival"/>
			<div class="wrap_project">
				<!-- 2017-08-07 수정 클래스 추가 -->
				<div class="box_select">
					<select id="sorting" name="sorting" class="select_sort"
						title="후원형 프로젝트 목록 분류">
						<option value="highest">펀딩금액순</option>
						<option value="impendence">마감임박순</option>
						<option value="latest">최신순</option>
						<option value="largest">참여자순</option>
					</select>
				</div>


				<ul class="list_prj" id="listPrj">

					<!-- // 2017-08-07 수정 클래스 추가 -->
					<span class="screen_out">프로젝트 목록</span>

					<span class="first_page_flag" style="display: none;"></span>

					<div class="page-wrapper" style="display: block; overflow: auto;">
						<c:forEach items="${list.nlist }" var="list" varStatus="i">
							<li class="project_card reward_project_card">
								<div class="project_card_inner">
									<a
										href="/share/detail.do?shareDate=${list.SHAREDATE }&share_idx=${list.SHARE_IDX }"
										class="project_detail_link"> <span
										class="project_thumbnail"
										style="background-image:url('/resources/upload/share/${list.RENAME_FILE }')"></span>
									</a>
									<div class="project_card_info">
										<span class="screen_out">${list.SHARE_NAME }</span>
										<h3 class="project_name">
											<!--        <a href="/share/detail.do" class="project_detail_link"> -->
											${list.SHARENAME } </a>
										</h3>
										<p class="project_simple_text">
											<span class="screen_out">프로젝트 설명</span> ${list.SIMPLEINFO }
										</p>
										<span class="user_profile"> <span
											class="img_profile clear_empty_picture"> <img
												src="/uploads/member/profile/MEMBER_20200804093209983.png"
												alt="profile">
										</span>
										 <span class="txt_name">사단법인 희망래일</span>
										</span>
										 <span class="project_category"> <span
											class="screen_out">카테고리</span> ${list.FEIELD }
										</span>
									</div>
									<c:set var="dDay" value="${list.DAY }"/>
									<c:choose>
									    <c:when test="${dDay <= 0}">
									<div class="project_state">
										<span class="total_amount">
										 <span class="screen_out">마감된 프로젝트입니다. </span>
										</span>
										<div class="project_card_graph">
											<span class="screen_out">참여율</span> <span class="bar_graph"
												style="width: ${list.PAYPER}%;"></span> <span class="invest_rate">
												${list.PAYPER }% </span>
										</div>
										<span class="funding_type">금액 달성 시 배송진행</span>
									</div>
									    </c:when>
									    <c:otherwise>
									<div class="project_state">
										<span class="total_amount"> <span class="screen_out">현재
												참여금액</span> ${list.PAY }
										</span>
										<div class="project_card_graph">
											<span class="screen_out">참여율</span> <span class="bar_graph"
												style="width: ${list.PAYPER}%;"></span> <span class="invest_rate">
												${list.PAYPER }% </span>
										</div>
										<span class="funding_type">금액 달성 시 배송진행</span>
									</div>
									    </c:otherwise>
									</c:choose>
									
									
								</div>
							</li>
						</c:forEach>
					</div>
				</ul>
				<div class="scroll-final"></div>

			</div>
		</article>

	</div>

</main>


<jsp:include page="/footer.do" />

