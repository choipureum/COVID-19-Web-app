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

				<form action="/admin/adconfiremedimpl.do" method="post">
					<table class="table table-hover">
						
						<tr>
							<td>이름 : </td>
							<td><input type="text" placeholder="이름" name="patName" id="patName" required style="height:30px; width: 250px"/></td>
						</tr>
						<tr>
							<td>성별 : </td>					
							<td><input type="text" placeholder="성별" name="patSex" id="patSex" required style="height:30px; width: 250px"/></td>
						</tr>
						<tr>
							<td>확진구역 : </td>					
							<td><input type="text" placeholder="확진구역" name="patLoc" id="patLoc" required style="height:30px; width: 250px"/></td>
						</tr>
						<tr>
							<td>동선 : </td>					
							<td><input type="text" placeholder="동선" name="patRoute" id="patRoute" required style="height:30px; width: 250px"/></td>
						</tr>
						
					</table>
					<button type="submit">등록</button>
				</form>	
					
					
					</div>
					
					
				</div>

			</div>

		</div>

	</div>
