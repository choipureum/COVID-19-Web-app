<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet" type="text/css"
	href="/resources/static/css/sharelist.css" />

<!-- 공통 유틸 js -->
<script type="text/javascript">
$(document).ready(function(){
    
    //listReply(); // **댓글 목록 불러오기
    listReply2(); // ** json 리턴방식
    
    // ** 댓글 쓰기 버튼 클릭 이벤트 (ajax로 처리)
    $("#btnReply").click(function(){
        var shareQnaContent=$("#shareCheeringContent").val();
        var share_idx="${slist[0].share_idx }"
        var param="shareCheeringContent="+shareCheeringContent+"&share_idx="+share_idx;
        $.ajax({                
            type: "post",
            url: "/share/insert_Cheering.do",
            data: param,
            success: function(){
                alert("댓글이 등록되었습니다.");
                listReply2();
            }
        });
    });
    
//Controller방식
// **댓글 목록1
function listReply(){
    $.ajax({
        type: "get",
        url: "/share/detail_Cheering.do?share_idx=${slist[0].share_idx}",
        success: function(result){
        // responseText가 result에 저장됨.
            $("#listReply").html(result);
        }
    });
}
// RestController방식 (Json)
// **댓글 목록2 (json)
function listReply2(){
    $.ajax({
        type: "get",
        //contentType: "application/json", ==> 생략가능(RestController이기때문에 가능)
        url: "/share/detail_CheeringJson.do",
        success: function(result){
            console.log(result);
            var output = "<table>";
            for(var i in result){
                output += "<tr>";
                output += "<td>"+result[i].member_id;
                output += "("+changeDate(result[i].shareCheeringRegdate)+")<br>";
                output += result[i].shareCheeringContent+"</td>";
                output += "<tr>";
            }
            output += "</table>";
            $("#qnaList").html(output);
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
})
</script>
	<div id="content">
		<section class="section_cont">
			<h2 class="screen_out">Q&amp;A</h2>
			<div class="box_qna">
				<p class="qna_info">
					<!--         안녕하세요<span class="txt_name"> 주식회사 케이아트팩토리</span>입니다. -->
					<br>응원하고 싶은 말을 적어주세요.
					</p>
				<ul class="list_qna">
					<li>COVID19 Q&amp;A 게시판은 회원으로 로그인한 분만 글을 작성할 수 있으며 프로젝트 개설자는
						참여자들의 참여 관련 질문과 의견을 임의로 삭제하거나 수정하지 않습니다.</li>
					<li>홈페이지의 건전한 운영을 위하여 운영기준 상 부적절하거나 문제의 소지가 있는 게시물이 게재될 경우 (예:
						명예훼손, 광고, 음란성 글 등) 오마이컴퍼니 관리자가 이를 삭제 또는 변경할 수 있습니다.</li>
				</ul>
			</div>
		</section>
		</div>
		<div> 
		${slist[0].share_idx }</div>
		<div id="chaForm">
				<div class="comment_form_group">
					<div class="comment_input_box">
						<textarea cols="30" rows="5" name="shareCheeringContent"
							id="shareCheeringContent" title="댓글 작성" placeholder="질문을 남겨주세요."></textarea>
						<button type="button" id="btnReply" >댓글 작성</button>
							
					</div>
				</div>
				</div>
        <br>
        
        <ol>
        <c:forEach items="${slist }" var="view">

					<h2 class="screen_out">댓글</h2>
					<li id="lankf_shareqno">
						
						<p>
							회원 : ${view.member_id}  작성 날짜 :
							<fmt:formatDate value="${view.shareCheeringRegdate }"
								pattern="yyyy-MM-dd" />

						</p>
						<p>${view.shareCheeringContent }</p> <!-- 	    <input type="button" id="sosos" value="정보수정하기"> -->
					
					</li>
				</c:forEach>
			</ol>
			

		<div id="qnaList">
			
		</div>

