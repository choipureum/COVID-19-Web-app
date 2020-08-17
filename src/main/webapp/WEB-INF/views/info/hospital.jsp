<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>





<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>

    <title>코로나19 선별진료소 및 국민안심병원 현황 맵</title>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
	<link rel="stylesheet" href="/resources/static/css/map.css">
	<script src="/resources/static/js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45b0498396b63bb10ab771a598a2d3c3&libraries=services,clusterer,drawing"></script>
	<script src="/resources/static/js/map.js"></script>
</head>
<body>
<div class="map_popup_wrap">
	
	<div class="mp_content">
		<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		<div class="side_wrap">
			<div id="menu_wrap">			
				<div class="mp_option" style="color:#fff; ">
					<div class="search" style="font-family:'Noto Sans KR', '맑은고딕';font-size:12px;">
						<span>진료소 검색 : &nbsp;&nbsp; </span><input type="text" style="width:50%;height:30px;"/><br>
					</div>
					<br><br>
					<div class="btn_area">
						<ul>
							<li><button class="btn btn_sm btn_blue" onclick="searchPlaces('국민안심병원')"><span>국민안심병원</span></button></li>
							<li><button class="btn btn_sm btn_blue" onclick="searchPlaces('선별진료소')"><span>선별진료소</span></button></li>
							<li><button class="btn btn_sm btn_blue" onclick="searchPlaces('검체채취가능')"><span>검체채취가능병원</span></button></li>
						</ul>
						
					</div>
					<form onsubmit="searchPlaces(); return false;">
						<div class="mpo_check">
							<div><a id="list_view_btn"><span>목록</span><em class="txt_open">보기</em><em class="txt_close">닫기</em></a></div>
							<div><a class="btn_reset" onclick="initPlacesList(true);return false;"><span>검색 초기화</span></a></div>
						</div>
					</form>
				</div>
				<div class="mp_place_list">
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="w_catch">
	<div class="wc_p t_dp_n m_dp_n"></div>
	<div class="wc_t p_dp_n m_dp_n"></div>
	<div class="wc_m p_dp_n t_dp_n"></div>
</div>
</body>
<script>


</script>

</html>

