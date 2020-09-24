<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />

<style>
.tabcontent:hover {
  background-color: #777;
}

</style>

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
		            <!--텝메뉴-->
	                <!--게시판 목록-->
	                
	                 <div class="tab_flt cnt2-2-2">
                      <ul>
                         <li class="on" style="width: 33.3%"><a href="/infoBoard.do"><span>정보공유</span></a></li>
                         <li style="width: 33.3%" ><a href="/faqBoard.do" class="tabcontent"><span>FAQ</span></a></li>
                         <li style="width: 33.3%"><a href="/noticeBoard.do" class="tabcontent"><span>공지사항</span></a></li>
                      </ul>
                    </div>
	                 
	                <!--게시판 상단부-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count" style="font-weight: bold">총<strong>${Paging.total }</strong>건</p>
	                    </div>
	                    <div class="fl_r">
		                    <form id="infoBoardSearch" action="infoBoard.do" method="get">
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
                                    <td class="m_dp_n">${info.info_hits }</td>
                                </tr>
                            
                            </c:forEach>
                            
                            </tbody>
                        </table>
                    </div>
                    <br>
                    <c:if test="${logInInfo.member_id eq null }">
                    <button type="button" class="boardInsert" onclick="alert('로그인이 필요합니다.'); history.go(0)" style="float: right;">글쓰기</button>
                    </c:if>
                    <c:if test="${logInInfo.member_id ne null }">
                    <button type="button" class="boardInsert" onclick="location.href='infoBoardUpload.do'" style="float: right;">글쓰기</button>
                    </c:if>
					
					<div class="paging"><!-- section pagination -->
			         <a href="<%= request.getContextPath() %>/infoBoard.do?search_item=${param.search_item}&search_content=${param.search_content}" class="p_first"><i class="p_first"></i></a>
			        <c:choose>
			        	<c:when test="${Paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${Paging.blockStart-1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${Paging.blockStart}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${Paging.blockStart}" end="${Paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${page}&search_item=${param.search_item}&search_content=${param.search_content}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${Paging.blockEnd+1 > Paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${Paging.blockEnd}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${Paging.blockEnd+1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			 	   	 <a href="<%= request.getContextPath() %>/infoBoard.do?cPage=${Paging.lastPage}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_last"></a>
			      	<div class="btn_section" style="background-color:white">
			   	  	</div>
	                <!--페이징-->
	                
	                
	                
	                
				</div>
			</div>
		</div>
	</div>
	</div>



		<div class="body_bg"></div>
	
	<jsp:include page="/footer.do" />

