<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 임포트 -->
<jsp:include page="/header.do" />

<!-- 비밀번호 유효성 검사 -->
<script type="text/javascript">
$(document).ready(function(){
	
	//#userpassword 검증
	var upwReg = /^[A-Za-z0-9]{6,18}$/;
	//비밀번호 blur
	$('#member_pw').blur(function(){
		if(upwReg.test($('#member_pw').val())){
			$('#pw_check').text('');
		} else{
			$("#pw_check").text('6자-12자 소문자, 숫자를 섞어서 입력하시오');
			$("#pw_check").css('color','red');
		}
	});
	//#member_pw  #userpw_ck 일치 확인
	$('#userpw_ck').blur(function(){
		if($("#member_pw").val() == '') {
			$('#pw_check2').text('비밀번호를 입력하세요');
			$('#pw_check2').css('color','green');
			
		} else if($('#member_pw').val() != $(this).val()){		
			$('#pw_check2').text('비밀번호가 일치하지 않습니다');
			$('#pw_check2').css('color','red');
		} else {
		
			$('#pw_check2').text('비밀번호가 일치합니다');
			$('#pw_check2').css('color','blue');
		} 
	})
})
</script>

<!-- 만약 재설정 버튼 누르면 alert뜨면서 비밀번호가 재설정 되었습니다 -->
<!-- 로그인 홈페이지로 이동 -->
<script type="text/javascript">
function pwChangeFunc(){
	
	var member_id="${member_id}";
	var member_pw=$("#member_pw").val();
	var userpw_ck=$("#userpw_ck").val();
	
	//#userpassword 검증
	var upwReg = /^[A-Za-z0-9]{6,18}$/;
	
	
	if($("#member_pw").val() != $("#userpw_ck").val()){
		alert("맞게 입력했는지 확인해주세요!");
		return false;
	} 
	else if($("#member_pw").val() == ""){
		alert("비밀번호를 확인해주세요!!");
		return false;
	}
	
// 	비밀번호 정규
	if(!upwReg.test($("#member_pw").val())){
		alert("비밀번호는 6에서 18자리 소문자, 숫자!");
	    return false;
	}
	
	var obj = {"member_id":member_id, "member_pw":member_pw};
	
	$.ajax({
		type:'POST',
		url:"<c:url value='/member/changePwimpl.do' />",
		data : obj,
		success: function(res){	
			
			if( res == 1){
				alert("비밀번호 변경이 완료되었습니다!");
				location.href="/main.do";
			}
		}
		, error: function(){
			console.log("혹시 여기가 안되니?")
		}
	})
}
</script>

<!-- css -->
<style type="text/css">
/* 전체틀 */
.changePwcontainer{
   width:500px;
   margin :40px auto;
   line-height: 16px;
}
/* 메인 이름 */
h5{
   text-align: center;
}
h5 span{
   color:blue;
   
}
input {
    border: 1px solid lightgray;
/*     border-radius: 3px; */
}
#red{
   color:red;
}
.id_Button{ 
    background-color: rgb(220,220,220); 
    color:black; 
    border-radius: 2px; 
    border: 0;
    padding: 6px 20px; 
} 

input { border: 1px solid lightgray; border-radius: 3px; }
#red{ color:red; }
select{ height:35px; width: 100px;}
tr{ height: 50px;width:100%;}
td{ height: 50px; border-bottom:3px solid #000; }
td:first-of-type{ border-right:1px solid #000; width: 120px; }

</style>

</head>
<body>
<!-- 입력  -->
<div class="changePwcontainer">

   <h5><span>비밀번호 </span>재설정</h5>
   <hr>
   
<!--    비밀번호 확인 해주기  -->
   <form action="/change/pw" method="post" id="myForm">
   
   <table>
   		<tr>
   			<td>비밀번호</td>
   			<td><input type="password" placeholder="비밀번호" name="member_pw" id="member_pw" class="pw" required style="height:30px; width: 300px"/>
   				<div id="pw_check"></div></td>
   		</tr>
   		
   		<tr>
   			<td>비밀번호확인</td>
   			<td><input type="password" placeholder="비밀번호확인" name="userpw_ck" id="userpw_ck" class="pw" required style="height:30px; width: 300px"/>
   				<div id="pw_check2"></div></td>
   		</tr>
   
   
   </table>
	  
	<hr>
	<div style="margin:0 auto;text-align:center;">
	<input type="button" value="비밀번호재설정" id="pwChange" class = "id_Button" onclick="pwChangeFunc()" >
	</div>
	<hr>

  	<br><br>
   </form>
</div>





















<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>