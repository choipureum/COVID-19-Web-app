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
			var formObj = $("form[name='updateForm']");
			
			
			$(".cancel_btn").on("click", function(){
				location.href = "/share/detail.do?share_idx=${share_idx}"
			})
			
		})
		
	</script>
	<body>
		<div id="root">
			 
			<hr />
			
				<form name="updateForm" role="form" method="post" action="/share/readUpdate_QnA.do">
					<input type="hidden" name="share_idx" value="${share_idx }" />
							<input type="hidden" id="shareQnaIdx" name="shareQnaIdx" value="${shareQnaIdx }"  />
<%-- 					<input type="hidden" id="shareDate" name="shareDate" value="${shareDate}">  --%>
<%-- 					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}">  --%>
<%-- 					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}">  --%>
<%-- 					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}">  --%>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="shareQnaContent">댓글 내용</label><input type="text" id="shareQnaContent" name="shareQnaContent" value="${shareQnaContent}"/>
								</td>
							</tr>	
							
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>