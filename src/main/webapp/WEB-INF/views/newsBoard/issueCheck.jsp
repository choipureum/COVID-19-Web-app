<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />

<script type="text/javaScript" language="javascript">

function downloadFile(ofname, rfname){
    location.href = "/checkDownload.do?"
         +"ofname="+ofname
         +"&rfname="+rfname
         

}

</script>

<script type="text/javaScript" language="javascript">

//펼침메뉴를 눌렀을 경우 해당 seq번호로 게시글을 보여준다.
function showView(seq){
	
	if ($('#'+seq+'p').html() != "" ){
		return;
	}

	$.ajax({
		type : 'post',
		dataType : 'html',
		url : '/ncvCmBoardView.do',
		data : {'seq':seq},
		success : function(html){
			
			var html1 = decodeURIComponent(html);
	
			html1 = html1.replace(/\+/g, " ");
		
			$('#'+seq+'p').html(html1);
			//$('#'+seq).append("<p id='"+seq+"p'>"+html1+"</p>");
		}
	});

}


</script>


	<div class="container" style="background-color: white"><!-- main_container -->
		<div>
			<div id="content" class="content" >
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="index.html"><span class="hdn">홈</span></a></li>
		                        <li><a href="tcmBoardListf884.html?brdId=3">뉴스 & 이슈</a></li>
		                        <li><a href="factBoardListacb8.html?brdId=3&amp;brdGubun=33">코로나19 팩트 & 이슈체크</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                        <h3>코로나19 팩트 & 이슈체크</h3>
		                    </div>
		                </div>
		            </div>
		            
		            <!--텝메뉴-->
					
                    <!--텝메뉴-->
                    
	                <!--게시판 목록-->	                
	                 <div class="tab_flt cnt2-2-2">
                      <ul>
                          <li><a href="/covidFact.do"><span>코로나19 팩트</span></a></li>
                         <li class="on" ><a href="/issueCheck.do"><span>이슈체크</span></a></li>
                      </ul>
                    </div>
                    
	                
	                 
	                <!--게시판 목록-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count">총<strong>${paging.total }</strong>건</p>
	                    </div>
	                    <div class="fl_r">
	                            <form id="issueSearch" action="/issueCheck.do" method="get">
		                            <fieldset>
		                                <legend class="hdn">게시물 검색</legend>
		                                <div class="bt_srch">
		                                    <div class="bts_slct">
		                                        <select id="u_shcate" name="search_item" class="select" title="검색항목 선택">
		                                            <option value="t" >제목 </option>
		                                            <option value="c" >내용 </option>
		                                        </select>
		                                    </div>
		                                    <div>
		                                        <input type="text" id="search_content" name="search_content" value="" title="검색어를 입력하세요.">
		                                    </div>
		                                    <div class="bts_btn">
		                                        <input type="submit" class="btn btn_sm btn_gray" value="검색">
		                                    </div>
		                                </div>
		                            </fieldset>
		                      </form>
	                    </div>
	                </div>
	                
	                
	                <!-- 리스트  -->
					<div class="faq_list">
		                <ul>
		                	<c:forEach items="${list.flist}" var="fact">
							
			                    <li class="checkAjax">
			                        <a class="fl_q lt_l" onClick="showView('2767');">
			                            <span class="ico_q" ></span>
			                            <span class="fl_ttl">${fact.fc_title }</span>
			                            <span class="list_date">${fact.fc_regDate } </span>
			                            <i></i>
			                        </a>
			                        <div class="fl_a lt_c">
			                         <!--작성자정보-->
			                         <div class="bv_top">
			                               <div class="bv_category">
			                                    <ul>
			                                        <li><span class="bvc_ttl">담당 :</span><span class="bvc_detail">${fact.fc_writer }</span></li>
			                                        <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail">${fact.fc_regDate }</span> </li>
			                                        
			                                        
			                                        <li><span class="bvc_ttl">
			                                               <a target="_blank" href="shBoardView6765.html?brdId=3&amp;brdGubun=33&amp;ncvContSeq=2767"  class="bvf_link" title="공유하기">공유하기</a>
			                                             </span>
			                                         </li>
			                                            
			                                    </ul>
			                                 	<ul>
			                                    	<li>
			                                    	      <span class="bvc_ttl">
			                                    	     ${fact.fc_contents}
			                                    	 
			                                    	     <br>
			                                    		 <img src="/resources/upload/news/${fact.RENAME_FILE_NAME}" />
			                                    		 <!-- 콘솔찍기 -->
<!-- 			                                    		 <script> -->
<!-- // 			                                    		 $(document).ready(function(){ -->
<%-- // 			                                    			 console.log(${fact}); --%>
<%-- // 			                                    			 console.dir(${fact}); --%>
<!-- // 			                                    		 }) -->
<!-- 			                                    		 </script> -->
			                                    		 <!--  -->
			                                    	     </span>                    
			                                    	</li>
			                                    	<li>
													 <button type="button"  onclick="downloadFile('${fact.ORIGIN_FILE_NAME}','${fact.RENAME_FILE_NAME}')">
													         ${fact.ORIGIN_FILE_NAME}
													 </button>
													 </li>
			                                 	</ul>
			                                </div>
			                            </div>
			                       
			                        </div>
			                    </li>
							
							</c:forEach>
						
		                </ul>
		            </div>
	                <div class="paging">section pagination
			         <a href="<%= request.getContextPath() %>/issueCheck.do?search_item=${param.search_item}&search_content=${param.search_content}" class="p_first"><i class="p_first"></i></a>
			        <c:choose>
			        	<c:when test="${paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/issueCheck.do?cPage=${paging.blockStart-1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/issueCheck.do?cPage=${paging.blockStart}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/issueCheck.do?cPage=${page}&search_item=${param.search_item}&search_content=${param.search_content}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${paging.blockEnd+1 > paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/issueCheck.do?cPage=${paging.blockEnd}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/issueCheck.do?cPage=${paging.blockEnd+1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			 	   	 <a href="<%= request.getContextPath() %>/issueCheck.do?cPage=${paging.lastPage}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_last"></a>
			      	<div class="btn_section" style="background-color:white">
			   	  	</div>
	                </div>
				</div>
			</div>
		</div>
	</div>

					
	                
	                
	                

<jsp:include page="/footer.do" />



