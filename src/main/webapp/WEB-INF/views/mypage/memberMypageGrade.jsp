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
<div>회원에게 드리는 특별 혜택</div>
<br>
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

			</thead>
			<tbody>

				<tr>
					<td>구매등급</td>
					<td><img src="<c:url value='/resources/static/image/bronze.JPG'/>"></td>
					<td><img src="<c:url value='/resources/static/image/silver.JPG'/>"></td>
					<td><img src="<c:url value='/resources/static/image/gold.JPG'/>"></td>
					<td><img src="<c:url value='/resources/static/image/vip.JPG'/>"></td>
				</tr>
				<tr>
					<td>등급할인</td>
					<td>1%</td>
					<td>2%</td>
					<td>3%</td>
					<td>5%</td>
				</tr>	
			</tbody>
		</table>
		
		<br>
		
		<table>
			<tr>
				<td rowspan = "6">N O T I C E </td>
				<td colspan = "6" style="text-align: left;">* 매월 혜택이 변경 될 수도 있습니다.</td>

			</tr>
			<tr style="text-align: left;">
				<td>* 등급 할인은 회원 기준으로 할인율에 따라 적용 됩니다. </td>
			</tr>
			<tr style="text-align: left;">
				<td>* 등급할인은 1% ~ 5% 까지 등급별로 가능합니다. </td>
			</tr>
			<tr style="text-align: left;">
				<td>* 여기는 COVID - 19 홈페이지 등급확인 페이지 입니다</td>
			</tr>
			<tr style="text-align: left;">
				<td>* 현재 등급을 확인해 주세요! </td>
			</tr>

			
		</table>	
	</div>
</div>



























<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>