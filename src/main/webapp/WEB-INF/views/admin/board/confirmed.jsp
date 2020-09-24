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

<script type="text/javascript">
$(document).ready(function(){
	//삭제버튼 동작
	$("#btnDelete").click(function(){		
		//실제 <form>의 submit 수행
		$("#checkboxlist").submit();		
	});
	
	//확진자 전체선택
	$(".checkAll").click(function(){
        $(".checkRow").prop("checked",this.checked);
    });    
	

});

</script> 

<script type="text/javascript">

$(document).ready(function(){
	$('#up').on('click', function(){
		location.href = '/admin/adconfiremedimpl.do';
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
					<h3 class="panel-title">COVID-19</h3>
					<p class="panel-subtitle">확진자 등록</p>
				</div>
				<!-- 헤드라인 END -->

				<div class="panel-body">
				
				<form action="${pageContext.request.contextPath}/admin/adcondelete.do" method="post" id="checkboxlist">

					<table class="table table-hover">

						<thead>
							<tr>
								<th style="width: 5%; text-align: center;"><input type="checkbox" class="checkAll"/></th>
								<th style="width: 5%; text-align: center;">번호</th>
								<th style="width: 10%; text-align: center;">이름</th>
								<th style="width: 5%; text-align: center;">성별</th>
								<th style="width: 20%; text-align: center;">확진일</th>
								<th style="width: 55%; text-align: center;">동선</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach items="${list }" var="a">
							<tr>
								<td style="text-align: center;"><input type="checkbox" name="checkRow" class="checkRow" value="${a.pat_No }"/>
								<td style="text-align: center;">${a.pat_No }</td>
								<td style="text-align: center;">${a.pat_Name }</td>
								<td style="text-align: center;">${a.pat_Sex }</td>
								<td style="text-align: center;"><fmt:formatDate pattern="yyyy-MM-dd" value="${a.pat_Time}"/></td>
								<td style="text-align: center;">${a.pat_Route }</td>
							</tr>
						</c:forEach>
						</tbody>

					</table>
					</form>
					
					<div class="panel-footer">
				
					<div class="row">
					
					<button type="button" id="up" class="btn btn-primary pull-right">
						등록
					</button>
					
					<!-- 삭제버튼 -->
					<button id="btnDelete" class="btn btn-danger pull-right">삭제</button>
					
					<!-- 검색 -->
					<form action="${pageContext.request.contextPath}/admin/adconsearch.do" method="post">
					<div class="form-inline pull-right">
						<input class="form-control" type="text" id="keyword" name="keyword"
							style="width: 200px;" placeholder="검색어를 입력해주세요" />
						<button id="btnSearch" class="btn btn-primary">검색</button>
					
					</div>
					</form>
					
					<br>
					
					<div style="text-align: center;">
					<c:import url="/WEB-INF/views/admin/adpaging/adconpaging.jsp"></c:import>
					</div>
					
					</div>
				</div>

			</div>

		</div>
	</div>
	</div>
	</div>
