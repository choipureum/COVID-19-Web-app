<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@page import="javax.naming.Context"%>

<!-- bootstrap -->

<style>

	#btnDelete{
		margin-left: 10px;
		margin-right: 10px;
	}
	
</style>

<script type="text/javascript">
$(document).ready(function(){
	//삭제버튼 동작
	$("#btnDelete").click(function(){		
		//실제 <form>의 submit 수행
		$("#checkboxlist").submit();		
	});
	
	//전체선택
	$(".checkAll").click(function(){
        $(".checkRow").prop("checked",this.checked);
    });    
	

});

</script> 

<!-- 헤더 -->
<jsp:include page="/WEB-INF/views/admin/adinclude/header.jsp" />


<div class="main">

	<div class="main-content">
	
		<div class="container-fluid">
		
			<div class="panel panel-headline">
			
				<!-- 헤드라인 -->
				<div class="panel-heading">
					<h3 class="panel-title">게시판 관리</h3>
					<p class="panel-subtitle">쇼핑</p>
				</div>
				<!-- 헤드라인 END -->
			
				<div class="panel-body">
				
					<form action="${pageContext.request.contextPath}/admin/adsharedelete.do" method="post" id="checkboxlist">
				
					<table class="table table-hover">
						
						<thead>
							<tr>
								<th style="width: 5%; text-align: center;"><input type="checkbox" id="checkAll" name="checkAll" class="checkAll"/></th>
								<th style="width: 10%; text-align: center;">판매자</th>
								<th style="width: 35%; text-align: center;">상품이름</th>
								<th style="width: 30%; text-align: center;">간단정보</th>
								<th style="width: 10%; text-align: center;">가격</th>
								<th style="width: 10%; text-align: center;">등록날짜</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach items="${list }" var="a">
							<tr>
								<td style="text-align: center;"><input type="checkbox" id="checkRow" class="checkRow" name="checkRow" value="${a.share_idx }"/>
								<td style="text-align: center;">${a.member_id }</td>
								<td style="text-align: center;">${a.shareName }</td>
								<td style="text-align: center;">${a.simpleInfo }</td>
								<td style="text-align: center;">${a.sharemoney }</td>
								<td style="text-align: center;">${a.shareDate }</td>
							</tr><!-- class="col-md-2" -->
							</c:forEach>
						</tbody>
					
					</table>
				
					</form>
					
					
					<div class="panel-footer">
				
						<div class="row">
					
<!-- 							<button type="button" id="up" class="btn btn-primary pull-right"> -->
<!-- 							등록 -->
<!-- 							</button> -->
						
							<!-- 삭제버튼 -->
							<button id="btnDelete" class="btn btn-danger pull-right">삭제</button>
							
							<!-- 검색 -->
							<form action="${pageContext.request.contextPath}/admin/adsharesearch.do" method="post">
							<div class="form-inline pull-right">
								<input class="form-control" type="text" id="keyword" name="keyword"
									style="width: 200px;" placeholder="검색어를 입력해주세요" />
								<button id="btnSearch" class="btn btn-primary">검색</button>
							
							</div>
							</form>
							
							<br>
					
						<div style="text-align: center;">
						<c:import url="/WEB-INF/views/admin/adpaging/adshpaging.jsp"></c:import>
						</div>
					
					</div>
				</div>
				
				</div><!-- panel-body -->
			
			</div><!-- panel panel-headline -->
		
		</div><!-- container-fluid -->
		
	</div><!-- main-content -->

</div><!-- main -->