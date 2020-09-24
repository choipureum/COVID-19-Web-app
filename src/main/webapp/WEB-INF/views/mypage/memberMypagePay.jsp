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
.MypagePay{
   width:1100px;
   margin :40px auto;

}
h2{
   text-align: center;
}



</style>

<div class="MypagePay">

<br>
<h2> 결 제 목 록 </h2>
<br>
<hr>
   <!-- Table -->
   <div class="table-wrapper">
      <table>
         <thead>
            <tr style="border:1px;">
               <th>상품 이름</th>
               <th>결제 일자</th>
               <th>주소 </th>
        
            </tr>
         </thead>
         <tbody>
         <c:forEach var="list" items="${mypagePay }">
            <tr>
               <td>${list.goods_name }</td>
                 <td>${list.pay_day }</td>   
                 <td>${list.address }</td>   
            </tr>      
         </c:forEach>
         </tbody>
      </table>   
   </div>
</div>

<!-- footer 임포트 -->
<jsp:include page="/footer.do" />
</body>