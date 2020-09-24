
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

.select_img img { margin:20px 0;}
</style>
   
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
	                <form role="form" action="<%= request.getContextPath() %>/infoUpdatePost.do" method="post" autocomplete="off" >
		                      	<input type="hidden" id="info_idx" name="info_idx" value="${data.infoshare.info_idx}"/>
		                      	
		                      	<div class="inputArea">
		                      		<label for="info_title">제목</label>
		                      		<input type="text" id="info_title" name="info_title" value="${data.infoshare.info_title}"/>
		                      	</div>
		                      	
		                      	<div class="inputArea">
		                      		<label for="info_writer">작성자</label>
		                      		<input type="text" id="info_writer" name="info_writer" value="${data.infoshare.info_writer}" readonly="readonly"/>
		                      	</div>
	           
                          <div class="bv_content">
                                
                                <div class="bvc_txt">

                                	<div class="inputArea">
	                                	<label for="info_content">&nbsp;내용</label>
	                                	<textarea rows="5"  id="info_content" name="info_content">
	                                	"${data.infoshare.info_content}"
	                                	</textarea>
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
							<button type="submit" id="register_Btn" class="tag tag_lg tag_blue">수정</button>
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

