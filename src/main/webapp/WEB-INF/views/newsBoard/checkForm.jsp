<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>





<jsp:include page="/header.do" />    

<div class="container" style="background-color: white;"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="main.do"><span class="hdn">홈</span></a></li>
		                        <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoard.do');">뉴스  & 팩트체크</a></li>
		                        <li><a href="infoBoard.do">팩트체크</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                        <h3>팩트체크</h3>
		                    </div>
		                </div>
		            </div>
 
	                <!--form 양식-->
	                <form action="<%= request.getContextPath() %>/checkUpload.do" method="post" enctype="multipart/form-data">
	                <div class="desc_factCheck">
	                <div>
					    <div class="tit_notice">
					    	분류 :<select id="division" name="division" class="division">
					    	<option value="1">코로나19 팩트</option>
					    	<option value="2">이슈체크</option>
					    </select>
					    		작성자 : <input type="text" name="fc_writer"/> 
					          	제목 : <input type="text" name="fc_title"/>
					          	파일업로드 : <input type="file" name="files" id="contract_file" multiple/>
				        </div>
				        <div class="text">
					      <textarea cols="150" rows="15" name="fc_contents" id="content" style="resize: none;"></textarea> 
					    </div>
				    </div>
<!-- 				    <div class="btn_section" style="background-color:red"> -->
<!-- 			       	  <button style="color:white; text-align:center; font-size:1.5vw">전송</button> -->
<!-- 			   	    </div> -->
	                
	                <div class="inputArea" style="float: right">
							<button type="submit" id="register_Btn" class="tag tag_lg tag_blue">등록</button>
                    </div>
	                
	                
	                
	                
	                </div>
	                	
	                </form>
                    <div class="inputArea" style="float: right">
                        <button id="Cancel_Btn" class="tag tag_lg tag_red" onclick="location.href='covidFact.do'">취소</button>
                    </div>
                      
                      
                                     
                  </div>
             </div>
         </div>
      </div>     

<jsp:include page="/footer.do" />