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
                          <li class="on" ><a href="/covidFact.do"><span>코로나19 팩트</span></a></li>
                         <li><a href="/issueCheck.do"><span>이슈체크</span></a></li>
                      </ul>
                    </div>
                    
	                
	                 
	                <!--게시판 목록-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count">총<strong>${paging.total }</strong>건</p>
	                    </div>
	                    <div class="fl_r">
	                            <form id="issueSearch" action="/covidFact.do" method="get">
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
							
			                    <li>
			                        <a class="fl_q lt_l" onClick="showView('2767');">
			                            <span class="ico_q" ></span>
			                            <span class="checkAjax">
<%-- 			                             onclick="location.href='<%= request.getContextPath() %>/checkDetail.do?fc_idx=${fact.fc_idx}'" --%>
			                            ${fact.fc_title }</span>
			                            <span class="list_date">${fact.fc_regDate } </span>
			                            <i></i>
			                        </a>
			                        <div class="fl_a lt_c">
			                         <!--작성자정보-->
			                         <div class="bv_top">
			                                <div class="bv_category">
			                                <div class="list">
			                                    <ul>
			                                        <li><span class="bvc_ttl">담당 :</span><span class="bvc_detail">${fact.fc_writer }</span></li>
			                                        <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail">${fact.fc_regDate }</span> </li>
			                                        
			                                        
			                                        <li><span class="bvc_ttl">
			                                                <a onclick="downloadFile('${fact.ORIGIN_FILE_NAME}','${fact.RENAME_FILE_NAME}')" class="bvf_link">
													         ${fact.ORIGIN_FILE_NAME} 다운로드
															 </a>
			                                             </span>
			                                         </li>
			                                         
			                                            
			                                    </ul>
			                                 	<ul>
			                                    	<li>
			                                    	     <span class="bvc_ttl">
			                                    	     ${fact.fc_contents}
			                                    	 
			                                    	 	<br>
			                                    		 <img src="/resources/upload/news/${fact.RENAME_FILE_NAME}" style="width:100%;height:100%"/>
			                                    		 <br>
			                                    	     </span>              
			                                    	</li>
			                                    	<li>
			                                    	 <br>
													 <a onclick="downloadFile('${fact.ORIGIN_FILE_NAME}','${fact.RENAME_FILE_NAME}')">
													         ${fact.ORIGIN_FILE_NAME} 다운로드
													 </a>
													 
													 </li>
			                                 	</ul>
			                                 	
			                                 	
			                                 	
			                                 	</div>
			                                </div>
			                            </div>
			                            
			                            
			                        </div>
			                    </li>
							
							</c:forEach>
		                </ul>
		            </div>
	                <div class="paging">section pagination
			         <a href="<%= request.getContextPath() %>/covidFact.do?search_item=${param.search_item}&search_content=${param.search_content}" class="p_first"><i class="p_first"></i></a>
			        <c:choose>
			        	<c:when test="${paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/covidFact.do?cPage=${paging.blockStart-1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/covidFact.do?cPage=${paging.blockStart}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/covidFact.do?cPage=${page}&search_item=${param.search_item}&search_content=${param.search_content}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${paging.blockEnd+1 > paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/covidFact.do?cPage=${paging.blockEnd}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/covidFact.do?cPage=${paging.blockEnd+1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			 	   	 <a href="<%= request.getContextPath() %>/covidFact.do?cPage=${paging.lastPage}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_last"></a>
			      	<div class="btn_section" style="background-color:white">
			   	  	</div>
	                </div>
				</div>
			</div>
		</div>
	</div>


<!-- Mirrored from ncov.mohw.go.kr/factBoardList.do?brdId=3&brdGubun=33 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 04:47:57 GMT -->
	                <!--페이징-->
<!-- 					<div class="paging"> -->
<!-- 						<a href="#" class="p_first" title="처음" onclick="fn_search(1); return false;"><span class="hdn">처음페이지</span></a><a href="#" class="p_prev" title="이전" onclick="fn_search(1); return false;"><span class="hdn">이전페이지</span></a>&nbsp;&nbsp;<strong>1</strong>&nbsp;&nbsp;<a href="#" onclick="fn_search(2); return false;">2</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(3); return false;">3</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(4); return false;">4</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(5); return false;">5</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(6); return false;">6</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(7); return false;">7</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(8); return false;">8</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(9); return false;">9</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(10); return false;">10</a>&nbsp;&nbsp;<a href="#" class="p_next" title="다음" onclick="fn_search(11); return false;"><span class="hdn">다음페이지</span></a><a href="#" class="p_last" title="끝" onclick="fn_search(105); return false;"><span class="hdn">끝페이지</span></a> -->
						
<!-- 					</div> -->
					
					
	                
	                
	                

<jsp:include page="/footer.do" />



