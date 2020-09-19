<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="/resources/static/css/sharelist.css"/>

<div class="page-wrapper" style="display: block; overflow: auto;">
	<c:forEach items="${list.nlist }" var="list" varStatus="i">
	
		<li class="project_card reward_project_card">
		    <div class="project_card_inner">
		     	<a href="/share/detail.do?share_idx=${list.SHARE_IDX }" class="project_detail_link">
		        	<span class="project_thumbnail" style="background-image:url('/resources/upload/share/${list.RENAME_FILE}')"></span>
		        </a>
		        <div class="project_card_info">
		            <span class="screen_out">${list.SHARE_NAME }</span>
		            <h3 class="project_name">
		<!--        <a href="/share/detail.do" class="project_detail_link"> -->
		                  ${list.SHARENAME }
		                </a>
		            </h3>
		            <p class="project_simple_text">
		                <span class="screen_out">프로젝트 설명</span>
		                ${list.SIMPLEINFO }
		            </p>
		<span class="user_profile">
		    <span class="img_profile clear_empty_picture">
		                <img src="/uploads/member/profile/MEMBER_20200804093209983.png" alt="profile">
		    </span>
		    <span class="txt_name">사단법인 희망래일</span>
		</span>
		            <span class="project_category">
		                <span class="screen_out">카테고리</span>
		               	${list.FEIELD }
		            </span>
		        </div>
		        <div class="project_state">
		                    <span class="total_amount">
		                        <span class="screen_out">현재 참여금액</span>
		                        ${list.PAY }
		                    </span>
		                    <div class="project_card_graph">
		                        <span class="screen_out">참여율</span>
		                                <span class="bar_graph" style="width:${list.PAYPER };"></span>
		                        <span class="invest_rate">
		                            ${list.PAYPER }
		                        </span>
		                    </div>
		                            <span class="funding_type">무조건 리워드</span>
		        </div>
		    </div>
		</li>
	</c:forEach>
	
