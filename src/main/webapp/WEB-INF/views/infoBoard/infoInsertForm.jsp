<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />
<!-- 	<div class="infoForm" style="padding: 50px; margin-left: 600px"> -->
		
<!-- 		<div class="infoShare"> -->
<!-- 		  <h1 style="font-size: 20px">정보공유 게시판</h1> -->
<!-- 		  <br> -->
<!-- 		</div>  -->
		<!--  Content-Type : multipart/form-data
				여러 종류의 데이터가 동시에 서버에게 보내질 때 사용 -->
<%-- 		<form action="<%= request.getContextPath() %>/notice/noticeupload.do" method="post" enctype="multipart/form-data" --%>
<!-- 		style="border: 1px solid black; width: 1000px;"> -->
<!-- 	 	<div class="desc_notice"> -->
<!-- 	 		<div style="padding: 15px;"> -->
<!-- 			    <div class="tit_notice"> -->
<!-- 			    	<br> -->
<!-- 				    <table> -->
<!-- 			    		<tr><th style="width: 20%">작성자</th> -->
<!-- 			    		<td><input type="text" name="info_writer"/></td> -->
<!-- 			    		</tr> -->
<!-- 			    		<tr><th>제목</th> -->
<!-- 			          	<td><input type="text" name="info_title" placeholder="제목을 입력해주세요" style="font-weight: 400; width: 100%; font-size: 15px;"/></td> -->
<!-- 			    		</tr> -->
<!-- 			    		<tr> -->
<!-- 			          	<td>&nbsp;<input type="file" name="info_files" id="info_file" multiple/></td> -->
<!-- 			          	</tr> -->
			          	
<!-- 				    </table> -->
<!-- 		        </div> -->
<!-- 		        <div class="text"> -->
<!-- 			      <textarea cols="150" rows="15" name="content" id="content" style="resize: none;"></textarea>  -->
<!-- 			    </div> -->
<!-- 		    </div> -->
		    
<!-- 		</div> -->
<!-- 		</form> -->
<!-- 		    <div class="btn_section"> -->
		    	
<!-- 	       	  <button style=" background-color:#0b7599; color:white; text-align:center; font-size:20px; float: right;">전송</button> -->
<!-- 	   	    </div> -->
<!-- 		<script type="text/javascript"> -->
<!-- 		</script> -->
<!-- 	</div> -->
<!-- 	<div class="desc_notice" style="left:15%; width:80%"> -->
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
                                    <h4></h4>
                                </div>
                                <div class="bv_category">
                                
                                    <ul>
                                        <li><span class="bvc_ttl" style="">제목 :</span><span class="bvc_detail"></span><input>
                                        </li>
                                    </ul>
                                    
                                    <ul>
                                        <li><span class="bvc_ttl">작성자 :</span><span class="bvc_detail"></span><input>
                                        
                                        </li>
                                    </ul> 
                                        
                                </div>
                            </div>
                        
                    <div class="bv_content">
                                
                                <div class="bvc_txt">
                                	<p>&nbsp;내용
                                	</p>
                                	<textarea rows="" cols="">
                                	</textarea>

                                </div>
                                
                    </div>


                        </div>
                    	<br>
						<div class="info_btn" style="float: right">
							<button id="btnUpdate" class="tag tag_lg tag_blue">작성완료</button>
                        	<button id="btnDelete" class="tag tag_lg tag_red" onclick="alert('삭제되었습니다.');">취소</button>
                        </div>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/footer.do" />
