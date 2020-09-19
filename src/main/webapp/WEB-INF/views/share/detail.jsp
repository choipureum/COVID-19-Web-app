<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" type="text/css"
	href="/resources/static/css/sharelist.css" />
<style type="text/css">
.article_intro>p {
	text-align: center;
}
</style>

<jsp:include page="/header.do" />

	<main id="omcContainer" class="cont_support">


	 <input type="hidden" id="projectSeq" value="8725" /> <input
			type="hidden" id="simulationFlag" value="N" />

		<h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		<div class="cMain">
			<article id="mContent" class="project_intro">
				<div class="top_box">
					<header class="head_cont">
						<span class="txt_category"> <span class="screen_out">카테고리</span>
						<c:set var="name" value="${list[0].SHAREFIELD }" />
						<c:choose>
						    <c:when test="${name eq 'li'}">
						        <a href="#">리빙</a>
						    </c:when>
						   <c:when test="${name eq 're'}">
						        <a href="#">지역재생</a>
						    </c:when>
						   <c:when test="${name eq 'fo'}">
						        <a href="#">푸드</a>
						    </c:when>
						   <c:when test="${name eq 'te'}">
						        <a href="#">테크</a>
						    </c:when>
						</c:choose>
						</span>
						<h1>${list[0].SHARENAME }</h1>

					</header>
					<div class="summary_cont">
						<div class="project_info">


							<div id="main_image_slide"
								uk-slideshow="ratio: 5:3; animation: fade">
								<ul class="uk-slideshow-items">

									<li><img
										src="/resources/upload/share/${list[0].RENAME_FILE}"
										class="img_g" /></li>

								</ul>

							</div>

							<div class="author_profile">
								<div class="user_profile">
									<div class="author_cont">
										<div class="builder_profile_wrapper">
											<p>
												<span class="txt_name">작성자 : ${list[0].MEMBER_ID }</span>
											</p>
										</div>
									</div>
								</div>
								<div class="mms_profile">
								</div>
							</div>
						</div>
						<div class="project_details">
							<div class="item_state">
								<p>
									<span class="txt_statetitle">모인금액</span>
								</p>
								<span class="screen_out">현재 참여금액</span><span class="num_value">${list[0].PAY }</span>
								<span class="txt_value">원&nbsp;모금</span>
							</div>
							<div class="state_project">
								<div class="graph_support">
									<span class="screen_out">참여율</span> <span class="bar_graph"
										style="width: ${list[0].PAYPER }%"></span> <span class="num_per">${list[0].PAYPER }%</span>
								</div>

								<div class="item_state">
									<p>
										<span class="txt_statetitle">참여인원</span>
									</p>
									<span class="screen_out">참여자 수</span><span class="num_value">${list[0].JOINPER}</span>
									<span class="txt_value">명 참여</span>
								</div>

								<div class="item_state">
									<p>
										<span class="txt_statetitle">남은기간</span>
									</p>
									<c:set var="dDay" value="${dDay }"/>
									<c:choose>
									    <c:when test="${dDay <= 0}">
											<span class="num_value"><span class="screen_out"></span>
											</span><span class="txt_value">마감된 공동구매 입니다</span> <a
											href="#"
											class="link_join" draggable="false">마감했습니다</a>
									    </c:when>
									    <c:otherwise>
									   <span class="num_value"> D-<span class="screen_out">Day</span>${dDay }
	                          				</span><span class="txt_value"> 일 남음</span> <a
	                            		 	href="/share/slog/payment.do?share_idx=${list[0].SHARE_IDX }"
	                             			class="link_join">참여하기</a>
									    </c:otherwise>
									</c:choose>

								</div>


								<div class="txt_notice ">

									<span class="sign_notice">성공해야<br />리워드
									</span> <span class="txt"> 목표액 ${list[0].SHAREMONEY }원에 미달하면 결제가 진행되지 않는
										공동구매입니다.<br /> 결제는 목표액달성시 ${list[0].SHAREDATE }일에 진행됩니다.
									</span>




								</div>

							</div>

							<div class="item_btns">
								<a href="#none" class="link_share" id="link_share">공유 <img
									src="https://www.ohmycompany.com/omc/asset/images/share.jpg" />
									<span class="num_count" id="share_num_count"> 399 </span>
								</a> <input type="hidden" id="like_count" value="86"> <input
									type="hidden" id="interest_seq" value="">
								<button type="button" class="btn_like" id="btn_like">
									관심 <img
										src="https://www.ohmycompany.com/omc/asset/images/good.jpg" />
									<span id="icon_like"></span> <span class="num_count"
										id="like_num_count"> 86 </span>
								</button>
							</div>
						</div>
					</div>

				</div>

				<div class="primary_cont">
					<div class="box_details_cont">
						<section class="section_cont">
							<nav class="sticky_bar">
								<!-- 헤더랑 만나는 순간 fixed 추가 -->
								<h2 class="screen_out">프로젝트 상세 탭메뉴</h2>
								<div class="tab_box">
									<ul class="list_tab">
										<li class="on"><a
											href="https://www.ohmycompany.com/reward/8725/introAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?isPreview=Y&amp;mockFlag=N"
											id="Intro" class="link_tab">소개</a></li>

										<li><a
											href="https://www.ohmycompany.com/reward/8725/newsAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?mockFlag=N"
											id="News" class="link_tab">최근소식<span class="num_count"></span></a>
										</li>
										<li><a
											href="https://www.ohmycompany.com/reward/8725/qnaAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?isPreview=Y&amp;mockFlag=N"
											id="Qna" class="link_tab">Q&amp;A<span class="num_count"></span></a>
										</li>
										<li><a
											href="https://www.ohmycompany.com/reward/8725/cheerAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01?mockFlag=N"
											id="Cheer" class="link_tab">참여자<span class="skip">응원</span><span
												class="num_count">82</span></a></li>


										<li><a
											href="https://www.ohmycompany.com/reward/8725/coopAjax;jsessionid=40EF219E555115950018A131E1EFDCF0.server01"
											id="Coop" class="link_tab">협업지원<span class="num_count">1</span></a>
										</li>


									</ul>






									<div class="btn_area stickable"></div>
								</div>
							</nav>
							<!-- 탭이 눌려질 때 동적으로 페이지를 로드한다. -->
							<div class="article_intro">${list[0].SHARECONTENT }</div>
						
						</section>
					</div>


					<div class="box_reward_select">
						<form name="rewardForm" id="rewardForm" action="#">
							<fieldset>
								<ul class="list_reward">
									<c:forEach items="${goods }" var="glist">
									<li><a
										href=""
										class="box_reward"> <strong class="tit_reward">${glist.goods_Price }원
												펀딩</strong>
											<p class="txt_desc">${glist.goods_Name }</p> <span
											class="info_dely"><span class="tit_info">배송 예정일</span>
												: <span class="txt_info">목표금액 달성 시 개별공지</span>
												</span> <span class="txt_satea">
												<em class="num_state">${list[0].JOINPER}명</em> 참여하였습니다.</span>
									</a></li>
									</c:forEach>
								</ul>
							</fieldset>
						</form>
					</div>
					
				</div>
		</div>
		<jsp:include page="/footer.do" />