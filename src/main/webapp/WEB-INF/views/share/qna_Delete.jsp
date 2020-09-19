<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='delelteForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/share/detail.do?share_idx=${share_idx}"
// 					   + "&page=${scri.page}"
// 					   + "&perPageNum=${scri.perPageNum}"
// 					   + "&searchType=${scri.searchType}"
// 					   + "&keyword=${scri.keyword}";
			})
			
		})
		
	</script>
	<body>
	
		<div id="root">
			 
			<hr />
			<section id="container">
				<form name="delelteForm" role="form" method="post" action="/share/delete_QnA.do">					
					<input type="hidden" name="share_idx" value="${share_idx }" />
					<input type="hidden" id="shareQnaIdx" name="shareQnaIdx" value="${shareQnaIdx }"  />
<%-- 					<input type="hidden" id="page" name="page" value="${scri.page}">  --%>
<%-- 					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}">  --%>
<%-- 					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}">  --%>
<%-- 					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}">  --%>
					<div>
						<p>삭제 하시겠습니까?</p>
						<button type="submit" class="delete_btn">예 삭제합니다.</button>
						<button type="button" class="cancel_btn">아니오. 삭제하지 않습니다.</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>