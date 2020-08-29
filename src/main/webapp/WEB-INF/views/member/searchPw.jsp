<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 임포트 -->
<jsp:include page="/header.do" />


<script type="text/javascript">
function email(){
	if($('#emailcheckbox').css("display") =="none") {
		$("#emailcheckbox").show();
	} 
}
</script>
<!-- //아이디 찾기  -->
<script type="text/javascript">
$(window).load(function(){
	$("#pwFind").click(pwFind);
})
// 	눌렀을때
function pwFind(event){
	
	var member_name=$("#member_name").val();
	var member_id=$("#member_id").val();
	var member_email=$("#member_email").val();
	if($("#member_name").val()==""){
		alert("이름을 입력하세요!");
		return false;
		
	}else if($("#member_id").val()==""){
		alert("아이디를 입력하세요!")
		return false;4
		
	} else if($("#member_email").val()==""){
		alert("이메일을 입력하세요!");
		return false;
		
	} else if(!($("#hiddenEmailCheck").val()=="ok")){
		alert("이메일 인증을 해주세요!");
		return false;
	}
	//배열에 유저정보 삽입
	
	var obj = {"member_name":member_name,"member_id":member_id, "member_email":member_email};
	$.ajax({
		type : 'POST',
		url : "<c:url value='/member/searchPwimpl.do' />",
		data: obj,
		async:false,
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success : function(res){  
			console.log(res);
// 			return 값으로 넘겨주기
			if(res == 1){ //있으니깐 - 비밀번호 재설정 홈페이지로 이동
				location.href="/member/changePw.do?member_id="+member_id;				
			}
			else{
				alert("회원의 정보가 존재하지 않습니다!")
			}
		}
		, error: function() {
			console.log("ajax 실패")
		}
		
	});
}
</script>

<!-- 이메일 인증버튼 -->
<script type="text/javascript">
var ran=0;
function emailSend(){
	if($("#member_email").val()==""){
		alert("이메일을 입력하세요");
		return false;
	}
	if($('#emailcheckbox').css("display") =="none") {
		$("#emailcheckbox").show();
	} 		
	//ajax 이용
	var member_email= $("#member_email").val();
	$.ajax({
		type: 'POST',
		url: "<c:url value='/member/sendMail.do' />",
//			파라미터 변수 이름 값(사용자아이디값)
		data : {"member_email" : member_email},
		success : function(random){		
			//왜일까? ----------여기 짊ㄴ아ㅓ
			alert("이메일을 보냈습니다"+random);	
			if(random!=null){
				ran=random;		
			}			
		}
	});
};

// if (ran == 이메일인증.val()) emailCheck버튼
function emailCheckFunc(){
	
	if(ran == $("#useremailcheck").val()){
		$("#email_check").text('이메일이 인증되었습니다');
		$("#email_check").css('color','blue');	
		$("#hiddenEmailCheck").attr("value","ok");
	} else{
		$("#email_check").text('인증번호가 틀립니다  다시 확인해주세요!');
		$("#email_check").css('color','red');		
	}
}
</script>

<!-- css -->
<style type="text/css">
/* 전체틀 */
.searchPwcontainer{
   width:600px;
   margin :40px auto;
   line-height: 16px;
}
/* 메인 이름 */
h5{ text-align: center; }
h5 span{ color:blue; }
#findpw { 
	background-color: #164165;
    color:white; 
    border-radius: 5px;   
    border: 0; 
    padding: 11px 93px; 
 } 
.id_Button{ 
    background-color: rgb(220,220,220); 
    color:black; 
    border-radius: 2px; 
    border: 0;
    padding: 6px 20px; 
 } 
#emailcheckbox{ display: none; }
#login{  
     background-color: #164165;
     color:white;  
     border-radius: 5px;  
     border: 0;  
     padding: 11px 93px;  
}  
input { border: 1px solid lightgray; border-radius: 3px; }
#red{ color:red; }
select{ height:35px; width: 100px;}
tr{ height: 50px;width:100%;}
td{ height: 50px; border-bottom:3px solid #000; }
td:first-of-type{ border-right:1px solid #000; width: 120px; }
</style>

<body>
<!-- 입력  -->
<div class="searchPwcontainer">

   <h5><span>비밀번호 </span>찾기</h5>
   <hr>
<!--    비밀번호 확인 해주기  -->
<!--    메인화면 으로 가야하지 않나..?-->
	<form action="/pw/find" method="post" id="myForm">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" placeholder="이름" name="member_name" id="member_name" required style="height:30px; width: 300px"/></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="email" placeholder="아이디" name="member_id" id="member_id" required style="height:30px; width: 300px"/></td>
		</tr>
  		<tr>
  			<td>이메일</td>
  			<td><input type="email" placeholder="이메일" name="member_email" id="member_email" required style="height:30px; width: 300px">
				<button type ="button" value="이메일인증" id="email_btn" class="id_Button" onclick="emailSend()">이메일인증</button>  			
  			</td>
  		</tr>
  		<tr id ="emailcheckbox">
  			<!-- 이메일인증 -->
  			<td>이메일 인증</td>
  			<td>
			<input type="text"  name="useremailcheck" id="useremailcheck" maxlength="5" style="display:inline-block; height:30px; width: 300px;" />
			<button type ="button" class="id_Button" id="emailCheck" onclick="emailCheckFunc()" style="display:inline-block;" >인증 확인</button>
			<div id="email_check"></div>
			</td>
  		</tr>
	</table>
	<hr>
	
	<input type="hidden" id="hiddenEmailCheck"/>
	<div style="margin:0 auto;text-align:center;">
	<button type="button" value="비밀번호찾기" id="findpw" onclick="pwFind()" >비밀번호찾기</button>
<!-- 	<button type="button" value="로그인" id="login" onclick="location.href='/main.do'" value="로그인">로그인</button> -->
	</div>
	<hr>
<!-- 	찾은아이디 반환넣어줄 -->
  	<div id="id_find"></div>
  	<br><br>
   </form>
</div>
<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>