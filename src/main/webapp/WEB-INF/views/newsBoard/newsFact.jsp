<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />

<script type="text/javaScript" language="javascript">

function fn_goMenu(url, brd_id, brd_gubun, data_Gubun){
	
	$("#brdId").val(brd_id);
	$("#brdGubun").val(brd_gubun);
	$("#dataGubun").val(data_Gubun);

	var frm = $("#menuFrm");
	frm.attr("action", url);
	frm.submit();
}

function fn_boardView(url, brdId, brdGubun, ncvContSeq, board_id, dataGubun){
	$("#brdId").val(brdId);
	$("#brdGubun").val(brdGubun);
	$("#ncvContSeq").val(ncvContSeq);
	$("#contSeq").val(ncvContSeq);
	$("#board_id").val(board_id);
	$("#dataGubun").val(dataGubun);

	var frm = $("#menuFrm");
	frm.attr("action", url);
	frm.submit();
}

function fn_tcm_boardView(url, brdId, brdGubun, ncvContSeq, board_id, gubun){
	
	$("#brdId").val(brdId);
	$("#brdGubun").val(brdGubun);
	$("#ncvContSeq").val(ncvContSeq);
	$("#contSeq").val(ncvContSeq);
	$("#board_id").val(board_id);
	$("#gubun").val(gubun);
	
	var frm = $("#menuFrm");
	frm.attr("action", url);
	frm.submit();
	
}


function search( where ){
	
	var thisForm = $("#"+ where);
	var thisSearch = $(thisForm).find("#searchTerm");
	var cont = $(thisSearch).val();
	
	//특수문자 체크
	if (containsChars(cont,"~!@#$%^&*()+|`=\\[]{};:'\".<>/?")) {
		alert("특수문자는 제외하고 검색해주시기 바랍니다.");
		$(thisSearch).val("");
		event.preventDefault();
		return false;
	}else if ( cont == "" || cont == null || cont == undefined){
		alert("검색어를 입력하세요");
		$(thisSearch).focus();
		event.preventDefault();
		return false;
	}
	
	return true;		
	
}



</script>


		

<script type="text/javaScript" language="javascript">

function fn_search(pageNo){
	$("#pageIndex").val(pageNo);
	fn_submit();
}

function fn_submit(){
	var frm = $("#form1");
	frm.attr("action", "/factBoardList.do");
	frm.submit();
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


// 첨부파일 
function fn_fileDown(name, path, seq){
	var frm = $("#form1");
	$("#file_path").val(path);
	$("#file_name").val(name);
	$("#ncv_file_seq").val(seq); 
	
	frm.attr("action", '/board/doFileDownload.do');
	frm.submit();
}


</script>

<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" value="" />

<input type="hidden" id="ncv_file_seq" name="ncv_file_seq" value="" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
<input type="hidden" id="brdId" name="brdId" value="3" />
<input type="hidden" id="brdGubun" name="brdGubun" value="33" />
<input type="hidden" id="dataGubun" name="dataGubun" value="" />

	<div class="container"><!-- main_container -->
		<div>
			<div id="content" class="content">
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
                          <li class="on"><a href="factBoardListc7b6.html?brdId=3&amp;brdGubun=33&amp;dataGubun=331"><span>코로나19 팩트</span></a></li>
                         <li ><a href="factBoardList26bc.html?brdId=3&amp;brdGubun=33&amp;dataGubun=332"><span>이슈체크</span></a></li>
                      </ul>
                    </div>
                    
	                
	                 
	                <!--게시판 목록-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count">총<strong>56</strong>건</p>
	                    </div>
	                    <div class="fl_r">
	                            <fieldset>
	                                <legend class="hdn">게시물 검색</legend>
	                                <div class="bt_srch">
	                                    <div class="bts_slct">
	                                        <select id="u_shcate" name="search_item" class="select" title="검색항목 선택">
	                                            <option value="1" >제목 </option>
	                                            <option value="2" >내용 </option>
	                                       
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
	                    </div>
	                </div>
					<div class="faq_list">
		                <ul>
		                
							
			                    <li>
			                        <a class="fl_q lt_l" onClick="showView('2767');">
			                            <span class="ico_q" ></span>
			                            <span class="fl_ttl">[이미지] 정부가 ‘임시생활시설 방역업체 등의 단가를 깎고 지급을 미뤘다’는 보도는 사실과 다릅니다.
			                            	
			                            </span>
			                            <span class="list_date">2020-06-18 </span>
			                            <i></i>
			                        </a>
			                        <div class="fl_a lt_c">
			                         <!--작성자정보-->
			                         <div class="bv_top">
			                                <div class="bv_category">
			                                    <ul>
			                                        <li><span class="bvc_ttl">담당 :</span><span class="bvc_detail">보건복지부</span></li>
			                                        <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail">2020-06-18 17:43</span> </li>
			                                        
			                                         <li><span class="bvc_ttl">
			                                               <a target="_blank" href="shBoardView6765.html?brdId=3&amp;brdGubun=33&amp;ncvContSeq=2767"  class="bvf_link" title="공유하기">공유하기</a>
			                                               </span>
			                                            </li>
			                                            
			                                    </ul>
			                                </div>
			                            </div>
			                            <!--작성자정보-->
											
			                            <!--글내용-->
			                            <div class="fa_s_descript"  id="2767" >
			                              	<p id="2767p" ></p>
			                            </div>
			                            <!--글내용-->

			                            <!--첨부파일-->
			                            
			                            <!--첨부파일-->
			                        </div>
			                    </li>
							
							
							
						
		                </ul>
		            </div>
	                <div class="paging">section pagination
			         <a href="<%= request.getContextPath() %>/covidNews.do" class="p_first"><i class="p_first"></i></a>
			        <c:choose>
			        	<c:when test="${paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockStart-1}" class="p_prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockStart}" class="p_prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/covidNews.do?cPage=${page}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${paging.blockEnd+1 > paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockEnd}" class="p_next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockEnd+1}" class="p_next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			 	   	 <a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.lastPage}" class="p_last"></a>
			      	<div class="btn_section" style="background-color:white">
			   	  	</div>
	                </div>
				</div>
			</div>
		</div>
	</div>
</form>


<!-- Mirrored from ncov.mohw.go.kr/factBoardList.do?brdId=3&brdGubun=33 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Aug 2020 04:47:57 GMT -->
	                <!--페이징-->
<!-- 					<div class="paging"> -->
<!-- 						<a href="#" class="p_first" title="처음" onclick="fn_search(1); return false;"><span class="hdn">처음페이지</span></a><a href="#" class="p_prev" title="이전" onclick="fn_search(1); return false;"><span class="hdn">이전페이지</span></a>&nbsp;&nbsp;<strong>1</strong>&nbsp;&nbsp;<a href="#" onclick="fn_search(2); return false;">2</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(3); return false;">3</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(4); return false;">4</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(5); return false;">5</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(6); return false;">6</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(7); return false;">7</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(8); return false;">8</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(9); return false;">9</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(10); return false;">10</a>&nbsp;&nbsp;<a href="#" class="p_next" title="다음" onclick="fn_search(11); return false;"><span class="hdn">다음페이지</span></a><a href="#" class="p_last" title="끝" onclick="fn_search(105); return false;"><span class="hdn">끝페이지</span></a> -->
						
<!-- 					</div> -->
					
					
	                
	                
	                

<jsp:include page="/footer.do" />



