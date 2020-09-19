<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<form name="menuFrm" id="menuFrm" method="get">
	<input name="brdId" id="brdId" type="hidden" />
	<input name="brdGubun" id="brdGubun" type="hidden" />
	<input name="dataGubun" id="dataGubun" type="hidden" />
	<input name="ncvContSeq" id="ncvContSeq" type="hidden" />
	<input name="contSeq" id="contSeq" type="hidden" />
	<input name="board_id" id="board_id" type="hidden" />
	<input name="gubun" id="gubun" type="hidden" />
</form>

<div class="wrap nj">


<script type="text/javaScript" language="javascript">


function fn_search(pageNo){
	$("#pageIndex").val(pageNo);
	fn_submit();
}

function fn_submit(){
	var frm = $("#form1");
	frm.attr("action", "/infoBoardList.do");
	frm.submit();
}


</script>

<script type="text/javascript">

//아작스 처리로 해보려고 했지만 header랑 footer가 붙어있어서 실패
// function acyncMovePage(url){
//     // ajax option
//     var ajaxOption = {
//             url : url,
//             async : true,
//             type : "GET",
//             dataType : "html",
//             cache : false
//     };
    
//     $.ajax(ajaxOption).done(function(data){
//         // Contents 영역 삭제
//         $('#board_list').children().remove();
//         // Contents 영역 교체
//         $('#board_list').html(data);
//     });
// }



</script>


<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" value="" />

<input type="hidden" id="ncv_file_seq" name="ncv_file_seq" value="" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
<input type="hidden" id="brdId" name="brdId" value="3" />
<input type="hidden" id="brdGubun" name="brdGubun" value="32" />
<input type="hidden" id="dataGubun" name="dataGubun" value="" />
<input type="hidden" id="ncvContSeq" name="ncvContSeq" />

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
<!-- 		                    <input type="button" value="페이지 이동" onclick="acyncMovePage('/infoBoard.do')"> -->

		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                        <h3>정보공유</h3>
		                    </div>
		                </div>
		            </div>
		            <!--텝메뉴-->
		            
<!--                         <div class="tab_flt cnt6-3-2"> -->
<!--                             <ul> -->
<!--                                 <li class="on"><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '', '');"><span>전체</span></a></li> -->
<!--                                 <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '324', '');"><span>공지사항</span></a></li> -->
<!--                                 <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '321', '');"><span>일반인</span></a></li> -->
<!--                                 <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '323', '');"><span>입국자 및 해외여행객</span></a></li> -->
<!--                                 <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '322', '');"><span>자가격리자</span></a></li> -->
<!--                                 <li ><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoardList.do', '3', '32', '326', '');"><span>기업 및 시장</span></a></li> -->
<!--                             </ul> -->
<!--                         </div> -->
                    
                        <!--텝메뉴-->
                       
                       <!-- 사회적거리두기 안내 -->
<!-- 						<div class="menuinfo"> -->
<!-- 							<p class="m_descript mgt0">*<strong>생활 속 거리 두기</strong> 관련 자료는 <strong>생활 속 거리 두기</strong>메뉴 에서 확인 가능합니다. <a href="guidelineList2bef.html?brdId=6&amp;brdGubun=61"><span class="t_mini">자료 바로가기</span></a></p> -->
<!-- 						</div> -->
                       <!-- 사회적거리두기 안내 //-->
	                <!--게시판 목록-->
	                
	                 <div class="tab_flt cnt2-2-2">
                      <ul>
                         <li class="on" style="width: 33.3%"><a href="/infoBoard.do"><span>정보공유</span></a></li>
                         <li style="width: 33.3%" ><a href="/faqBoard.do"><span>FAQ</span></a></li>
                         <li style="width: 33.3%"><a href="/noticeBoard.do"><span>공지사항</span></a></li>
                      </ul>
                    </div>
	                 
	                <!--게시판 상단부-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count" style="font-weight: bold">총<strong>${paging.total }</strong>건</p>
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
	                
	                
					<div class="board_list" id="board_list">
                        <table>
                            <caption><span class="hdn">전체 목록 : 번호, 제목, 담당, 작성일, 첨부 구성 제목 클릭시 게시물 상세 내용으로
                                    이동</span></caption>
                            <colgroup>
                                <col class="m_dp_n" style="width:64px;">
                                <col>
                                <col class="m_dp_n" style="width:192px;">
                                <col style="width:120px;">
                                <col class="m_dp_n" style="width:64px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="m_dp_n" scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th class="m_dp_n" scope="col">작성자</th>
                                    <th scope="col">작성일</th>
                                    <th class="m_dp_n" scope="col">조회수</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${list.ilist }" var="info">
                            <fmt:formatDate value="${info.info_date }" pattern="yy-MM-dd HH:mm" var="regDate"/>
                            <fmt:formatDate value="${info.info_date }" pattern="yy-MM-dd HH" var="reghour"/>
                            <fmt:formatDate value="${sysdate }" pattern="yy-MM-dd HH" var="syshour"/>
                            	 <tr>
                                    <td class="m_dp_n">${info.info_idx}</td>
                                   
                                    <td class="ta_l">
<%--                                         <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3293', '' , '');">${info.info_title }</a> --%>
										<a class="bl_link" href="<%= request.getContextPath() %>infoBoardDetail.do?info_idx=${info.info_idx}">${info.info_title }</a>
                               			<c:if test="${reghour eq syshour }">
                               			<span class="ico_new"><span class="hdn">새글</span></span>
                               			</c:if>
                                    </td>
                                    <td class="m_dp_n">${info.info_writer }</td>
                                    <td class="m_dp_n">${regDate }</td>
<%--                                     <c:if test="${info.info_img == null}">X</c:if> --%>
<%--                                     <c:if test="${info.info_img != null}">O</c:if> --%>
                                    <td class="m_dp_n">${info.info_hits }</td>
                                </tr>
                            
                            </c:forEach>
                            
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <button type="button" class="boardInsert" onclick="location.href='infoBoardUpload.do'" style="float: right;">글쓰기</button>
	                <!--페이징-->
<!-- 					<div class="paging"> -->
<!-- 						<a href="#" class="p_first" title="처음" onclick="fn_search(1); return false;"><span class="hdn">처음페이지</span></a><a href="#" class="p_prev" title="이전" onclick="fn_search(1); return false;"><span class="hdn">이전페이지</span></a>&nbsp;&nbsp;<strong>1</strong>&nbsp;&nbsp;<a href="#" onclick="fn_search(2); return false;">2</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(3); return false;">3</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(4); return false;">4</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(5); return false;">5</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(6); return false;">6</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(7); return false;">7</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(8); return false;">8</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(9); return false;">9</a>&nbsp;&nbsp;<a href="#" onclick="fn_search(10); return false;">10</a>&nbsp;&nbsp;<a href="#" class="p_next" title="다음" onclick="fn_search(11); return false;"><span class="hdn">다음페이지</span></a><a href="#" class="p_last" title="끝" onclick="fn_search(105); return false;"><span class="hdn">끝페이지</span></a> -->
						
<!-- 					</div> -->
					
					<div class="paging"><!-- section pagination -->
			         <a href="<%= request.getContextPath() %>/infoBoard.do" class="p_first"><i class="p_first"></i></a>
			        <c:choose>
			        	<c:when test="${paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${paging.blockStart-1}" class="p_prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${paging.blockStart}" class="p_prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${page}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${paging.blockEnd+1 > paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${paging.blockEnd}" class="p_next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${paging.blockEnd+1}" class="p_next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			 	   	 <a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${paging.lastPage}" class="p_last"></a>
			      	<div class="btn_section" style="background-color:white">
			   	  	</div>
	                <!--페이징-->
	                
	                
	                
	                
				</div>
			</div>
		</div>
	</div>
	</div>
</form>



		<div class="body_bg"></div>

	</div>
	
	<jsp:include page="/footer.do" />

