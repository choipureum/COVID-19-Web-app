<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>

/*  .pagination{ */
/*  	display: block; */
/*  	text-align: center; */
/*  } */

</style>


<div class="text-center">
<ul class="pagination">
	
	<!-- 첫 페이지로 가기 -->
	<c:if test="${paging.curPage ne 1 }">
<%-- 	<c:if test="${paging.curPage gt paging.pageCount  }"> --%>
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=1&&keyword=${keyword }">&larr;</a></li>
	</c:if>
	
	
	<!-- 이전 페이징 리스트로 가기 -->
	<c:if test="${paging.startPage gt paging.pageCount }">
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=${paging.startPage - paging.pageCount }&keyword=${keyword }">&laquo;</a></li>
	</c:if>
	
	<c:if test="${paging.startPage le paging.pageCount }">
	<li class="disabled"><a>&laquo;</a></li>
	</c:if>
	
	
	<!-- 이전 페이지로 가기 -->
	<c:if test="${paging.curPage ne 1 }">
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=${paging.curPage - 1 }&keyword=${keyword }">&lt;</a>
	</c:if>
	
	
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
	
	<!-- 현재 페이지라면 강조(.active) -->
	<c:if test="${paging.curPage eq i }">
	<li class="active"><a href="<%= request.getContextPath() %>/adconfirmed.do?curPage=${i }&keyword=${keyword }">${i }</a></li>
	</c:if>
	
	<!-- 현재 페이지가 아니라면 평소 모습-->
	<c:if test="${paging.curPage ne i }">
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=${i }&keyword=${keyword }">${i }</a></li>
	</c:if>

	</c:forEach>


	<!-- 다음 페이지로 가기 -->
	<c:if test="${paging.curPage ne paging.totalPage}">
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=${paging.curPage + 1 }&keyword=${keyword }">&gt;</a>
	</c:if>
	

	<!-- 다음 페이징 리스트로 가기 -->
	<c:if test="${paging.endPage ne paging.totalPage }">
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=${paging.startPage + paging.pageCount }&keyword=${keyword }">&raquo;</a></li>
	</c:if>

	<c:if test="${paging.endPage eq paging.totalPage }">
	<li class="disabled"><a>&raquo;</a></li>
	</c:if>


	<!-- 마지막 페이지로 가기 -->
	<c:if test="${paging.curPage ne paging.totalPage }">
	<li><a href="<%= request.getContextPath() %>/admin/adconfirmed.do?curPage=${paging.totalPage }&keyword=${keyword }">&rarr;</a></li>
	</c:if>
	
</ul>
</div>