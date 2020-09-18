<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />



<script type="text/javascript">
$(document).ready(function(){
	//목록버튼
	$("#btnList").click(function(){
		$(location).attr("href", "infoBoard.do");
	});	
	//업데이트 버튼
	$("#btnUpdate").click(function(){
		$(location).attr("href", "/board/update?b_num=${viewBoard.b_num}")
	})
	//삭제버튼
	$("#btnDelete").click(function() {
		$(location).attr("href", "deleteInfo.do?info_idx=${data.infoshare.info_idx}");
	});
	
	
	
	
})

</script>

<script type="text/javascript">

	
	var updateReIdx = updateReContent = null;
	function fn_replyUpdate(reply_idx){
		var form = document.form2;
		var reply = dcoument.getElementById("reply_idx" + reply_idx);
		var replyDiv = document.getElementById("replyDiv");
		replyDiv.style.display="";
		
		if(updateReIdx){
			document.body.appendChild(replyDiv);
			var oldReIdx = document.getElementById("reply" + updateReContent)
			oldReIdx.innerText = updateReContent;
		}
		
		form.reply_idx.value =reply_idx;
		form.reply_content.value = reply.innerText;
		reply.innerText="";
		updateReIdx = reply_idx;
		updateReContent = form.reply_content.value;
		form.reply_content.focus();
	}

	function fn_replyUpdateSave(){
	    var form = document.form2;
	    if (form.reply_content.value=="") {
	        alert("글 내용을 입력해주세요.");
	        form.reply_content.focus();
	        return;
	    }
	   
	    form.action="/infoReplySave.do";
	    form.submit();   
	}

	function fn_replyUpdateCancel(){
	    var form = document.form2;
	    var replyDiv = document.getElementById("replyDiv");
	    document.body.appendChild(replyDiv);
	    replyDiv.style.display = "none";
	   
	    var oldReno = document.getElementById("reply"+updateReIdx);
	    oldReno.innerText = updateReContent;
	    updateReIdx = updateReContent = null;
	}

	
	//댓글 삭제 기능 
	function fn_replyDelete(reply_idx){
		$.ajax({
			type: "post"
			, url: "/infoReplyDelete.do"
			, dataType: "json"
			, data: {
				reply_idx : reply_idx
			}
			, succes: function(data){
				if(data.succes){
					$("[data-reply_idx'"+reply_idx+"']").remove();
				} else{
					alert("댓글 삭제 실패하였습니다.");
				}
			}
			, error: function(){
				console.log("error");
			}
		});
		
	
	}
	



</script>

<div class="desc_notice" style="left:15%; width:80%">
<!--       <div class="tit_notice"> -->
<%--           <h4 class="reset">${data.infoshare.info_idx}</h4> --%>
<!--       </div> -->
<!--       <div class="info" > -->
<%--            <span name="noticeNo" value="${data.infoshare.info_idx}">게시글번호 : ${data.infoshare.info_idx}</span> --%>
          
<%--           <span>등록일 : ${data.infoshare.info_date}</span> --%>
<%--           <span>작성자 : ${data.infoshare.member_nick}</span> --%>
<!--       </div> -->
<!--       <div class="info" style="height:auto"> -->
<%--       <c:forEach items="${data.flist}" var="file"> --%>
<!--          <button style="margin-left:1%;" type="button"  -->
<%--                onclick="downloadFile('${file.originFileName}','${file.renameFileName}')"> --%>
<%--          ${file.originFileName}</button> --%>
<%--       </c:forEach> --%>
<!--       </div> -->
<!--       <div class="text"> -->
<%--            ${data.infoshare.info_content} --%>
<!--         </div> -->
<!--       <div class="btn_section"> -->
<!--           <button style="color:white" onclick="submitData('noticelist.do')"><span>목록</span></button> -->
<!--         </div> -->
<%--         <c:if test="${logInInfo.userId == data.notice.userId}"> --%>
<!--          <div class="btn_section"> -->
<%--           <button style="color:white" onclick="submitData('noticedelete.do?nIdx=${data.notice.nIdx}&userId=${data.notice.userId}')"><span>삭제</span></button> --%>
<!--         </div> -->
<!--         <div class="btn_section"> -->
<%--           <button style="color:white" onclick="submitData('noticeModify.do?nIdx=${data.notice.nIdx}&userId=${data.notice.userId}')"><span>수정</span></button> --%>
<!--         </div> -->
<%--         </c:if> --%>
        <input type="hidden" name="pwVal" id="pwVal"/>
   </div>
   
   
   
<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
</form>
<fmt:formatDate value="${data.infoshare.info_date }" pattern="yy-MM-dd HH:mm" var="regDate"/>

	<div class="container" style="background-color: white;"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="main.do"><span class="hdn">홈</span></a></li>
		                        <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoard.do');">정보공유 & FAQ</a></li>
		                        <li><a href="infoBoard.do">정보공유</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                        <h3>정보공유</h3>
		                    </div>
		                </div>
		            </div>
 
	                <!--게시글 보기-->
                    <div class="board_view">
                      <div class="bv_top">
                                <div class="bv_ttl">
                                    <p style="font-weight: bold">${data.infoshare.info_title}</p>
                                </div>
                                <div class="bv_category">
                                    <ul>
                                        <li><span class="bvc_ttl">게시글 번호 :</span><span class="bvc_detail"> ${data.infoshare.info_idx}</span>
                                        <li><span class="bvc_ttl">작성자 :</span><span class="bvc_detail">${data.infoshare.info_writer}</span></li>
                                        <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail">${regDate}</span> </li>
                                        
                                    </ul>
                                </div>
                            </div>
                        
                            <div class="bv_content">
                                <div class="bvc_txt">
                                	<p>&nbsp;${data.infoshare.info_content}
                                	
                                	</p>
                                	<c:set var="img" value="${data.infoshare.info_img}"/>
                                	<div style="width: 50%; height:auto;">
                                	<c:if test="${fn:contains(img, 'png')}">
										<img src="${data.infoshare.info_img}"/>	
                                	</c:if>
                                	
                                	<c:if test="${fn:contains(img, 'jpg')}">
										<img src="${data.infoshare.info_img}"/>	
                                	</c:if>
                                	
                                	<c:if test="${fn:contains(img, 'JPG')}">
										<img src="${data.infoshare.info_img}"/>	
                                	</c:if>
                                	</div>
                                	
                                </div>
                            </div>
							<p>&nbsp;</p>
						<!-- 댓글 작성 -->
							<div style="border: 1px solid; width: 100%; padding: 5px">
								<form name="form1" action="<%= request.getContextPath() %>/infoReplySave.do" method="post">
									<input type="hidden" name="info_idx" value="<c:out value="${data.infoshare.info_idx}"/>">
									작성자:<input type="text" name="reply_writer"	size="20" maxlength="20" value="${logInInfo.member_id}" readonly="readonly"><br/>
									<textarea name="reply_content" rows="3" cols="60" maxlength="500" placeholder="댓글을 달아주세요."></textarea>								
									<div style="text-align: right;">
									<button style="color:white; background-color:grey; text-align:center; font-size:1.5ww">저장</button>
									</div>
								</form>
							</div>
							
						<!-- 댓글 목록  -->
							<c:forEach var="replylist" items="${replylist}" varStatus="status">
							    <div style="border: 1px solid gray; width: 100%; padding: 5px; margin-top: 5px;">
							    <div style="text-align: right; font-weight: bold;"> 작성자: <c:out value="${replylist.reply_writer}"/> <c:out value="${replylist.reg_date}"/>
							        <a href="#" onclick="fn_replyDelete('<c:out value="${replylist.reply_idx}"/>'); history.go(0); alert('삭제되었습니다.');">삭제</a>
							        <a href="#" onclick="fn_replyUpdate('<c:out value="${replylist.reply_idx}"/>')">수정</a>
<!-- 							        <a href="#" onclick="fn_editReply()">수정</a> -->
							    </div>   
							        <div id="reply<c:out value="${replylist.reply_idx}"/>"><c:out value="${replylist.reply_content}"/></div>
							    </div>
							</c:forEach>

<!-- 							<div id="replyDiv" style="width: 99%; display:none"> -->
<!-- 							    <form name="form2" action="/infoReplyUpdate.do" method="post"> -->
<%-- 							        <input type="hidden" name="info_idx" value="<c:out value="${data.infoshare.info_idx}"/>"> --%>
<!-- 							        <input type="hidden" name="reply_idx"> -->
<!-- 							        <textarea name="reply_content" rows="3" cols="60" maxlength="500"></textarea> -->
<!-- 							        <a href="#" onclick="fn_replyUpdateSave()">저장</a> -->
<!-- 							        <a href="#" onclick="fn_replyUpdateCancel()">취소</a> -->
<!-- 							    </form> -->
<!-- 							</div> -->

							
							
                        </div>
                    	<br>
						<div class="info_btn" style="float: right">
<!--                             <a href="javascript:void(0);" onclick="infoBoard.do" class="tag tag_lg tag_black"><span>목록</span></a> -->
                    <!--게시판 목록-->
							<button id="btnList" class="tag tag_lg tag_black">목록</button>
<!--                             <a href="javascript:void(0);" onclick="fn_boardView('/infoBoard.do', '3', '32', '', '', '');" class="tag tag_lg tag_blue"><span>수정</span></a> -->
							<button id="btnUpdate" class="tag tag_lg tag_blue">수정</button>
                        	<button id="btnDelete" class="tag tag_lg tag_red" onclick="alert('삭제되었습니다.');">삭제</button>
                        </div>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="/footer.do" />
