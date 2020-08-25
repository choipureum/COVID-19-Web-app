<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 임포트 -->
<jsp:include page="/header.do" />

<!-- //아이디 찾기  -->
<script type="text/javascript">

$(window).load(function(){
	$("#idFind").click(idFind);
})
// 	username, useremail
// 	눌렀을때
function idFind(event){
	
	var member_name=$("#member_name").val();
	var member_email=$("#member_email").val();
	
	if($("#member_name").val()==""){
		alert("이름을 입력하세요");

	} else if($("#member_email").val()==""){
		alert("이메일을 입력하세요");

	} 
	
// 	//배열에 유저정보 삽입
// 	var userinfo=new Array;
// 	userinfo.push(username);
// 	userinfo.push(useremail);
	
	
	var obj = {"member_name":member_name,"member_email":member_email};
	//확인
	console.log(obj);
	
	$.ajax({
		type : 'POST',
		url : "<c:url value='/member/searchIdimpl.do' />",
// 		data: JSON.stringify(obj),
		data: obj,
		dataType: "text",
		async:false,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		
		success : function(data){
			//확인
			console.log(data);
			
			if(data != null && data != ''){				
				$("#id_find").text('회원님의 아이디는 : ' + data);
				$("#id_find").css('color','blue');
			} else{
				$("#id_find").text('일치정보가 없습니다');
				$("#id_find").css('color','red');
			}
		}
		, error: function() {
			console.log("ajax 실패")
		}
		
	});
}
</script>

<!-- css -->
<style type="text/css">
.searchIdcontainer{
   width:500px;
   margin :40px auto;
   line-height: 16px;
}
h5{
   text-align: center;
}
h5 span{
   color:blue;
   
}


input {
    border: 1px solid lightgray;
    border-radius: 3px;
}
#red{
   color:red;
}

tr{
	height: 50px;
	width:100%;
}

td{
	height: 50px;
	border-bottom:3px solid #000;
}
td:first-of-type{
	border-right:1px solid #000;
	width: 120px;
}
</style>

<!-- 입력  -->
<div class="searchIdcontainer">

   <h5><span>아이디 </span>찾기</h5>
   <hr>
   
<!-- 비밀번호 확인 해주기  -->
<!-- 메인화면 으로 가야하지 않나..?-->
	<form action="/id/find" method="post" id="myForm">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" placeholder="이름" name="member_name" id="member_name" required style="height:30px; width: 300px"/></td>
			<td><div id="name_check"></div></td>
		</tr>
		
		<tr>
			<td>이메일</td>
			<td><input type="email" placeholder="이메일" name="member_email" id="member_email" required style="height:30px; width: 300px"/></td>
		</tr>
	</table>

	
	<!-- 아이디찾기 로그인 버튼 -->
		<hr>
		<div style="margin:0 auto;text-align:center;">
			<button type="button" value="아이디 찾기" id="findid" onclick="idFind()" value="아이디찾기">아이디찾기</button>
			<button type="button" value="로그인" id="login" onclick="location.href='/main.do'" value="로그인">로그인</button>
		</div>
		<hr>
	<!-- 찾은아이디 반환넣어줄 -->
  		<div id="id_find"></div>
  		<br><br>
   </form>
</div>






<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>