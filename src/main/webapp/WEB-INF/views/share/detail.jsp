<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" type="text/css"
	href="/resources/static/css/sharelist.css" />
<link rel="stylesheet" type="text/css"
	href="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.css">
<style type="text/css">
.article_intro>p {
	text-align: center;
}
</style>

<script src="https://www.ohmycompany.com/omc/asset/js/isMobile.min.js"></script>
<script
	src="https://www.ohmycompany.com/omc/asset/js/common/jquery.form.js"></script>
<script
	src="https://www.ohmycompany.com/omc/asset/js/common/jquery-scrollLock.min.js"></script>
<script
	src="https://www.ohmycompany.com/omc/asset/js/uikit/uikit.min.js"></script>

<!-- Swiper -->
<link rel="stylesheet"
	href="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/css/swiper.min.css">
<script
	src="../../cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.min.js"></script>

<!-- 공통 유틸 js -->
<script
	src="https://www.ohmycompany.com/omc/asset/js/common/commonUtil.js?ver=20191030"></script>


<jsp:include page="/header.do" />

<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'../../connect.facebook.net/en_US/fbevents.js');
	fbq('init', '1596038603991444');
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1596038603991444&amp;ev=PageView&amp;noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->


<script type="text/javascript" charset="UTF-8"
	src="../../t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	if (typeof kakaoPixel === 'function') {
		kakaoPixel('3359785880917884039').pageView();
	}
</script>



<!-- Hotjar Tracking Code for https://www.ohmycompany.com/ -->

<script src="../../developers.kakao.com/sdk/js/kakao.min.js"></script>
<script
	src="../../cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
<div id="omcIndex">
	<a href="#omcGnb" class="shortcut">주메뉴 바로가기</a> <a href="#omcSearch"
		class="shortcut">검색 바로가기</a> <a href="#omcBody" class="shortcut">본문
		바로가기</a>
</div>

<div id="omcWrap">
	<script type="text/javascript">
		$(document).ready(function() {

			var body = $("body");

			$("#inpSearch").keydown(function(e) {
				if (e.keyCode === 13) {//키가 13이면 실행 (엔터는 13)
					fnSearchWord();
				}
			});

			$("#inpMenubarSearch").keydown(function(e) {
				if (e.keyCode === 13) {//키가 13이면 실행 (엔터는 13)
					fnMenubarSearchWord();
				}
			});

			$("#menubarSearchButton").click(fnMenubarSearchWord);

			$("#btn_logout").on("click", function() {
				location.href = "https://www.ohmycompany.com/login/logout";
			});

			// $("#inpSearch").on("click", function(){
			//     $("#omcSearch").addClass("on");
			// });

			$("#topSearchBtn").click(focusSearchInput);
		});

		function focusSearchInput() {
			$("#omcSearch").addClass("on");
			var $input = $('#inpSearch');
			$input.focus();
		}

		function fnSearchWord() {
			var searchSelector = $("#omcSearch");
			if (searchSelector.is(".search_g", ".on")) {
				var inpSearch = $("#inpSearch");
				inpSearch.val(function() {
					return $(this).val().trim();
				});

				if (inpSearch.val().length === 0) {
					alert("검색어를 입력하세요.");
					inpSearch.focus();
					return false;
				}
				var form = document.omcSearch;
				form.action = "/main/search;jsessionid=40EF219E555115950018A131E1EFDCF0.server01";
				form.submit();

			} else if (searchSelector.hasClass("search_g")) {
				$("#inpSearch").focus();
			}
		}

		function fnMenubarSearchWord() {

			var inpSearch = $("#inpMenubarSearch");
			inpSearch.val(function() {
				return $(this).val().trim();
			});

			if (inpSearch.val().length === 0) {
				alert("검색어를 입력하세요.");
				inpSearch.focus();
				return false;
			}
			var form = document.omcSearch;
			form.inpSearch.value = inpSearch.val();
			form.action = "/main/search;jsessionid=40EF219E555115950018A131E1EFDCF0.server01";
			form.submit();
		}
	</script>
	<!-- header -->



	<main id="omcContainer" class="cont_support">

		<%--       	${list }   --%>
		<!-- aside -->

		<!--  aside -->

		<input type="hidden" id="projectSeq" value="8725" /> <input
			type="hidden" id="simulationFlag" value="N" />

		<h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
		<div class="cMain">
			<article id="mContent" class="project_intro">
				<div class="top_box">
					<header class="head_cont">
						<span class="txt_category"> <span class="screen_out">카테고리</span>
							<a
							href="https://www.ohmycompany.com/reward/list#category=CATE_0005">
								문화예술 </a>

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
									<span class="img_profile"> <img
										src="https://www.ohmycompany.com/uploads/member/profile/MEMBER_20200628081127301.png">

									</span>
									<div class="author_cont">
										<div class="builder_profile_wrapper">
											<p>
												<span class="txt_name">주식회사 케이아트팩토리</span>
											</p>
											<span class="txt_mail">k-**********@k-artfactory.com</span> <span
												class="sns_area"> <span class="box_links"> <span
													class="screen_out">프로젝트SNS</span> <a
													href="http://www.k-artfactory.com/" target="_blank"
													class="link_home"> <span class="ico_comm"></span> <span
														class="sns_name"></span>
												</a> <a href="http://www.facebook.com/K.Factory.2020"
													target="_blank" class="link_facebook"> <span
														class="ico_comm"></span> <span class="sns_name"></span>
												</a> <a href="http://www.instagram.com/kart__factory/"
													target="_blank" class="link_insta"> <span
														class="ico_comm"></span> <span class="sns_name"></span>
												</a>

											</span>
											</span>

										</div>
									</div>
								</div>
								<div class="mms_profile">

									<a href="#none" class="link_mms" id="link_profile">프로필보기</a> <a
										href="#none" class="link_profile" id="link_message">개설자문의</a>
								</div>
							</div>
						</div>
						<div class="project_details">
							<div class="item_state">
								<p>
									<span class="txt_statetitle">모인금액</span>
								</p>
								<span class="screen_out">현재 참여금액</span><span class="num_value">${list[0].SHAREMONEY }</span>
								<span class="txt_value">원&nbsp;모금</span>
							</div>
							<div class="state_project">
								<div class="graph_support">
									<span class="screen_out">참여율</span> <span class="bar_graph"
										style="width: 21%"></span> <span class="num_per">21%</span>
								</div>

								<div class="item_state">
									<p>
										<span class="txt_statetitle">참여인원</span>
									</p>
									<span class="screen_out">참여자 수</span><span class="num_value">82</span>
									<span class="txt_value">명 참여</span>
								</div>

								<div class="item_state">
									<p>
										<span class="txt_statetitle">남은기간</span>
									</p>


									<span class="num_value"> D-<span class="screen_out">Day</span>${dDay }
									</span><span class="txt_value"> 일 남음</span> <a
										href="https://www.ohmycompany.com/reward/8725/join/select;jsessionid=40EF219E555115950018A131E1EFDCF0.server01"
										class="link_join">참여하기</a>

								</div>


								<div class="txt_notice ">

									<span class="sign_notice">성공해야<br />리워드
									</span> <span class="txt"> 목표액 10,000,000원에 미달하면 결제가 진행되지 않는
										프로젝트입니다.<br /> 결제는 목표액달성시 2020년09월01일에 진행됩니다.
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






									<div class="btn_area stickable">




										<a
											href="https://www.ohmycompany.com/reward/8725/join/select;jsessionid=40EF219E555115950018A131E1EFDCF0.server01"
											class="link_join">참여하기</a>




									</div>
								</div>
							</nav>
							<!-- 탭이 눌려질 때 동적으로 페이지를 로드한다. -->
							<div class="article_intro">${list[0].SHARECONTENT }</div>
							<div id="accordionCont" class="accordion_g">
								<h2 class="screen_out">프로젝트 주요안내</h2>

								<div class="panel">
									<button type="button" class="btn_accordion">
										리워드 배송 안내<span class="fa fa-angle-down"></span>
									</button>
									<div class="cont">
										<p>
											- 프로젝트 종료 후 후원금을 우수리스크 민족학교에 보낼 예정입니다. <br>- 이를 러시아
											우수리스크 현지에서 영수증과 후원물품 사진을 보낼 예정입니다. <br>- 2020년 10월 10일
											손편지 및 기부금영수증이 일괄발송 됩니다. <br>- 아이들의 손편지는 책상과 의자를 후원해주셨을 때
											전해드립니다.&nbsp;
										</p>
									</div>
								</div>

								<div class="panel">
									<button type="button" class="btn_accordion">
										리워드 배송 지연 시<span class="fa fa-angle-down"></span>
									</button>
									<div class="cont">
										<p>
											- 펀딩해 주신 참여자분들께 약속드린 후원 일정을 지키기 위해 최선을 다할 것을 약속합니다. 단, 펀딩을
											받아야만 진행을 시작할 수 있는 크라우드펀딩 특성 상 예상치 못한 상황으로 인해 프로젝트 일정이 다소 지연될
											수 있는 점을 알려드립니다. <br>- 약속된 날로부터 프로젝트 일정 지연이 예상되는 즉시,
											최근소식에 상세한 사유와 변경되는 일정을 공지하겠습니다.
										</p>
									</div>
								</div>

								<div class="panel">
									<button type="button" class="btn_accordion">
										환불 및 교환정책<span class="fa fa-angle-down"></span>
									</button>
									<div class="cont">
										<p>
											- 환불은 펀딩종료일 1일 전까지 가능하며 이후는 환불이 불가능합니다. 또한 펀딩기간 중 리워드가 배송된
											경우에도 환불이 불가능하오니 이 점 양해해주세요. <br>- 펀딩 종료일 이후 단순 변심으로 인한
											환불 및 교환은 불가능합니다. <br>- 리워드가 손편지인 관계로 참여자의 배송지 기재 오류,
											참여자가 개설자에게 사전 고지 없이 배송지를 수정해 배송사고가 발생할 경우에 재 발송은 어렵습니다. <br>-
											관련 문의가 있을 시 프로젝트 상단 'Q&amp;A'에 질문을 등록해주세요. <br>- 지속적인
											리워드 배송 지연 및 개설자의 개인적인 사유로 리워드 제공이 이루어지지 않는 경우 개설자가 직접 참여자의
											환불계좌를 받아 참여금액의 100%를 환불해드리겠습니다.
										</p>
									</div>
								</div>

							</div>
						</section>
					</div>


					<div class="box_reward_select">
						<form name="rewardForm" id="rewardForm" action="#">
							<fieldset>








								<ul class="list_reward">










									<!-- 리워드 수량이 무한한 경우 -->
									<li><a
										href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15001"
										class="box_reward"> <strong class="tit_reward">10,000원
												펀딩</strong>
											<p class="txt_desc">뱃지 1개 + 후원자 표기(리플렛발송)</p> <span
											class="info_dely"><span class="tit_info">배송 예정일</span>
												: <span class="txt_info">펀딩 종료 후 리플렛, 뱃지 제작으로 인해 10월
													5일 이후 순차배송됩니다.</span></span> <span class="txt_satea"><em
												class="num_state">56명</em> 참여하였습니다.</span>
									</a></li>











									<!-- 리워드 수량이 무한한 경우 -->
									<li><a
										href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15002"
										class="box_reward"> <strong class="tit_reward">29,800원
												펀딩</strong>
											<p class="txt_desc">[1+1 콘서트 티켓] + 뱃지 1개 + 후원자 표기</p> <span
											class="info_dely"><span class="tit_info">배송 예정일</span>
												: <span class="txt_info">[현장수령] 리워드 상품입니다. (자율좌석제 운영)</span></span>
											<span class="txt_satea"><em class="num_state">13명</em>
												참여하였습니다.</span>
									</a></li>


									<!-- 리워드 수량 제한이 있는 경우 -->


									<li><a
										href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15003"
										class="box_reward"> <strong class="tit_reward">54,900원
												펀딩</strong>
											<p class="txt_desc">[2+2 콘서트 티켓] + 뱃지 2개 + 후원자 표기</p> <span
											class="info_dely"><span class="tit_info">배송 예정일</span>
												: <span class="txt_info">[현장수령] 리워드 상품입니다. (자율좌석제 운영)</span></span>
											<span class="txt_satea"><em class="num_state">6명</em>
												참여하였습니다.<small class="txt_count">(수량 118개 남음)</small></span>
									</a></li>



									<!-- 리워드 수량이 무한한 경우 -->
									<li><a
										href="https://www.ohmycompany.com/reward/8725/join/select?selectrewardseq=15004"
										class="box_reward"> <strong class="tit_reward">100,000원
												펀딩</strong>
											<p class="txt_desc">♥후원하기♥_액자포장뱃지(장식용) + 후원자 표기(리플렛 발송)</p> <span
											class="info_dely"><span class="tit_info">배송 예정일</span>
												: <span class="txt_info">펀딩 종료 후 리플렛, 뱃지 제작으로 인해 10월
													5일 이후 순차배송됩니다.</span></span> <span class="txt_satea"><em
												class="num_state">7명</em> 참여하였습니다.</span>
									</a></li>



								</ul>
							</fieldset>
						</form>
					</div>

				</div>
</div>
				<jsp:include page="/footer.do" />
