<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- header 임포트 -->
<jsp:include page="/header.do" />


<style type="text/css">
table, th {
   text-align: center;
   padding :15px 5px 10px 5px;
   border: 1px solid #ccc;
   line-height: 1.5;
}
td{
	padding: 15px 5px 10px 5px;
}

</style>


<!-- css 만지는중 -->
<style type="text/css">
.Gradecontainer{
   width:800px;
   margin :40px auto;
   line-height: 16px;
}

table{ width:100%; }
table thead th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: darkgray;
    color:white;
}

select{ height:35px; width: 100px; }


</style>

</head>




<body>
<div class="Gradecontainer">

<br>
<h2> E V E N T </h2>
<br>
<hr>
	<!-- Table -->
	<div class="Gradetable">
		<table>
			<thead>
				<tr style="border:1px;">
					<th>구분</th>
					<th>BRONZE</th>
					<th>SILVER</th>
					<th>GOLD</th>
					<th>VIP</th>           
				</tr>
				<tr>
					<td>구매등급</td>

					<td><img src="<c:url value='/resources/static/image/bronze.JPG'/>"></td>
					<td><img src="<c:url value='/resources/static/image/silver.JPG'/>"></td>
					<td><img src="<c:url value='/resources/static/image/gold.JPG'/>"></td>
					<td><img src="<c:url value='/resources/static/image/vip.JPG'/>"></td>
			</thead>
			<tbody>

				<tr>
					<td></td>
					<td></td>

				</tr>		

			</tbody>
		
		
		
		
		
		
		</table>	
	</div>
</div>



























<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>