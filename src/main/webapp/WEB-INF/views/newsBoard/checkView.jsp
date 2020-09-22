<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="board_view">

<%-- /resources/upload/news/${data.flist[0].RENAME_FILE_NAME} --%>
<!--                       <div> -->
                     
<!--                                 <div> -->
<%--                                     <p style="font-weight: bold">${data.factCheck.fc_title}</p> --%>
<!--                                 </div> -->
<!--                                 <div> -->
<!--                                     <ul> -->
<%--                                         <li><span class="bvc_ttl">게시글 번호 :</span><span class="bvc_detail"> ${data.factCheck.fc_idx}</span> --%>
<%--                                         <li><span class="bvc_ttl">작성자 :</span><span class="bvc_detail">${data.factCheck.fc_writer}</span></li> --%>
<%--                                         <li><span class="bvc_ttl">작성일 :</span><span class="bvc_detail">${data.factCheck.fc_regDate}</span> </li> --%>
                                        
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                             </div> -->
                        
                    <div class="bv_content">
                            <div class="bvc_txt">
                                <p>&nbsp;${data.factCheck.fc_contents}</p>
                             		   이미지
                             	<c:forEach items="${data.flist}" var="file">   
                                	<img src="/resources/upload/news/${file.RENAME_FILE_NAME}" />
                               </c:forEach>		 	
                                	
                                <hr>
                                  <c:forEach items="${data.flist}" var="file">
							         <button type="button" 
							               onclick="downloadFile('${file.ORIGIN_FILE_NAME}','${file.RENAME_FILE_NAME}')">
							         ${file.ORIGIN_FILE_NAME}</button>
							      </c:forEach>
                                </div>
                            </div>
					</div>

<script type="text/javascript">

function downloadFile(ofname, rfname){
    location.href = "/checkDownload.do?"
         +"ofname="+ofname
         +"&rfname="+rfname
         
<%--  	location.href = "<%=request.getContextPath()%>/resources/upload/"+rfname; --%>

}

</script>
</body>
</html>