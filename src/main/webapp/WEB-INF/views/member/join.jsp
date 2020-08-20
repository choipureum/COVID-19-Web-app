<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page session="false" %>
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



<!-- 유효성검사 코드 -->
<script type="text/javascript">
$(document).ready(function(){
	//#userid검증
	var uidReg = /^[A-Za-z0-9]{5,18}$/;
	
	//#userpassword 검증
	var upwReg = /^[A-Za-z0-9]{6,18}$/;
	
	//#username 검증
  	var unameReg = /^[가-힣]{2,5}$/;
  	
  	//출생년도 정규식 ( 생년월일 )
  	var yearReg = /^(19|20)[0-9]{2}$/;
  	var sw =true;
  	//아이디 blur
	$("#userid").blur(function(){
		if(uidReg.test($('#userid').val())){
			$("#id_check").text('');
		} else{
			$("#id_check").text('5자이상 18자이하 영문자, 숫자를 섞어서 입력하시오');
			$("#id_check").css('color','red');
		}
	})
	//비밀번호 blur
	$('#userpw').blur(function(){
		if(upwReg.test($('#userpw').val())){
			$('#pw_check').text('');
			
		} else{
			
			$("#pw_check").text('6자-12자 소문자, 숫자를 섞어서 입력하시오');
			$("#pw_check").css('color','red');
		}
	});
	//#userpw  #userpw_ck 일치 확인
	$('#userpw_ck').blur(function(){
		if($("#userpw").val() == '') {
			$('#pw_check2').text('비밀번호를 입력하세요');
			$('#pw_check2').css('color','green');
			
		} else if($('#userpw').val() != $(this).val()){		
			$('#pw_check2').text('비밀번호가 일치하지 않습니다');
			$('#pw_check2').css('color','red');
		} else {
		
			$('#pw_check2').text('비밀번호가 일치합니다');
			$('#pw_check2').css('color','blue');
		} 
	})
	//이름 blur
	$('#username').blur(function(){
		if(unameReg.test($('#username').val())){
			$('#pw_check').text('');
		
		} else{
			$("#name_check").text('2글자 이상  5글자 이하 한글로 작성하세요');
			$("#name_check").css('color','red');
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
	
	
	$("#myForm").submit(function(){
						   
		   if(!uidReg.test($("#userid").val())){
				swal({
					title: "아이디를 체크하세요!",
					icon:"error"
				});
		      return false;
		   }
		   
		   
		   if(!($("#hiddenIdCheck").val()=="ok")){
				swal({
					title: "아이디 중복확인 해주세요!",
					icon:"error"
				});
			   return false;
		   }
		   if(!upwReg.test($("#userpw").val())){
				swal({
					title: "비밀번호는 6에서 18자리 소문자, 숫자!",
					icon:"error"
				});
		      return false;
		   }
		   if(!unameReg.test($("#username").val())) {
				swal({
					title: "이름한글로 2-5자!",
					icon:"error"
				});
		      return false;
		   }
		   if(!($("#hiddenEmailCheck").val()=="ok")){
				swal({
					title: "이메일 인증을 해주세요!",
					icon:"error"
				});
			   return false;
		   }
		   
		   //#userpw_ck
		   if( $("#userpw").val() != $("#userpw_ck").val() ){
				swal({
					title: "비밀번호가 달라요!",
					icon:"error"
				});
		      $("#userpw").focus();      
		      //select 이벤트발생
		      $("#userpw_ck").select();
		      return false;		   
		   }
		   if(!yearReg.test($("#userbirth_yy").val())){
				swal({
					title: "년도를 확인해주세요!",
					icon:"error"
				});			   
			   return false;
		   }
  
		});

})
</script>


<!-- 아이디 중복체크  -->
<script type="text/javascript">
var ajaxFlag = false;

	function idCheck(){	
// 		ajax 활용

		var userid=document.querySelector("#userid").value;
		var xhr = new XMLHttpRequest();
		
		xhr.open('POST','<%= request.getContextPath() %>/member/idcheck.do');
		xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
		
		xhr.send('member_id='+userid);
		
        xhr.addEventListener('load',function(){
       	 var data = xhr.response;
       	 
       	 if(data !=''){
       		 document.querySelector('#id_check2').textContent = data+'는 이미 존재하는 아이디 입니다';
       		 ajaxFlag=false;
       	 } else{
       		 document.querySelector('#id_check2').textContent = '사용 가능한 아이디입니다';
			ajaxFlag=true;
       	 }
       	 
       	 
        })
     }

	
</script>



<!-- css -->
<style type="text/css">

.joincontainer{
   width:800px;
   margin :40px auto;
   line-height: 16px;
}


.join {
   background-color: blue;
   color:white;
   border-radius: 5px;
   border: 0;
   padding: 10px 224px;
   
}

input {
    border: 1px solid lightgray;

}
table{width:100%;}

select{
   height:35px; 
   width: 100px;
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
</head>
<body>


<div class="joincontainer">

   <h1>회원가입</h1>
   <h3>회원정보는 개인정보 보호방침, 취급방법에 따라 안전하게 보호됩니다</h3>
   <hr>
   
<!--    비밀번호 확인 해주기  -->
<!--    메인화면 으로 가야하지 않나..?-->
   <form action="/member/joinimpl.do" method="post" id="myForm">
  
  <table>
  	<tbody>
  		 <tr>
  			<td>이름</td>
  			<td><input type="text" placeholder="이름" name="username" id="username" required style="height:30px; width: 300px"/></td>
  			<td><div id="name_check"></div></td>
  		</tr>
  	
  	
  		<tr>
  			<td>아이디</td>
  			<td> <input type="text" placeholder="아이디" name="userid" id="userid" required style="height:30px; width: 300px" />
  				<button type ="button" value="중복확인" id="idCheckbutton" class="id_Button" onclick="idCheck()">중복확인</button>
  			
  			</td>
  			<td><div id="id_check"></div><span id="id_check2"></span></td>
  		</tr>
  		<tr>
  			<td>비밀번호</td>
  			<td><input type="password" placeholder="비밀번호" name="userpw" id="userpw" class="pw" required style="height:30px; width: 300px"/></td>
  			<td><div id="pw_check"></div></td>
  		</tr>
  		
  		 <tr>
  			<td>비밀번호 확인</td>
  			<td><input type="password" placeholder="비밀번호확인" name="userpw_ck" id="userpw_ck" class="pw" required style="height:30px; width: 300px"/></td>
  			<td><div id="pw_check2"></div></td>
  		</tr>
  		
  		<tr>
  			<td>핸드폰</td>
  			<td><input type="tel" placeholder="핸드폰번호입력" name="usertel" id="usertel" required style="height:30px; width: 300px"/></td>
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
  			<td><input type="email" placeholder="이메일" name="useremail" id="useremail" required style="height:30px; width: 300px"/>
  				<button type ="button" value="이메일인증" class="id_Button" onclick="email()">이메일인증</button></td>
  			<td></td>
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
      <input type="submit" value="가입하기" class="join"/><br>
      
   </form>
   
</div>



</body>

<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
		