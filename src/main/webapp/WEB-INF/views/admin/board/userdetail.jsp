<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="javax.naming.Context"%>
<!-- bootstrap -->
	<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
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

$(document).ready(function(){
	//삭제버튼 동작
	$("#btnDelete").click(function(){
		//실제 <form>의 submit 수행
		$("#checkboxlist").submit();
	});
	//회원 전체선택
	$(".checkAll").click(function(){
        $(".checkRow").prop("checked",this.checked);
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
								<th style="width: 3%; text-align: center;"><input type="checkbox" id="chackAll" name="chackAll" class="chackAll"/></th>
								<th style="width: 5%; text-align: center;">이름</th>
								<th style="width: 22%; text-align: center;">주소</th>
								<th style="width: 8%; text-align: center;">전화번호</th>
								<th style="width: 7%; text-align: center;">Email</th>
								<th style="width: 5%; text-align: center;">등급</th>
								<th style="width: 5%; text-align: center;">포인트</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${list }" var="a">
							<tr>
								<td style="text-align: center;"><input type="checkbox" id="checkRow" name="checkRow" class="checkRow" value="${a.member_id }"/>
								<td style="text-align: center;">${a.member_name }</td>
								<td style="text-align: center;">${a.member_add }</td>
								<td style="text-align: center;">${a.member_tell }</td>
								<td style="text-align: center;">${a.member_email }</td>
								<td style="text-align: center;">${a.member_rank }</td>
								<td style="text-align: center;">${a.member_point }</td>
							</tr>
							</c:forEach>
						</tbody>

					</table>
					</form>
					
					
				<div class="panel-footer">
				
				<div class="row">
				
					<!-- 삭제버튼 -->
					<button id="btnDelete" class="btn btn-danger pull-right">삭제</button>
					
					<!-- 검색 -->
					<form action="${pageContext.request.contextPath}/admin/adusersearch.do" method="post">
					<div class="form-inline pull-right">
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