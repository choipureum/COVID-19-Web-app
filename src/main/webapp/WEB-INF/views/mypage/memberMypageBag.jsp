<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- header 임포트 -->
<jsp:include page="/header.do" />
<style type="text/css">
table, th {
   text-align: center;
}
tr td:nth-child(2) {
   text-align: left;
}
tr td:not(:first-child), tr th:not(:first-child) {
   border-left: 1px solid white;
}

table{ width:100%; }

select{ height:35px; width: 100px; }
tr{ height: 50px; width:100%; }

td{ height: 50px; border-bottom:3px solid #000; }
td:first-of-type{ border-right:1px solid #000; width: 120px; }
table thead th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: darkgray;
    color:white;
}
.mypagedogout{
   width:1100px;
   margin :40px auto;
   line-height: 16px;
}
h5,h2{
   text-align: center;
}
th{
   height: 30px;
}


#btnWrite{
    height: 60px; 
    width: 100px; 
   color:white;
   border: solid 1px gray;
   transition: all 0.5s;
   float :right;
}
#btnWrite:hover {
   background-color: white;
   color:black;
}

</style>

<div class="mypagedogout">

<br>
<h2> M Y B A G </h2>
<br>
<hr>
	<!-- Table -->
	<div class="table-wrapper">
		<table>
			<thead>
				<tr style="border:1px;">
					<th>사진</th>
					<th>이름</th>
					<th>날짜</th>
					<th>가격</th>
					<th>뭐 또 있나?</th>           
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${dogout }" var="dogout">
				<tr>
					<td>
					<img  id="img" src="/upload/${ dogout.dog_stored_file_name }" alt="" style="width:100px;height:70px;border-radius:20px;"/></td>			                
			        <td>${dogout.dogname }</td>	
			        <td>${dogout.dogkind }</td>
			        <td>${dogout.doggender }</td>	
			        <td>${dogout.outdate }</td>
				</tr>		
		</c:forEach>
			</tbody>
		</table>	
	</div>
</div>

<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>