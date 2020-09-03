<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header 임포트 -->
<jsp:include page="/header.do" />
<!-- 다음 주소 api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수
           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }
           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[name=mem_oaddress]").val(data.zonecode);
           $("[name=mem_address]").val(fullRoadAddr);
           
           document.getElementById('mem_oaddress').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('mem_address').value = fullRoadAddr;
//            document.getElementById('mem_detailaddress').value = data.jibunAddress;
       }
    }).open();
}

</script>
<!-- 다음 주소 api끝 -->

<!-- 유효성검사 코드 blur -->
<script type="text/javascript">
$(document).ready(function(){
	//#userpassword 검증
	var upwReg = /^[A-Za-z0-9]{6,18}$/;
  	//출생년도 정규식 ( 생년월일 )
  	var yearReg = /^(19|20)[0-9]{2}$/;
  	var sw =true;

	//비밀번호 blur
	$('#joinuserpw').blur(function(){
		if(upwReg.test($('#joinuserpw').val())){
			$('#pw_check').text('');
		} else{
			$("#pw_check").text('6자-12자 소문자, 숫자를 섞어서 입력하시오');
			$("#pw_check").css('color','red');
		}
	});
	//#joinuserpw  #joinuserpw_ck 일치 확인
	$('#joinuserpw_ck').blur(function(){
		if($("#joinuserpw").val() == '') {
			$('#pw_check2').text('비밀번호를 입력하세요');
			$('#pw_check2').css('color','green');
		} else if($('#joinuserpw').val() != $(this).val()){		
			$('#pw_check2').text('비밀번호가 일치하지 않습니다');
			$('#pw_check2').css('color','red');
		} else {
			$('#pw_check2').text('비밀번호가 일치합니다');
			$('#pw_check2').css('color','blue');
		} 
	})
	// 	userbirth_yy 출생년도
	$('#userbirth_yy').blur(function(){
		if(yearReg.test($('#userbirth_yy').val())){
			$('#year_check').text('');
		} else{
			$("#year_check").text('19__ - 20__ 형식에 맞게 입력하세요');
			$("#year_check").css('color','red');
		}
	}) //blur
})
</script>

<!-- 버튼눌렀을시 유효성검사 -->
<script>
function modifyform() {	
	//#userpassword 검증
	var upwReg = /^[A-Za-z0-9]{6,18}$/;
  	//출생년도 정규식 ( 생년월일 )
  	var yearReg = /^(19|20)[0-9]{2}$/;

	   if(!upwReg.test($("#joinuserpw").val())){
		   alert("비밀번호는 6에서 18자리 소문자, 숫자!");
	  	   return false;
	   }
	   //#joinuserpw_ck
	   if( $("#joinuserpw").val() != $("#joinuserpw_ck").val() ){
		   alert("비밀번호가 달라요!");
	      $("#joinuserpw").focus();      
	      //select 이벤트발생
	      $("#joinuserpw_ck").select();
	      return false;		   
	   }

	   if(!yearReg.test($("#userbirth_yy").val())){
		   alert("년도를 확인해주세요!");
		   return false;
	   }
}
</script>


<!-- 클릭함수 탈퇴하기 -->
<script type="text/javascript">
function withDraw(){
   var userid= "${member.userid}";
   alert("탈퇴!");

}
</script>

<!-- 탈퇴하기 팝업 -->
<script>
$(document).ready(function(){
   
   $(".open").on('click',function(){
      $(".modifypopup").show();
      $(".withdrawdim").show();
   });
   $(".modifypopup .close").on('click',function(){
      $(this).parent().hide();
      $(".withdrawdim").hide();
   });
});
</script>




<!-- css -->
<style type="text/css">
.modifycontainer {
   width:800px;
   margin :40px auto;
   line-height: 16px;
}

/* 테이블 */
input { border: 1px solid lightgray; }
table{ width:100%; }
select{ height:35px; width: 100px; }
tr{ height: 50px; width:100%; }
td{ height: 50px; border-bottom:3px solid #000; }
td:first-of-type{ border-right:1px solid #000; width: 120px; }

.id_Button{ 
    background-color: rgb(220,220,220); 
    color:black; 
    border-radius: 2px; 
    border: 0;
    padding: 6px 20px; 
} 
input {
   border: 1px solid lightgray;
   border-radius: 3px;
   border-bottom: teal 1px solid;
   border-left: medium none;
   border-right: medium none;
   border-top: medium none;
   font-size: 12px;
}
.popup_text {
   padding: 20px;
   align-content: center;
   color : #aaaaaa   ;
   overflow: auto;
}
::-webkit-scrollbar{width:2px;}
::-webkit-scrollbar-track{background-color: white;}
::-webkit-scrollbar-thumb{background-color: #969696;border-radius: 5px;}
::-webkit-scrollbar-thumb:hover{background: #969696;}
.popupwithdraw {
   all: unset;
   background-color: black;
   color: white;
   padding: 15px 25px;
   border-radius: 6px;
   cursor: pointer;
}
/* 팝업처리 */
.modifypopup { 
   display: none; 
   position: fixed; 
    left: 50%;  
    top: 50%;  
    z-index: 100;  
   padding:50px 50px 50px;
   width: 500px; height: 550px; 
   transform: translate(-50%, -50%); 
   box-sizing: border-box; 
   background: #fff;
}
.modifypopup h2 { 
   padding: 0 0 42px; 
   border-bottom: 3px solid #444; 
   font-weight: normal;
   font-size:36px; 
   color:#222; 
   text-align: center; 
   line-height: 100%;
}
.modifypopup .close { 
   position: absolute; 
   right:40px; top: 40px; width: 41px; height: 41px; 
   background: url(/resources/static/image/btn-close.png) no-repeat; 
   color:transparent;
}
.modifypopup .con { 
   padding: 20px 48px; 
   border-bottom:1px solid #e8e8e8;
}
.withdrawdim { 
   display: none;
   position: fixed; 
   left: 0; top: 0; 
   z-index: 99; 
   width: 100%; height: 100%; 
   background:rgba(0,0,0,0.5);
}
.txt_center { text-align: center; padding: 30px 0 0; }
 
</style>

</head>


<!-- 입력  -->
<div class="modifycontainer">
<br><br>
      <h2 id="one"> 회원 정보 변경</h2>
   <hr>
   
   <form action="/mypage/memberModifyimpl.do" method="post" id="modifyform">
  <table>
  	<tbody>
  		 <tr>
  			<td>이름</td>
  			<td><input type="text" readonly="readonly" name="member_name" id="member_name" required style="height:30px; width: 300px" value="${modify.member_name }"/></td>
  			<td><div id="name_check"></div></td>
  		</tr>
  		<tr>
  			<td>아이디</td>
  			<td> <input type="text" placeholder="아이디" name="joinuserid" id="joinuserid" required style="height:30px; width: 300px" />
  			</td>
  			<td><div id="id_check"></div><span id="id_check2"></span></td>
  		</tr>
  		<tr>
  			<td>비밀번호</td>
  			<td><input type="password" placeholder="비밀번호" name="joinuserpw" id="joinuserpw" class="pw" required style="height:30px; width: 300px"/></td>
  			<td><div id="pw_check"></div></td>
  		</tr>
  		 <tr>
  			<td>비밀번호 확인</td>
  			<td><input type="password" placeholder="비밀번호확인" name="joinuserpw_ck" id="joinuserpw_ck" class="pw" required style="height:30px; width: 300px"/></td>
  			<td><div id="pw_check2"></div></td>
  		</tr>
  		<tr>
  			<td>핸드폰</td>
  			<td><input type="tel" maxlength="11" placeholder="핸드폰번호입력" name="usertel" id="usertel" required style="height:30px; width: 300px"/></td>
  			<td><div style="color:gray;"> - 표시없이 숫자만 입력해주세요</div>
  			</td>
  		</tr>
  		<tr>
  			<td>생년월일</td>
  			<td><input type="text" name="userbirth_yy" id="userbirth_yy" maxlength="4" placeholder="년(4자)" size="10" required style="height:30px;width: 90px">
  			<select name="userbirth_mm" >
         		<option value="">월</option>
         		<option value="01">1</option>
         		<option value="02">2</option>
         		<option value="03">3</option>
         		<option value="04">4</option>
         		<option value="05">5</option>
         		<option value="06">6</option>
         		<option value="07">7</option>
         		<option value="08">8</option>
         		<option value="09">9</option>
         		<option value="10">10</option>
         		<option value="11">11</option>
         		<option value="12">12</option>   
      			</select>
      		<input type="text" name="userbirth_dd" id="userbirth_dd" maxlength="2" placeholder="일" size="10" required style="height:30px; width: 100px"></td>
  			<td><div id="year_check"></div></td>
  		</tr>
  		<tr>
  			<td>이메일</td>
  			<td><input type="email" placeholder="이메일" name="member_email" id="member_email" required style="height:30px; width: 300px">
  			</td>
  		</tr>

  		<tr>
  			<td>주소</td>
  			<td><div class="form-group">                   
			<input class="form-control"  placeholder="우편번호" name="mem_oaddress" id="mem_oaddress" type="text" readonly="readonly" required style="display:inline-block; height:30px; width: 100px">
    		<button type="button" class="id_Button" onclick="execPostCode();" style="display:inline-block;">우편번호 찾기</button>                               
			<br>
    		<input type="text" class="form-control"  placeholder="도로명 주소" name="mem_address" id="mem_address" required style="height:30px; width: 250px" readonly="readonly" />
   	 		<input type="text" class="form-control" placeholder="상세주소" name="mem_detailaddress" id="mem_detailaddress" required style="display:inline-block;height:30px; width: 200px"/>
			</div>
			</td>
			<td></td>
  		</tr>
  	</tbody>
  </table> 
   
   <hr>
   
<div style="margin:0 auto;text-align:center;">   
   <div class="first" style="display: inline-block;">
      <input type="submit" value="수정하기" class="modify" />
   </div>
   
   <div class="second" style="display: inline-block;">
      <button type="button" id="open" value="탈퇴하기" class="open" >탈퇴하기</button>
         
         <div class="modifypopup">
            <h2 style="font-weight: bold;">탈퇴하기</h2>
               <div class="con">
<!--                   <table class="type1"> -->
                     <div class="popup_text" style="border: 1px solid #BDBDBD; padding: 10px; height: 150px;">
                         <p class="a">다솜을 이용해 주셔서 감사합니다.<br>   
                        * 탈퇴 후에는 아이디와 예약내역 등의 데이터 복구가 불가능합니다.<br>
                        * 탈퇴 후에는 등록된 게시물 삭제가 불가능합니다. <br>
                        * 탈퇴하기 버튼을 누르면 바로 탈퇴가 됩니다<br><br>
                        * 신중히 눌러주세요<br></p>
                     </div>

<!--                   </table> -->
               </div>
            <div class="txt_center">

               <button type="button" class="popupwithdraw" onclick="withDraw()" >탈퇴하기</button>
            </div>
         <a href="#a" class="close">닫기</a>
         </div>
      <div class="withdrawdim"></div>
   </div>
</div>
   </form>

</div>


<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>