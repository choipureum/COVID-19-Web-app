<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do" />

<!-- iamport 1.1.5 라이브러리 추가 -->
<script src="https://service.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<script type="text/javascript">

$(document).ready(function() {
	// iamport 변수 초기화
	var IMP = window.IMP;
	IMP.init('imp28559433');	// 가맹점 식별코드, 회원가입해서 직접 넣어야합니다

	// 결제 모듈 불러오기
	$("#pay").click(function() {
		requestPayment();
	});
});

// 결제 요청 - 결제 모듈 불러오기
function requestPayment() {
	IMP.request_pay({
	    pg : 'html5_inicis', //PG사 - 'kakao':카카오페이, 'html5_inicis':이니시스(웹표준결제), 'nice':나이스페이, 'jtnet':제이티넷, 'uplus':LG유플러스, 'danal':다날, 'payco':페이코, 'syrup':시럽페이, 'paypal':페이팔
	    pay_method : 'card', //결제방식 - 'samsung':삼성페이, 'card':신용카드, 'trans':실시간계좌이체, 'vbank':가상계좌, 'phone':휴대폰소액결제
	    merchant_uid : 'merchant_' + new Date().getTime(), //고유주문번호 - random, unique
	    name : $("#goods_price option:selected").text(), //주문명 - 선택항목, 결제정보 확인을 위한 입력, 16자 이내로 작성
	    amount : $("#goods_price" ).val(), //결제금액 - 필수항목
	    buyer_email : $("mem_email ").val(), //주문자Email - 선택항목
	    buyer_name : $("#mem_name" ).val(), //주문자명 - 선택항목
	    buyer_tel : $("#mem_pho" ).val(), //주문자연락처 - 필수항목, 누락되면 PG사전송 시 오류 발생
	    buyer_addr : $("#sample4_roadAddress" ).val() + " " + $("#sample4_detailAddress" ).val(), //주문자주소 - 선택항목
	    m_redirect_url : 'https://www.yourdomain.com/payments/complete' //모바일결제후 이동페이지 - 선택항목, 모바일에서만 동작
	}, function(rsp) { // callback - 결제 이후 호출됨, 이곳에서 DB에 저장하는 로직을 작성한다
	    if ( rsp.success ) { // 결제 성공 로직
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        var memid = $("#memid").val();
	        var shidx = ${shidx };
			var pay = JSON.stringify(
					{pay_id:rsp.imp_uid , payment : rsp.paid_amount 
						,mem_id : memid, share_idx : shidx , good_name : $("#goods_price option:selected").text(),
						address : $("#sample4_roadAddress" ).val() + " 상세주소 " + $("#sample4_detailAddress" ).val()
					} 
						);
	        
	        // 결제 완료 처리 로직
			//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
			jQuery.ajax({
				url: "/share/slog/paycomple.do", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
				type: 'POST',
				dataType: 'json',
				contentType:'application/json; charset=utf-8',
				data : pay
				
			}).done(function(data) {
				//[2] 서버에서의 응답 처리
				if ( data == 'success' ) {
					var msg = '결제가 완료되었습니다.';
					msg += '\n고유ID : ' + rsp.imp_uid;
					msg += '\n상점 거래ID : ' + rsp.merchant_uid;
					msg += '\n결제 금액 : ' + rsp.paid_amount;
					msg += '\n카드 승인번호 : ' + rsp.apply_num;
			        msg += '\n[done]';										
					
					
								
	    		} else {
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    		}
	    	});
	        
	    } else { // 결제 실패 로직
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	    }
	    console.log(pay);
		alert(msg);
	    location.href="/share/list.do";
	});
}

</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var roadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 참고 항목 변수
	
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if(data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if(extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample4_postcode').value = data.zonecode;
	            document.getElementById("sample4_roadAddress").value = roadAddr;
	            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	            
	            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	            if(roadAddr !== ''){
	                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	            } else {
	                document.getElementById("sample4_extraAddress").value = '';
	            }
	
	            var guideTextBox = document.getElementById("guide");
	            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	            if(data.autoRoadAddress) {
	                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                guideTextBox.style.display = 'block';
	
	            } else if(data.autoJibunAddress) {
	                var expJibunAddr = data.autoJibunAddress;
	                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                guideTextBox.style.display = 'block';
	            } else {
	                guideTextBox.innerHTML = '';
	                guideTextBox.style.display = 'none';
	            }
	        }
	    }).open();
	}
	</script>
<body>

	<form action="/share/boardup.do" method="post" enctype="multipart/form-data">
			<div class="container gothic" style="background:white !important"><!-- main_container -->
			<div>
			<div id="content" class="content">
				<div>
                     <div class="sub_top">
                         <div class="st_navigation">
                             <ul>
                                 <li><a href="/main.do"><span class="hdn">홈</span></a></li>
                             </ul>
                         </div>
                         <div class="st_title">
                             <div class="fl_l"style="font-weight:bold">
                                 <h3><strong>결제하기</strong></h3>
                             </div>
                         </div>
                     </div>
                       
			<!-- s: content -->
			<div class="data_table">
				<table>
					<tbody class="protable">						
					
						<tr>
							<th scope="row">상품선택</th>
							<td class="ta_l">
							<select name = "goods" id ="goods_price">
							<c:forEach items="${goods }" var="glist">							
							<option value="${glist.goods_Price }">${glist.goods_Name }</option>
							</c:forEach>
							
							</select></td>
						</tr>
						
						<tr>
							<th scope="row">회원아이디</th>
							<td class="ta_l"><input type ="text" value ="${attr.member_id }" id ="memid" style = "text-align: center;" readonly="readonly"></td>
						</tr>
						<tr>
							<th scope="row">회원이메일</th>
							<td class="ta_l"><input type ="text" id="mem_email" style = "text-align: center;"></td>
						</tr>
						<tr>
							<th scope="row">회원명</th>
							<td class="ta_l"><input type ="text" value ="${attr.member_name }" id="mem_name"style = "text-align: center;"></td>
						</tr>
						<tr>
							<th scope="row">핸드폰 번호</th>
							<td class="ta_l"><input type ="text" id="mem_pho" style = "text-align: center;" placeholder="-뺴고 입력해주세요"></td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td class="ta_1">
								<input type="text" id="sample4_postcode" placeholder="우편번호">
								<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
								<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
								<span id="guide" style="color:#999;display:none"></span>
								<input type="text" id="sample4_detailAddress" placeholder="상세주소">
								<input type="text" id="sample4_extraAddress" placeholder="참고항목">
	
	
							</td>
						</tr>
						
						<tr>
							<th scope="row">결제하기</th>
							
							<td class="ta_1">
								<input type="button" id="pay" value = "결제하기"/>
							</td>
						</tr>

								</tbody>
							</table>
							<br>
							<br>

						</div>
						</div>   
						</div>
						</div>
						</div>
				
</form>



</body>

	<jsp:include page="/footer.do" />
