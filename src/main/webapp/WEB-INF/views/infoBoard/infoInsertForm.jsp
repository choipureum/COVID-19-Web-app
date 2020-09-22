<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />
<style>
.inputArea {margin:10px 0; }
label {display: inline-block; width:100%; padding:5px;}
label[for='info_content']{display:block;}
input {width: 150px; }
textarea#info_content {width:100%; height: 180px;}

</style>
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
   
   
   
<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
</form>
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
	                <form role="form" method="post" autocomplete="off" >
<!-- 		                      	<div class="inputArea"> -->
<!-- 		                      		<label for="member_id">유저 아이디</label> -->
<!-- 		                      		<input type="text" id="member_id" name="member_id"/> -->
<!-- 		                      	</div> -->
		                      	
<!-- 		                      	<div class="inputArea"> -->
<!-- 		                      		<label for="member_nick">유저 닉네임</label> -->
<!-- 		                      		<input type="text" id="member_nick" name="member_nick"/> -->
<!-- 		                      	</div> -->
		                      	
		                      	<div class="inputArea">
		                      		<label for="info_title">제목</label>
		                      		<input type="text" id="info_title" name="info_title"/>
<!-- 		                      		<label for="info_date">작성일</label> -->
<!-- 		                      		<input type="text" id="info_date" name="info_date" value="sysdate" readonly="readonly"/> -->
		                      	</div>
		                      	
		                      	<div class="inputArea">
		                      		<label for="info_writer">작성자</label>
		                      		<input type="text" id="info_writer" name="info_writer" value="${logInInfo.member_id}" readonly="readonly"/>
		                      	</div>
	           
                          <div class="bv_content">
                                
                                <div class="bvc_txt">

<!--                                 	<div class="inputArea"> -->
<!-- 	                                	<label for="info_content">&nbsp;내용</label> -->
<!-- 	                                	<textarea id="info_content" name="info_content"> -->
<!-- 	                                	</textarea> -->
<!--                                 	</div> -->
                            		 <div class="text">
					     				 <textarea cols="150" rows="15" name="info_content" id="info_content" style="resize: none;"></textarea> 
					   				 </div>
<!--                                 	<div class="inputArea"> -->
<!--                                 		<label for="info_img"></label> -->
<!--                                 		<input type="file" id="info_img" name="file"/> -->
<!--                                 		<div class="select_img"><img src="" /></div> -->
                                		
<!--                                 		<script type="text/javascript"> -->
<!-- // 											$("#info_img").change(function(){ -->
<!-- // 												if(this.files && this.files[0]){ -->
<!-- // 													var reader = new FileReader; -->
<!-- // 													reader.onload = function(data){ -->
<!-- // 														$(".select_img img").attr("src", data.target.result).width(500); -->
<!-- // 													} -->
<!-- // 													reader.readAsDataURL(this.files[0]); -->
<!-- // 												}	 -->
<!-- // 											})		                                		 -->
<!--                                 		</script> -->
                                		
                                		
<%--                                 		<h3 style="font-weight: bold">저장경로 : <%=request.getRealPath("/") %></h3> --%>
<!--                                 	</div> -->
                                	
                                	
                                	
                                </div>
                                
                                
                                
                   		 </div>

						<div class="inputArea" style="float: right">
							<button type="submit" id="register_Btn" class="tag tag_lg tag_blue">등록</button>
                        </div>
                      </form>
                      	<div class="inputArea" style="float: right">
                        	<button id="Cancel_Btn" class="tag tag_lg tag_red" onclick="history.go(-1)">취소</button>
                      	</div>
                      
                      
                                     
                  </div>
             </div>
         </div>
      </div>            
            
<jsp:include page="/footer.do" />
