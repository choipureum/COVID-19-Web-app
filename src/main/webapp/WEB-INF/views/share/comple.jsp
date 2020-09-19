<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.do"/>
<script>
$(document).ready(function(){
	alert("결제가 완료되었습니다");
});


</script>

<div class="container">

<h1 class="h1">결제가 완료되었습니다!</h1>

</div>

<jsp:include page="/footer.do" />