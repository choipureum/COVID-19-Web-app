<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  
<jsp:include page="/header.do" />

<script type="text/javaScript" language="javascript">

function fn_search(pageNo){
	$("#pageIndex").val(pageNo);
	fn_submit();
}

function fn_submit(){
	var frm = $("#form1");
	frm.attr("action", "/duBoardList.do");
	frm.submit();
}

//펼침메뉴를 눌렀을 경우 해당 seq번호로 게시글을 보여준다.
// function showView(seq){

// 	if ($('#'+seq+'p').html() != "" ){
// 		return;
// 	}
	
// 	$.ajax({
// 		type : 'post',
// 		dataType : 'html',
// 		url : '/ncvCmBoardView.do',
// 		data : {'seq':seq},
// 		success : function(html){
			
// 			var html1 = decodeURIComponent(html);
	
// 			html1 = html1.replace(/\+/g, " ");
		
// 			$('#'+seq+'p').html(html1);
// 			//$('#'+seq).append("<p id='"+seq+"p'>"+html1+"</p>");
// 		}
// 	});

// }

// 첨부파일 
// function fn_fileDown(name, path, seq){
// 	var frm = $("#form1");
// 	$("#file_path").val(path);
// 	$("#file_name").val(name);
// 	$("#ncv_file_seq").val(seq); 
	
// 	frm.attr("action", '/board/doFileDownload.do');
// 	frm.submit();
// }

</script>

<form name="form1" id="form1" method="post">
<input name="pageIndex" id="pageIndex" type="hidden" value="" />
<input type="hidden" id="ncv_file_seq" name="ncv_file_seq" value="" />
<input type="hidden" id="file_path" name="file_path" value="" />
<input type="hidden" id="file_name" name="file_name" value="" />
<input type="hidden" id="brdId" name="brdId" value="3" />
<input type="hidden" id="brdGubun" name="brdGubun" value="37" />
	<div class="container" style="background-color: white;"><!-- main_container -->
		<div>
			<div id="content" class="content">
				<div>
		            <div class="sub_top">
		                <div class="st_navigation">
		                    <ul>
		                        <li><a href="index.html"><span class="hdn">홈</span></a></li>
		                        <li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/infoBoard.do');">정보공유 & FAQ</a></li>
		                       <li><a href="faqBoard.do">FAQ</a></li>
		                    </ul>
		                </div>
		                <div class="st_title">
                             <div class="fl_l">
                                 <h3>FAQ</h3>
                             </div>
                         </div>
		            </div>
	      
	      			 <div class="tab_flt cnt2-2-2">
                      <ul>
                         <li style="width: 33.3%"><a href="/infoBoard.do"><span>정보공유</span></a></li>
                         <li class="on" style="width: 33.3%" ><a href="/faqBoard.do"><span>FAQ</span></a></li>
                         <li style="width: 33.3%"><a href="/noticeBoard.do"><span>공지사항</span></a></li>
                      </ul>
                    </div>
	      
	      
					<h4 class="s_title_1">병원체 정보</h4>
					<div class="faq_list">
					
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '1' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>

					<h4 class="s_title_1">증상</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '2' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">검사</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '3' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">치료 및 예방</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '4' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">접촉자 및 환자</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '5' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					<h4 class="s_title_1">격리 및 격리해제</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '6' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">격리입원치료비</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '7' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">의사환자 및 조사대상 유증상자 관리</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '8' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					
					<h4 class="s_title_1">청소 및 소독</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '9' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					<h4 class="s_title_1">임신과 출산 </h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '10' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					
					<h4 class="s_title_1">기타</h4>
					<div class="faq_list">
						<ul>
							<c:forEach items="${list.faqlist }" var="faq">
								<c:if test="${faq.faq_category == '11' }">
								
								<li>
									
									<a class="fl_q_n lt_l" onClick="showView('2252');">
										<span class="ico_q_n" >Q</span>
										<span class="fl_ttl" >${faq.faq_title }</span>
										<i></i>
									</a>
									
									<div class="fl_a_n lt_c">
										<!--글내용-->
<!-- 										<a target="_blank" href="shBoardViewadea.html?brdId=3&amp;brdGubun=37&amp;ncvContSeq=2252"  class="a_sha" title="공유하기">공유하기</a> -->
										<span class="ico_a_n">A</span>
										<div class="s_descript mgt0"  id="2252" >${faq.faq_content }
			                              	<p id="2252p" ></p>
										</div>
									<!--글내용-->
									<!--첨부파일-->
									
									</div>

									
									
								</li>
								</c:if>
							
							</c:forEach>
						</ul>
					</div>
					

				</div>
			</div>
		</div>
		
		</div>

</form>





<jsp:include page="/footer.do" />
