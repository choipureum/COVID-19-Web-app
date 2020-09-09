<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="javax.naming.Context"%>

<!-- bootstrap -->
<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script
	src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/resources/admin/vendor/chartist/js/chartist.min.js"></script>
<script src="/resources/admin/scripts/klorofil-common.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	$("#keyword").keydown(function(e) {
		if(e.keyCode == 13) {
			$("#btnSearch").click()
		}
	})
})

</script>

<script type="text/javascript">

function checkAll(){
    if( $("#checkAll").is(':checked') ){
      $("input[name=checkRow]").prop("checked", true);
    }else{
      $("input[name=checkRow]").prop("checked", false);
    }
}

$(document).ready(function(){
	
	//삭제버튼 동작
	$("#btnDelete").click(function(){
		
		//실제 <form>의 submit 수행
		$("#checkboxlist").submit();
		
	});
	
});

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
					<h3 class="panel-title">사용자 관리</h3>
					<p class="panel-subtitle">회원 상세정보</p>
				</div>
				<!-- 헤드라인 END -->

				<div class="panel-body">
				
				<form action="${pageContext.request.contextPath}/admin/aduserdelete.do" method="post" id="checkboxlist">
				
					<table class="table table-hover">

						<thead>
							<tr>
								<th style="width: 5%;"><input type="checkbox" id="checkAll" onclick="checkAll();"/></th>
								<th style="width: 10%;">이름</th>
								<th style="width: 20%;">주소</th>
								<th style="width: 20%;">전화번호</th>
								<th style="width: 15%;">Email</th>
								<th style="width: 25%;">등급</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${list }" var="a">
							<tr>
								<td><input type="checkbox" id="checkRow" name="checkRow" value="${a.member_No }"/>
								<td>${a.member_Name }</td>
								<td>${a.member_Add }</td>
								<td>${a.member_Tell }</td>
								<td>${a.member_Email }</td>
								<td>${a.member_Rank }</td>
							</tr><!-- class="col-md-2" -->
							</c:forEach>
						</tbody>

					</table>
					</form>
					
					
				<div class="panel-footer">
				
				<div class="row">
				
					<!-- 삭제버튼 -->
					<button id="btnDelete" class="btn btn-danger pull-right">삭제</button>
<!-- 					<button id="btnInsert" class="btn btn-primary pull-right">추가</button> -->
					
					<!-- 검색 -->
					<form action="${pageContext.request.contextPath}/admin/adusersearch.do" method="post">
					<div class="form-inline pull-right">
<!-- 						<select class="form-control" id="searchType" name="searchType"> -->
<!-- 							<option value="">검색조건</option> -->
<!-- 							<option value="">이름</option>  -->
<!-- 							<option value="">주소</option> -->
<!-- 							<option value="">등급</option> -->
<!-- 							<option value="">전화번호</option> -->
<!-- 							<option value="">Email</option> -->
<!-- 						</select> -->
						<input class="form-control" type="text" id="keyword" name="keyword"
							style="width: 200px;" placeholder="검색어를 입력해주세요" />
						<button id="btnSearch" class="btn btn-primary">검색</button>
					
					</div>
					</form>

					
					<br>
					<!-- 페이징 -->
					<div style="text-align: center;">
					<c:import url="/WEB-INF/views/admin/adpaging/adpaging.jsp"></c:import>
					</div>
					
				</div><!-- row -->
				
				</div><!-- panel-footer -->
					
				</div><!-- panel-body -->

			</div><!-- panel panel-headline -->

		</div><!-- container-fluid -->

	</div><!-- main-content -->

</div><!-- main -->