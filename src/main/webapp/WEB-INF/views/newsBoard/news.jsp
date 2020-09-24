<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />

<link rel="preload" as="image" href="https://static.sbsdlab.co.kr/image/thumb_default.png">
<link rel="preload" as="script" href="https://static.sbsdlab.co.kr/common/jquery.lazy/jquery.lazy.min.js">
<body>

<script type="text/javascript">

window.jQuery || document.write('<script src="https://img.sbs.co.kr/news/common/pc/js/jquery-1.12.4.min.js"><\/script>');

function loadScript(u, c,f, l){try{var d = document; var s = d.createElement('script'); s.src = u;s.async = true;s.onload = c;s.onreadystatechange = c;s.onerror = f;if(!l) l = d.head;l.appendChild(s);}catch(e){}}
!function(e){"use strict";var t=function(t,n,r,o){var i,a=e.document,d=a.createElement("link");if(n)i=n;else{var f=(a.body||a.getElementsByTagName("head")[0]).childNodes;i=f[f.length-1]}var l=a.styleSheets;if(o)for(var s in o)o.hasOwnProperty(s)&&d.setAttribute(s,o[s]);d.rel="stylesheet",d.href=t,d.media="only x",function e(t){if(a.body)return t();setTimeout(function(){e(t)})}(function(){i.parentNode.insertBefore(d,n?i:i.nextSibling)});var u=function(e){for(var t=d.href,n=l.length;n--;)if(l[n].href===t)return e();setTimeout(function(){u(e)})};function c(){d.addEventListener&&d.removeEventListener("load",c),d.media=r||"all"}return d.addEventListener&&d.addEventListener("load",c),d.onloadcssdefined=u,u(c),d};"undefined"!=typeof exports?exports.loadCSS=t:e.loadCSS=t}("undefined"!=typeof global?global:this);/*! loadCSS. [c]2017 Filament Group, Inc. MIT License */
function onloadCSS(n,a){try{var t;function d(){!t&&a&&(t=!0,a.call(n))}n.addEventListener&&n.addEventListener("load",d),n.attachEvent&&n.attachEvent("onload",d),"isApplicationInstalled"in navigator&&"onloadcssdefined"in n&&n.onloadcssdefined(d)}catch(e){}}	
function loadLazyLoad(){setTimeout(function(){try{$(".lazy").Lazy({scrollDirection:"vertical",effect:"fadeIn",visibleOnly:!1,defaultImage:"https://static.sbsdlab.co.kr/image/thumb_default.png",onError:function(a){try{var t=a.data("src").replace(/_[0-9]{3}/i,"");$(a)[0].src=t}catch(a){}}});loadScript("https://static.sbsdlab.co.kr/common/jquery.lazy/plugins/jquery.lazy.iframe.min.js");}catch(e){}},500)}

function lazyerror(){loadScript("https://img.sbs.co.kr/news/common/pc/js/jquery-lazy/jquery.lazy.min.js"); setTimeout("loadLazyLoad()",1000);}


</script>

<script async="" src="https://static.sbsdlab.co.kr/common/jquery.lazy/jquery.lazy.min.js" onload="loadLazyLoad()" onerror="lazyerror()"></script>

	<div class="container" style="background:white">
	
			<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="main.do"><span class="hdn">홈</span></a></li>
		                        <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/covidNews.do');">뉴스&이슈 </a></li>
		                        <li><a href="infoBoard.do">보도자료</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
		                        <h3>뉴스</h3>
		                    </div>
		                </div>
		            </div>
	                 
	                <!--게시판 상단부-->
	                <div class="board_top">
	                    <div class="fl_l">
	                        <p class="bt_count" style="font-weight: bold;"> 총<strong>${paging.total }</strong>건</p>
	                    </div>
	                        
	                    <div class="fl_r">
		                    <form id="covidNewsSearch" action="/covidNews.do" method="get">
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
	                        <p style="font-size: 15px;">※ 뉴스제목 클릭 시 해당 언론사 기사 페이지로 이동합니다.</p>
	                
					<div class="board_list">
                        <table>
                            <caption><span class="hdn">제목 클릭시 게시물 해당 언론사 기사로 이동</span></caption>
                            <colgroup>
                                <col class="m_dp_n" style="width:300px;">
                                <col class="m_dp_n" style="width:600px;">
                                <col style="width:96px;">
                                <col class="m_dp_n" style="width:32px;">
                                <col class="m_dp_n" style="width:128px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="m_dp_n" scope="col"></th>
                                    <th scope="col">제목</th>
                                    <th class="m_dp_n" scope="col"></th>
                                    <th></th>
                                    <th scope="col">작성일</th>
                                </tr>
                            </thead>
                            <tbody>
                           	<c:forEach items="${list.clist}" var="news">
                            <c:if test="${news.company == '1'}">
                            	 <tr>
                                    <td class="m_dp_n">${news.thumbNail }</td>
                                   
                                    <td class="ta_l">
<%--                                         <a class="bl_link" href="javascript:void(0);" onclick="javascript:fn_boardView('/infoBoardView.do','3','32','3293', '' , '');">${info.info_title }</a> --%>
										<a class="bl_link" style="font-size: 20px; font-weight: bold;"  href="https://news.sbs.co.kr/${news.link}">${news.newsTitle }</a>
                               			<br>
                               			<p>${news.newsContents }</p>
                                    </td>
                                    <td class="m_dp_n"></td>
                                    <td></td>
                                    <td class="m_dp_n">${news.regDate }</td>
                                </tr>
                            
                            </c:if>
                            </c:forEach>
                            
                            </tbody>
                        </table>
                    </div>
                    <br>
                    
                    
	                <!--페이징-->
					
					<div class="paging">section pagination
			         <a href="<%= request.getContextPath() %>/covidNews.do?search_item=${param.search_item}&search_content=${param.search_content}" class="p_first"><i class="p_first"></i></a>
			        <c:choose>
			        	<c:when test="${paging.blockStart > 1 }">
			         		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockStart-1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:when>
			        	<c:otherwise>
			        		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockStart}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_prev"></a>
			        	</c:otherwise>
			        </c:choose>
			        <c:forEach begin="${paging.blockStart}" end="${paging.blockEnd}" var="page">
			         <a href="<%= request.getContextPath() %>/covidNews.do?cPage=${page}&search_item=${param.search_item}&search_content=${param.search_content}" class="num active"><span>${page}</span></a>
			        </c:forEach> 
			        
			        <c:choose>
			        	<c:when test="${paging.blockEnd+1 > paging.lastPage }">
			         		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockEnd}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:when>
			        	<c:otherwise>
			         		<a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.blockEnd+1}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_next"></a>
			        	</c:otherwise>
			   	   	</c:choose>
			 	   	 
			 	   	 <a href="<%= request.getContextPath() %>/covidNews.do?cPage=${paging.lastPage}&search_item=${param.search_item}&search_content=${param.search_content}" class="p_last"></a>
			      	<div class="btn_section" style="background-color:white">
			   	  	</div>
	                
	                
	                
	                
					</div>
				</div>
			</div> <!-- content end -->
		</div>
	</div> <!-- container end -->

<jsp:include page="/footer.do" />



