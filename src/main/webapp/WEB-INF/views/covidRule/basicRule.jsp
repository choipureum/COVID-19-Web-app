<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>
<style>
.tabcontent:hover {
  background-color: #777;
}

</style>
<script type="text/javaScript">
/*2 홍보자료 클릭시*/
if(${boundary}==2){
	document.getElementId("#boundary2").classList.toggle("on");
	document.getElementId("#boundary1").classList.toggle("on");
}
if(${boundary}==1){
	document.getElementId("#boundary2").classList.toggle("on");
	document.getElementId("#boundary1").classList.toggle("on");
}



</script>


	<div class="container" style="background:white"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="/main.do" ><span class="hdn">홈</span></a></li>
		                        <li><a href="/basicRule.do">생활 속 거리 두기</a></li>
		                        <li><a href="/basicRule.do">기본 수칙</a></li>		                       		                        
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                    <h3>기본수칙</h3>           
		                    </div>
		                </div>
		            </div>
		            <!--텝메뉴-->
		             <!-- 기본 수칙 -->
                        <div class="tab_flt cnt2-2-2">
                            <ul id="boundary">
                                <li class="on" id="boundary1"><a href="/basicRule.do" class="tabcontent"><span>설명 자료</span></a></li>                                
                                <li id="boundary2"><a href="/basicRule.do?boundary=2" class="tabcontent"><span>홍보 자료</span></a></li>
                            </ul>
                        </div>

		                               
                    <!--텝메뉴-->
                       
	                <!--게시판 목록-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count">총<strong>${ListCnt }</strong>건</p>
	                    </div>
	                    <div class="fl_r">
	                    <!-- 게시물 검색 -->
	                    <form action="" method="post">
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
	                            </form>
	                    </div>
	                </div>
					<div class="board_list">
                        <table>
                            <caption><span class="hdn">전체 목록 : 번호, 제목, 담당, 작성일, 첨부 구성 제목 클릭시 게시물 상세 내용으로
                                    이동</span></caption>
                            <colgroup>
                                <col class="m_dp_n" style="width:64px;">
                                <col>
                                <col class="m_dp_n" style="width:192px;">
                                <col style="width:96px;">
                                <col class="m_dp_n" style="width:64px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="m_dp_n" scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th class="m_dp_n" scope="col">담당</th>
                                    <th scope="col">작성일</th>
                                    <th class="m_dp_n" scope="col">첨부</th>
                                </tr>
                            </thead>
                            <tbody>
                     
						<c:forEach items="${RuleList.BasicList}" var="list" varStatus="status">
                                <tr>
                                    <td class="m_dp_n">${ListCnt-(paging.currentPage-1)*10-status.index}</td>
                                    <td class="ta_l">
                                        <a class="bl_link" href="/basicDetail.do?lfNo=${list.LFNO}">${list.LFTITLE }</a>
                               			
                                    </td>
                                    <td class="m_dp_n">${list.LFWRITER }</td>                                 
                                    <td><fmt:formatDate value="${list.LFDATE}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                                    <td class="m_dp_n"><i class="ico_file"><span class="hdn">첨부파일</span></i></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
	                <!--페이징-->
					 <div class="paging"><!-- section pagination -->
			        <c:choose>
			        	<c:when test="${paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/basicRule.do?currentPage=${paging.blockStart-1}" class="nav prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/basicRule.do?currentPage=${paging.blockStart}" class="nav prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/basicRule.do?currentPage=${page}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${paging.blockEnd+1 > paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/basicRule.do?currentPage=${paging.blockEnd}" class="nav next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/basicRule.do?currentPage=${paging.blockEnd+1}" class="nav next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			   	  	</div>
			   	   </div>
   	   <!-- // section pagination -->
   	   
     </div>
	                <!--페이징-->
	                
	                
				</div>
			</div>
<script>
function openCity(cityName, elmnt, color) {
	  var i, tabcontent, tablinks;
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }

	  tablinks = document.getElementsByClassName("tablink");
	  for (i = 0; i < tablinks.length; i++) {
	    tablinks[i].style.backgroundColor = "";
	  }

	  document.getElementById(cityName).style.display = "block";

	  elmnt.style.backgroundColor = color;
	}

	// Get the element with id="defaultOpen" and click on it
	document.getElementById("defaultOpen").click();

</script>
		
<jsp:include page="/footer.do"/>
