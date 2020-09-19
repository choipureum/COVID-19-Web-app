<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet" type="text/css"
	href="/resources/static/css/sharelist.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
.article_intro>p {
	text-align: center;
}

#content {
	position: relative;
	padding: 20px 24px;
	margin-top: 32px;
	width: 66%;
}
</style>
<!-- Q&A script 단  -->
<jsp:include page="/header.do" />
<script type="text/javascript">
$(document).ready(function(){
    
    listReply("1"); // **댓글 목록 불러오기
//     detail_QnA(); // ** json 리턴방식
    
    // ** 댓글 쓰기 버튼 클릭 이벤트 (ajax로 처리)
    $("#btnReply").click(function(){
        var shareQnaContent=$("#shareQnaContent").val();
        var share_idx="${list[0].SHARE_IDX }"
        
        /* 비밀글 체크 */
        var secretReply = "N";
        
        /*  체크 여부 true / fasle*/
        if( $("#secretReply").is(":checked") ){
            secretReply = "Y";
        }
        
        var param="shareQnaContent="+shareQnaContent+"&share_idx="+share_idx+"&secretReply="+secretReply;
        $.ajax({                
            type: "post",
            url: "/share/insert_QnA.do",
            data: param,
            success: function(){
            	console.log(param);
                alert("댓글이 등록되었습니다.");
                listReply("1");
            }
        });
    });
    
   
    

// Controller방식
// **댓글 목록1
function listReply(num){
    $.ajax({
        type: "get",
        url: "/share/detail_QnA.do?share_idx=${list[0].SHARE_IDX }&curPage="+num,
        success: function(result){
        // responseText가 result에 저장됨.
            $("#listReply").html(result);
        }
    });
}
// RestController방식 (Json)
// **댓글 목록2 (json)
function detail_QnA(){
    $.ajax({
        type: "get",
        //contentType: "application/json", ==> 생략가능(RestController이기때문에 가능)
        url: "/share/detail_QnAJson.do?share_idx=${list[0].SHARE_IDX }",
        success: function(result){
        	 console.log(result);
             var output = "<table>";
             for(var i in result){
                 output += "<tr>";
                 output += "<td>"+result[i].member_id;
                 output += "("+changeDate(result[i].shareQnaRegDate)+")<br>";
                 output += result[i].shareQnaContent+"</td>";
                 output += "<tr>";
             }
             output += "</table>";
             $("#listReply").html(output);
         }
    });
}
// **날짜 변환 함수 작성
function changeDate(date){
    date = new Date(parseInt(date));
    year = date.getFullYear();
    month = date.getMonth();
    day = date.getDate();
    hour = date.getHours();
    minute = date.getMinutes();
    second = date.getSeconds();
    strDate = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
    return strDate;
}

});

</script>

<script type="text/javascript">
$(document).ready(function(){


//댓글 수정
  $(document).on("click", ".qnaUpdateBtn", function() {

  	$.ajax({
  		type: "get"
  		, url: "/share/read_QnA.do?share_idx=${list[0].SHARE_IDX }"
			+ "&shareQnaIdx="+$(this).attr("data-qno")
  		, dataType: "html"
  		, success: function(h) {
  			console.log("succ");
  			console.log(h);
  			$("#up").html(h)
  		}
  		, error: function() {
  			console.log("err")
  		}
  	})
	
  })
  

  //댓글 삭제
	 $(document).on("click",".qnaDeleteBtn", function(){
	 
	$.ajax({
		url :  "/share/delete_QnA.do?share_idx=${list[0].SHARE_IDX }"
			+ "&shareQnaIdx="+$(this).attr("data-qno")
		,type  : "get"
		,dataType : "HTML"
		,success : function(h) {
			
			alert("삭제 하겠습니까?.");
			$("#up").html(h);
			
		}
		,error : function() {
			alert("에러발생")
		}
	})
//		 }
});
})


</script>
<script type="text/javascript">
$(document).ready(function() {

  // 클릭 시 복사가 되도록 이벤트를 지정하는 부분
  var copyLink = new ClipboardJS("#btnCopy");
  copyLink.on("success", function() {

    alert("클립보드에 복사되었습니다.");

    

    // 복사되면 블록지정이 되어있는데 이를 초기화시키는 부분
    window.getSelection().removeAllRanges();

  });

});

</script>

<script type="text/javascript">
    $(document).ready(function() {
	// tab operation


	  	  

	  $(document).on("click", ".link_cheering", function() {
	  	  	console.log($(this).children("a").attr("href"))
			$('li').css('background-color', 'white');
			$(this).css('background-color', '#80c72d');
	  	  	$.ajax({
	  	  		type: "get"
	  	  		, url: $(this).children("a").attr("href")
	  	  		, dataType: "html"
	  	  		, success: function(h) {
	  	  		$('.article_intro2').html(h);
				console.log(h);
				console.log(succ);
	  	  		}
	  	  		, error: function() {
	  	  			console.log("err")
	  	  		}
	  	  	})
	  	  	
	  	  	return false;
	  	  })
	  	  
	  	  
	  	  })
	  	  </script>




<main id="omcContainer" class="cont_support">


	<input type="hidden" id="projectSeq" value="8725" /> <input
		type="hidden" id="simulationFlag" value="N" />

	<h2 id="omcBody" class="screen_out">후원형 프로젝트</h2>
	<div class="cMain">
		<article id="mContent" class="project_intro">
			<div class="top_box">
				<header class="head_cont">
					<span class="txt_category"> <span class="screen_out">카테고리</span>
						<c:set var="name" value="${list[0].SHAREFIELD }" /> <c:choose>
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
							<div class="mms_profile"></div>
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
									style="width: ${list[0].PAYPER }%"></span> <span
									class="num_per">${list[0].PAYPER }%</span>
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
								<c:set var="dDay" value="${dDay }" />
								<c:choose>
									<c:when test="${dDay <= 0}">
										<span class="num_value"><span class="screen_out"></span>
										</span>
										<span class="txt_value">마감된 공동구매 입니다</span>
										<a href="#" class="link_join" draggable="false">마감했습니다</a>
									</c:when>
									<c:otherwise>
										<span class="num_value"> D-<span class="screen_out">Day</span>${dDay }
										</span>
										<span class="txt_value"> 일 남음</span>
										<a
											href="/share/slog/payment.do?share_idx=${list[0].SHARE_IDX }"
											class="link_join">참여하기</a>
									</c:otherwise>
								</c:choose>

							</div>


							<div class="txt_notice ">

								<span class="sign_notice">성공해야<br />리워드
								</span> <span class="txt"> 목표액 ${list[0].SHAREMONEY }원에 미달하면 결제가
									진행되지 않는 공동구매입니다.<br /> 결제는 목표액달성시 ${list[0].SHAREDATE }일에
									진행됩니다.
								</span>




							</div>

						</div>

						<div class="item_btns">
							<a class="link_share" id="link_share" style="width: 99%"><button
									id="btnCopy" data-clipboard-target="#targetText"
									style="width: 99%">URL 복사하기</button> <img
								src="https://www.ohmycompany.com/omc/asset/images/share.jpg"
								style="width: 99%" /> <span class="num_count"
								id="share_num_count"> <span id="targetText">http://localhost:8888/share/detail.do?shareDate=${list[0].SHAREDATE}&share_idx=${list[0].SHARE_IDX}</span>
							</span> </a> <input type="hidden" id="like_count" value="86"> <input
								type="hidden" id="interest_seq" value="">


							<!-- 찜하기 구역 -->
							<form name="form1" method="post" action="/share/cart.do">
								<input type="hidden" name="share_idx"
									value="${list[0].SHARE_IDX }">

								<!-- 상품코드를 히든타입으로 넘김 -->
								<select name="like_check">

									<c:forEach begin="1" end="10" var="i">
										<option value="${i}" style="text-align: center;">${i}
											개</option>
										<!-- 장바구니에  10개 까지 담을수 있다.-->
									</c:forEach>
									<span id="icon_like"></span>
									<span class="num_count" id="like_num_count">
								</select>
								<button type="submit" class="btn_like" id="btn_like"
									style="width: 99%">장바구니</button>
							</form>
						</div>
					</div>
				</div>


				<div style='text-align: center; width: 100%;'>
					<div class="row"
						style='background-color: #FFFFFF; border-radius: 8px 8px 8px 8px;'>
						<!-- 게시글의 내용 -->
						<form name='frm_read' id='frm_read' method="get">
							<input type="hidden" id='shaer_idx' name="shaer_idx" value=''>
							<input type="hidden" id='member_id' name="member_id" value=''>
						</form>
						<div class='col-md-6' style='margin: 10px 0px 10px 0px;'>
							<span id='content'></span>
						</div>


						<div class="primary_cont">
							<div class="box_details_cont">
								<section class="section_cont">
									<nav class="sticky_bar">
										<!-- 헤더랑 만나는 순간 fixed 추가 -->
										<h2 class="screen_out">프로젝트 상세 탭메뉴</h2>
										<div class="tab_box">
											<ul class="list_tab">
												<li class="on"><a href="#main_image_slide" id="Intro"
													class="link_tab">소개</a></li>


												<li class="link_qna"><a href="#qnaForm"
													class="link_tab">Q&amp;A<span class="num_count"></span></a></li>
												<li class="link_cheering"><a
													href="/share/detail_Cheering.do?share_idx=${list[0].SHARE_IDX }"
													class="link_tab">참여자&amp;응원<span class="num_count"></span></a></li>

											</ul>




											<div class="btn_area stickable"></div>
										</div>
									</nav>
									<!-- 탭이 눌려질 때 동적으로 페이지를 로드한다. -->
									<div class="article_intro">${list[0].SHARECONTENT }</div>
									<div class="article_intro2"></div>

									<!-- Q&A 입력단 -->
									<div id="content">
										<section class="section_cont">
											<h2 class="screen_out">Q&amp;A</h2>
											<div class="box_qna">
												<p class="qna_info">
													<!--         안녕하세요<span class="txt_name"> 주식회사 케이아트팩토리</span>입니다. -->
													<br>궁금한 점이 있다면 질문을 남겨주세요!
												</p>
												<ul class="list_qna">
													<li>COVID19 Q&amp;A 게시판은 회원으로 로그인한 분만 글을 작성할 수 있으며
														프로젝트 개설자는 참여자들의 참여 관련 질문과 의견을 임의로 삭제하거나 수정하지 않습니다.</li>
													<li>홈페이지의 건전한 운영을 위하여 운영기준 상 부적절하거나 문제의 소지가 있는 게시물이
														게재될 경우 (예: 명예훼손, 광고, 음란성 글 등) 오마이컴퍼니 관리자가 이를 삭제 또는 변경할 수
														있습니다.</li>
												</ul>
											</div>
										</section>
										<!-- **로그인 한 회원에게만 댓글 작성폼이 보이게 처리 -->
										<div id="qnaForm">
											<div class="comment_form_group">
												<div class="comment_input_box">
													<textarea cols="30" rows="5" name="shareQnaContent"
														id="shareQnaContent" title="댓글 작성"
														placeholder="질문을 남겨주세요."></textarea>
													<br> <label for="secretReply">여기를 클릭</label> <input
														type="checkbox" id="secretReply" />비밀 댓글
													<button type="button" id="btnReply">댓글 작성</button>

												</div>
											</div>
										</div>
									</div>
									<br>

									<!-- Q&A 리스단 -->
									<div id="listReply"></div>
								</section>
							</div>


							<div class="box_reward_select">
								<form name="rewardForm" id="rewardForm" action="#">
									<fieldset>
										<ul class="list_reward">
											<c:forEach items="${goods }" var="glist">
												<li><a href="" class="box_reward"> <strong
														class="tit_reward">${glist.goods_Price }원 펀딩</strong>
														<p class="txt_desc">${glist.goods_Name }</p> <span
														class="info_dely"><span class="tit_info">배송
																예정일</span> : <span class="txt_info">목표금액 달성 시 개별공지</span> </span> <span
														class="txt_satea"> <em class="num_state">${list[0].JOINPER}명</em>
															참여하였습니다.
													</span>
												</a></li>
											</c:forEach>
										</ul>
									</fieldset>
								</form>
							</div>

						</div>
					</div>
					<jsp:include page="/footer.do" />