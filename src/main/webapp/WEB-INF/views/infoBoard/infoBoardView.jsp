<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
	<div class="container"><!-- main_container -->
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
                                    <h4>${data.infoshare.info_title}</h4>
                                </div>
                                <div class="bv_category">
                                    <ul>
                                        <li><span class="bvc_ttl">게시글 번호 :</span><span class="bvc_detail"> ${data.infoshare.info_idx}</span>
                                        <li><span class="bvc_ttl">작성자 :</span><span class="bvc_detail">${data.infoshare.member_nick}</span>
                                        </li>
                                        <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail">${data.infoshare.info_date}</span> </li>
                                        
                                        
                                    </ul>
                                </div>
                            </div>
                        
                            <div class="bv_content">
                                <div class="bvc_txt">
                                	<p>&nbsp;${data.infoshare.info_content}
                                	</p>

                                </div>
                            </div>


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
