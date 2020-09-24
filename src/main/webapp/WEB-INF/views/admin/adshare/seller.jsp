<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@page import="javax.naming.Context"%>

<!-- bootstrap -->
<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script
	src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
<script src="/resources/admin/vendor/chartist/js/chartist.min.js"></script>
<script src="/resources/admin/scripts/klorofil-common.js"></script>

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
					<p class="panel-subtitle">판매자 관리</p>
				</div>
				<!-- 헤드라인 END -->
			
				<div class="panel-body">
				
					<form action="${pageContext.request.contextPath}/admin/aduserdelete.do" method="post" id="checkboxlist">
				
					<table class="table table-hover">
						
						<thead>
							<tr>
								<th style="width: 5%;"><input type="checkbox" id="checkAll" onclick="checkAll();"/></th>
								<th style="width: 10%;">이름</th>
								<th style="width: 20%;">등록일자</th>
								<th style="width: 20%;">판매자</th>
								<th style="width: 15%;">전화번호</th>
								<th style="width: 25%;">Email</th>
							</tr>
						</thead>
						
						<tbody>
<%-- 							<c:forEach items="${ }" var="a"> --%>
							<tr>
<%-- 								<td><input type="checkbox" id="checkRow" name="checkRow" value="${a.memberNo }"/> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
<%-- 								<td>${ }</td> --%>
							</tr><!-- class="col-md-2" -->
<%-- 							</c:forEach> --%>
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
							<form action="${pageContext.request.contextPath}/admin/adinfosearch.do" method="post">
							<div class="form-inline pull-right">
								<input class="form-control" type="text" id="keyword" name="keyword"
									style="width: 200px;" placeholder="검색어를 입력해주세요" />
								<button id="btnSearch" class="btn btn-primary">검색</button>
							
							</div>
							</form>
							
							<br>
					
						<div style="text-align: center;">
						<c:import url="/WEB-INF/views/admin/adpaging/adinfopaging.jsp"></c:import>
						</div>
					
					</div>
				</div>
				
				</div><!-- panel-body -->
			
			</div><!-- panel panel-headline -->
		
		</div><!-- container-fluid -->
		
	</div><!-- main-content -->

</div><!-- main -->