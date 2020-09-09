<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!-- bootstrap -->
<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/resources/admin/vendor/chartist/js/chartist.min.js"></script>
<script src="/resources/admin/scripts/klorofil-common.js"></script>

<!-- TEST -->
<link rel="stylesheet" href="/resources/admin/css/bootstrap-datepicker.css">
<script src="/resources/admin/js/bootstrap-datepicker.js"></script>
<script src="/resources/admin/js/bootstrap-datepicker.ko.min.js"></script>

<script>
	$(function() {	
		$('#datePicker').datepicker({
		    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		});//datepicker end
	});//ready end
	
	
	$('#datePicker').datepicker({
		format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		startDate: '-10d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
                language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		})//여기까지가 기본 사용 방법
            
	
</script>

<script type="text/javascript">

$(document).ready(function(){
	//선택 체크 삭제
	$("#btnDelete").click(function() {
		//선택된 체크박스
		var $checkboxes = $("input:checkbox[name='checkRow']:checked");
		
		// 체크된 대상들을 map으로 만들고 map을 문자열로 만들기
		var map = $checkboxes.map(function() {
			return $(this).val();
		});
		var names = map.get().join(",");
		
		// 전송 폼
		var $form = $("<form>")
		.attr("action", "/admin/board/delete")
		.attr("method", "get")
		.append(
			$("<input>")
				.attr("type", "hidden")
				.attr("name", "names")
				.attr("value", names)
		);
		$(document.body).append($form);
		$form.submit();
		
	})
	
	
})



//전체 체크/해제
function checkAll() {
	// checkbox들
	var $checkboxes=$("input:checkbox[name='checkRow']");
	// checkAll 체크상태 (true:전체선택, false:전체해제)
	var check_status = $("#checkAll").is(":checked");
	
	if( check_status ) {
		// 전체 체크박스를 checked로 바꾸기
		$checkboxes.each(function() {
			this.checked = true;	
		});
	} else {
		// 전체 체크박스를 checked 해제하기
		$checkboxes.each(function() {
			this.checked = false;	
		});
	}
}

// //검색
// $(document).ready(function() {
	
// 	// 검색어 관련
// 	$("#searchBtn").click(function() {
		
// 		$('#contents').load( "/admin/board/cofirmed?search="+$("#keyword").val() );
		
// 	})
	
// 	// 검색창에서 enter시 검색버튼 눌려지기
// 	$("input[name~='keyword']").keydown(function(e) {
// 	if(e.keyCode == 13) {
// 		$("#searchBtn").click()
// 	}
// })
// });

</script>


<style>

	#btnDelete{
		margin-left: 10px;
		margin-right: 10px;
	}
	
</style>

<!-- 헤더 -->
<jsp:include page="/WEB-INF/views/admin/adinclude/header.jsp" />

<div class="main">

	<div class="main-content">

		<div class="container-fluid">

			<div class="panel panel-headline">

				<!-- 헤드라인 -->
				<div class="panel-heading">
					<h3 class="panel-title">COVID-19</h3>
					<p class="panel-subtitle">확진자 등록</p>
				</div>
				<!-- 헤드라인 END -->

				<div class="panel-body">

					<table class="table table-hover">

						<thead>
							<tr>
								<th><input type="checkbox" id="checkAll" onclick="checkAll();"/></th>
								<th>번호</th>
								<th>이름</th>
								<th>경로</th>
								<th>확진일</th>
							</tr>
						</thead>
						
						<tbody>
<%-- 						<c:forEach items="${N_list }" var="a"> --%>
							<tr>
<%-- 								<td><input type="checkbox" name="checkRow" value="${ }"/></td> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
							</tr>
<%-- 						</c:forEach> --%>
						</tbody>

					</table>
					<button id="createBtn" class="btn btn-primary pull-right" data-toggle="modal" data-target="#my80sizeCenterModal">
						추가
					</button>
					
					<!-- 삭제버튼 -->
					<button id="btnDelete" class="btn btn-danger pull-right">삭제</button>
					
					<!-- 검색 -->
					<div class="form-inline pull-right">
						<input class="form-control" type="text" id="search" style="width: 200px;" placeholder="검색어를 입력해주세요" />
						<button id="searchBtn" class="btn btn-primary">검색</button>
					</div>
					
					<!-- 팝업창 -->
					<div class="modal modal-center fade" id="my80sizeCenterModal" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
						<div class="modal-dialog modal-80size modal-center" role="document">
							<div class="modal-content modal-80size">
								
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        							<h4 class="modal-title" id="myModalLabel">확진자 추가</h4>
								</div>
									
									<div class="modal-body">
									
<!-- 							        	<table id="table"> -->
<%--        									<colgroup> --%>
<%-- 											<col style="width:25%;"> --%>
<%-- 											<col style="width:75%;"> --%>
<%-- 										</colgroup> --%>
<!-- 										<tr> -->
<!-- 											<th scope="row">이름 : </th> -->
<!-- 											<td class="ta_l"><input type="text" class="form-control"></td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th>나이 : </th> -->
<!-- 											<td><input type="text" class="form-control"></td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th>지역 : </th> -->
<!-- 											<td>							        	 -->
<!-- 												<select class="form-control"> -->
<!-- 								        		<option value="서울특별시">서울특별시</option> -->
<!-- 								        		<option value="부산광역시">부산광역시</option> -->
<!-- 								        		<option value="경기도">경기도</option> -->
<!-- 								        		<option value="제주시">제주시</option> -->
<!-- 							        			</select> -->
<!-- 							        		</td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th>확진일 : </th> -->
<!-- 											<td><input type="text" id="datePicker" class="form-control" value="2020-08-19"></td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<th>성별 : </th> -->
<!-- 											<td> -->
<!-- 												<label class="fancy-radio"> -->
<!-- 													<input name="gender" value="male" type="radio"> -->
<!-- 													<span><i></i>남성</span> -->
<!-- 												</label> -->

<!-- 												<label class="fancy-radio"> -->
<!-- 													<input name="gender" value="female" type="radio"> -->
<!-- 													<span><i></i>여성</span> -->
<!-- 												</label> -->
<!-- 											</td>									 -->
<!-- 										</tr> -->
<!-- 										</table> -->
										
										
										
										
							        	<form class="form-inline" role="form" action="/admin/adconfirmed.do" method="post">
							        	<div class="form-group">
										
							        	<span>이름 : </span><input type="text" name="patName" id="patName" style="width: 170px;" class="form-control"><br><br>
							        	<span>나이 : </span>
							        	<input type="text" name="patAge" id="patAge" style="width: 170px;" class="form-control"><br><br>
							        	
<!-- 							        	<span>지역 : </span> -->
<!-- 							        	<select style="width: 170px;" class="form-control"> -->
<!-- 							        		<option value="서울특별시">서울특별시</option> -->
<!-- 							        		<option value="부산광역시">부산광역시</option> -->
<!-- 							        		<option value="경기도">경기도</option> -->
<!-- 							        		<option value="제주시">제주시</option> -->
<!-- 							        	</select> -->
<!-- 							        	<br><br> -->
							        	
							        	<span>확진일 : </span>
							        	<input type="text" id="datePicker" class="form-control" style="width: 170px;" value="2020-08-19"><br><br>
							        	
<!-- 										<span>동선 : </span> -->
<!-- 										<textarea class="form-control" placeholder="동선을 입력바랍니다." rows="2"></textarea> -->
<!-- 										<br><br> -->
										
<!-- 							        	<span>성별 : </span> -->
<!-- 							        	<label class="fancy-radio"> -->
<!-- 											<input name="gender" value="male" type="radio"> -->
<!-- 											<span><i></i>남성</span> -->
<!-- 										</label> -->
										
<!-- 										<label class="fancy-radio"> -->
<!-- 											<input name="gender" value="female" type="radio"> -->
<!-- 											<span><i></i>여성</span> -->
<!-- 										</label><br> -->
										
							        	</div>
							        	</form>
							        	
						      		</div>
							      	<div class="modal-footer">
							      		<button id="test" type="button" class="btn btn-primary" data-dismiss="modal">추가</button>
							        	<button type="button" class="btn btn-default pull-right" data-dismiss="modal">닫기</button>
							      	</div>
							      	
						      	</div>
							</div>
						</div>
					</div>
					
					
				</div>

			</div>

		</div>

	</div>
<script>

var type='';
var url='';
var action='';

$(document).ready(function(){

	$("#createBtn").click(function() {
		
		action='create';
		type='POST'
		&("#my80sizeCenterModal").modal();	
		
	})

	$("#test").click(function(){
		if(action == 'create'){
			url = '/admin/board/confirmed"'
		}
		
	})
	
	var data = {
		"PAT_NAME" : $("#patName").val(),
		"PAT_AGE" : &("#patAge").val()
	};
	
	$.ajax({
		url : url,
		type : type,
		data : data,
		success : function(data){ ${"my80sizeCenterModal"}.modal('togle'); }
		complete : function(data){ location.reload(); }
	});
});
</script>
