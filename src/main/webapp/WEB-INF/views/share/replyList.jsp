<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<div id="listReply3" style="background: #fbfcfd">
				 ${list[0].member_id}(<fmt:formatDate value="${list[0].reply_reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/>)
                <br>
                ${list[0].reply_content}	            		
				</div>
				<hr>
