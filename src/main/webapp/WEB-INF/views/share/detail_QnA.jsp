<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">

#rol{
width: 10%;
margin-left: 40%%;
    }
</style>


       <script type="text/javaScript">

$(document).ready(function() {
	// tab operation
	
	  $(document).on("click", ".reply", function() {
	  	  	console.log($(this).children("a").attr("href"))
	  	  	
	  	  	$.ajax({
	  	  		type: "get"
	  	  		, url: $(this).children("a").attr("href")
	  	  		, dataType: "html"
	  	  		, success: function(h) {
	  	  		$('#listReply3').html(h);
				console.log(h);
				console.log(succ);
	  	  		}
	  	  		, error: function() {
	  	  			console.log("err")
	  	  		}
	  	  	})
	  	  	
	  	  	return false;
	  	  })
	  	  
	  	  
	  	  })

</script> 

	

    <table style="width:700px">
        <c:forEach var="row" items="${qlist}">
        <tr id="up">    
            <td>
                ${row.member_id }
                <br>
                <fmt:formatDate value="${row.shareQnaRegDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
                <br>
                ${row.shareQnaContent}
		        
		        <div id="rol">
						<button type="button"  class="qnaUpdateBtn" data-qno="${row.shareQnaIdx }"> 수정</button>
							 <button type="button" class="qnaDeleteBtn" data-qno="${row.shareQnaIdx }">삭제</button>
							<div class="reply">
							
							<a href="/share/listReply.do?shareQnaIdx=${row.shareQnaIdx}">
                                 답변
                           </a>
                           </div>
				</div>
				
            <hr>
            </td>
        </tr>
	        <td id="listReply3"></td>
        </c:forEach>
              
  
        <!-- **페이징 처리 -->
        <tr>
            <td>
                <!-- 현재 페이지 블럭이 1보다 크면 처음으로 이동 -->
                <c:if test="${qnapager.curBlock > 1}">
                    <a href="javascript:listReply('1')">[처음]</a>
                </c:if>
                <!-- 현재 페이지 블럭이 1보다 크면 이전 페이지 블럭으로 이동 -->
                <c:if test="${qnapager.curBlock > 1}">
                    <a href="javascript:listReply('${qnapager.prevPage}')">[이전]</a>
                </c:if>
                <!-- 페이지 블럭 처음부터 마지막 블럭까지 1씩 증가하는 페이지 출력 -->
                <c:forEach var="num" begin="${qnapager.blockBegin}" end="${qnapager.blockEnd}">
                    <c:choose>
                        <c:when test="${num == qnapager.curPage}">
                            ${num}&nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:listReply('${num}')">${num}</a>&nbsp;
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <!-- 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 다음페이지로 이동 -->
                <c:if test="${qnapager.curBlock <= qnapager.totBlock}">
                    <a href="javascript:listReply('${qnapager.nextPage}')">[다음]</a>
                </c:if>
                <!-- 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 끝으로 이동 -->
                <c:if test="${qnapager.curBlock <= qnapager.totBlock}">
                    <a href="javascript:listReply('${qnapager.totPage}')">[끝]</a>
                </c:if>
            </td>
        </tr>
    </table>
