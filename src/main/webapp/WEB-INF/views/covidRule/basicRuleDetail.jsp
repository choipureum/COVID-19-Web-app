<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>
<div class="container" style="background:white"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="/main.do"><span class="hdn">홈</span></a></li>
		                        <li><a href="/basicRule.do">생활 속 거리 두기</a></li>		                        
		                        <li><a href="basicRule.do?boundary=2">공동체 수칙</a></li>
		                        
		                    </ul>
		                </div>
		                <div class="st_title">
		                    <div class="fl_l">
			                    
			                    <h3>공동체 수칙</h3>
			                    
		                    </div>
		                </div>
		            </div>
 
	                <!--게시글 보기-->
	                <c:set value="${basic.basic }" var="list"/>
                    <div class="board_view">
                      <div class="bv_top">
                                <div class="bv_ttl">
                                    <h4>${list.LFTITLE }</h4>
                                </div>
                                <div class="bv_category">
                                    <ul>
                                        <li><span class="bvc_ttl">담당 :</span><span class="bvc_detail">LFWRITER</span></li>
                                        <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail"><fmt:formatDate value="${list.LFDATE}" pattern="yyyy-MM-dd HH:mm:ss" /></span> </li>
                                        
                                        
                                    </ul>
                                </div>
                            </div>
                        
                            <div class="bv_content">
                                <div class="bvc_txt">
                                	<p>${list.LFCONTENT }</p>
<!--                                 	<p><img alt="" src="" style="height: 1403px; width: 992px" /><br /> &nbsp;</p>-->


							<p><u><strong>* 자세한 사항은 첨부된 자료 참조</strong></u></p>
                                </div>
                            </div>
                            
                            <br>
                             <!--첨부파일-->
                            <div class="bv_file">
                                <div class="bvf_ttl"><span>첨부파일 :</span></div>
                                <div class="bvf_lst">
                                    <ul>
                                	
                                        <li><a href="#" onclick="" class="bvf_link" title="파일 다운로드">코로나19 대응을 위한 방역관리자 업무 안내.pdf</a>
                                			 <a class="btn btn_xs btn_bvf_viewer" href="#"  onclick=""  title=" 바로보기 - 새창" ><i></i><span>바로보기</span></a>
                                		
                                		</li>
                                    
                                    </ul>
                                </div>
                            </div>
                            
                            <!--첨부파일-->
                        	
                        	<!--공공누리 유형-->
							



<div class="copykogl type1">
	<div class="copyimg"><span class="hdn">공공누리 제1유형</span></div>
	<p class="copytext">
		코로나바이러스감염증-19가 창작한 <strong>"코로나19 대응을 위한 생활 속 거리두기 방역관리자 업무 안내"</strong> 저작물은 공공누리의 <strong>제1유형 (출처표시, 상업적 이용가능, 변경 가능)</strong>에 따라 이용할 수 있습니다.<br />
		텍스트 데이터는 공공누리 유형조건에 따라 자유이용이 가능합니다. 단, 사진, 이미지, 일러스트, 동영상 등의 일부 자료는 코로나바이러스감염증-19가 저작권 전부를 갖고 있지 아니하므로, 자유롭게 이용하기 위해서는 반드시 해당 저작권자의 허락을 받으셔야 합니다.
	</p>
</div>


                        	<!--공공누리 유형//-->
                        </div>
                    <!--게시글 보기-->
                    <!--게시판 목록-->
                   		<div class="s_btn">
							<a href="javascript:history.back()" class="tag tag_lg tag_black"><span>목록</span></a>
                        </div>
				</div>
			</div>
		</div>
	</div>





<jsp:include page="/footer.do"/>