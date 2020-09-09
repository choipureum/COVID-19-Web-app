<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 임포트 -->
<jsp:include page="/header.do" />

<!-- 모두체크 누르면 다 체크 -->
<script type="text/javascript">

function agree(){
// 	$("#check_all").click(function(){
// 		console.log(11)
		$(".chk_chk").prop("checked",true);
//  		$(location).attr("href","/singup/singup");
		
// 	})
}
</script>
<!-- 체크 확인 -->
<script type="text/javascript">
function singup(){
	if($("input[type='checkbox'][id='chk1_chk']").is(":checked")){
		
		if($("input[type='checkbox'][id='chk2_chk']").is(":checked")){
			$(location).attr("href","/member/join.do");
		}
	}
	else{ 
		alert("약관을 모두 동의해주세요!");

	}
	
}
</script>



<style type="text/css">
.joininfocontainer{
   width:500px;
   margin :40px auto;
   line-height: 16px;
}
 .btnagree{ 
     background-color: #164165;  
    color:white; 
    border-radius: 5px; 
    border: 0; 
     padding: 10px 95px;  
	margin: auto !important;
   
 } 
  .btnagree2{ 
     background-color: #164165;  
    color:white; 
    border-radius: 5px; 
    border: 0; 
    padding: 10px 95px;  
	float:right;
   
 } 
h5{
   text-align: center;
}
h5 span{
   color:#164165;
   
}
#agreemember{
	overflow: scroll;
	overflow-x:hidden;
}
/* 체크박스 디자인 */
input[type="checkbox"] { position: absolute; left: -3000%;}
input[type="checkbox"] + label { font-size: 14px; color:balck; text-align: center;}
input[type="checkbox"] + label:before { content: ""; display: inline-block; width:20px; height:20px; border:1px solid #ddd; margin: 0 10px 0 0; background: #f4f4f4; vertical-align: middle; box-sizing: border-box; transition: all 0.3s;}
input[type="checkbox"]:checked + label:before { border: 7px solid #666; text-align: center;}
</style>
</head>
<body>



<div class="joininfocontainer">
	<h5>코로나-19 종합관리 센터 <span>약관 동의  </span>페이지</h5>
   	<hr>

	<div class="article">
 		<h4 class="article__title">여러분을 환영합니다.</h4>
 		<input type="checkbox" name="chk_chk" id="chk1_chk" class="chk_chk"><label for="chk1_chk">COVID-19 이용 약관동의</label>
 		 
 		<div id="agreemember" style="border: 2px solid #164165; padding: 10px; height: 150px;" >
    	서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다.
    	본 약관은 다양한 COVID-19 서비스의 이용과 관련하여 COVID-19 서비스를 제공하는 본 페이지 주식회사(이하 ‘COVID-19’)와 이를 이용하는COVID-19 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다. 
    	COVID-19 서비스를 이용하시거나 COVID-19 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 
    	잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.
    	</div>
	</div>
<br><br>

<div class="article">
    <h4 class="article__title">회원으로 가입하시면 COVID-19 서비스를 이용할 수 있습니다.</h4>
    <input type="checkbox" name="chk_chk" id="chk2_chk" class="chk_chk"><label for="chk2_chk">COVID-19 서비스 약관 동의</label>
    
    <div id="agreemember" style="border: 2px solid #164165; padding: 10px; height: 150px;" >
        여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며,
        COVID-19는 이에 대한 승낙을 통해 회원 가입 절차를 완료하고 여러분께 COVID-19 서비스 이용 계정(이하 ‘계정’)을 부여합니다.
        계정이란 회원이 COVID-19 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다.
        회원은 자신의 계정을 통해 좀더 다양한 COVID-19 서비스를 보다 편리하게 이용할 수 있습니다.
        따라서 관리자는 단체회원 계정을 통해 별도 약관 또는 기존 약관 개정에 대해 동의하거나 단체회원에서 탈퇴할 수 있고,
        멤버들의 단체회원 계정 로그인 방법 및 이를 통한 게시물 게재 등 COVID-19 서비스 이용을 관리(게시물 삭제 포함)할 수 있습니다.

</div>
    </div>
<br>
<hr>
<button type="button" class="btnagree" id="check_all" onclick="agree()">모두 동의</button>
<button type="button" class="btnagree2" onclick="singup()">회원가입</button>
</div>

<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>