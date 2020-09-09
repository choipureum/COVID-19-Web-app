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
	<style>

	/*길 표시하기*/
		.dot {overflow:hidden;float:left;width:12px;height:12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/mini_circle.png');}    
		.dotOverlay {position:relative;bottom:10px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;font-size:15px;padding:5px;background:#fff;}
		.dotOverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}    
		.number {font-weight:bold;color:#ee6152;}
		.dotOverlay:after {content:'';position:absolute;margin-left:-6px;left:50%;bottom:-8px;width:11px;height:8px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white_small.png')}
		.distanceInfo {position:relative;top:5px;left:5px;list-style:none;margin:0;}
		.distanceInfo .label {display:inline-block;width:50px;}
		.distanceInfo:after {content:none;}
		
	/*카테고리 표시*/
		#category {position:absolute;display:none;bottom:450px;right:80px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2; }
		#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
		#category li.on {background: #eee;}
		#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
		#category li:last-child{margin-right:0;border-right:0;}
		#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
		#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
		#category li .bank {background-position: -10px 0;}
		#category li .mart {background-position: -10px -36px;}
		#category li .pharmacy {background-position: -10px -72px;}
		#category li .oil {background-position: -10px -108px;}
		#category li .cafe {background-position: -10px -144px;}
		#category li .store {background-position: -10px -180px;}
		#category li.on .category_bg {background-position-x:-46px;}
	</style>
</head>
<body>
<div class="map_popup_wrap" id="map_popup_wrap">
	<div class="mp_content" id="mp_content">
		<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		<ul id="category">
	        <li id="BK9" data-order="0"> 
	            <span class="category_bg bank"></span>
	            은행
	        </li>       
	        <li id="MT1" data-order="1"> 
	            <span class="category_bg mart"></span>
	            마트
	        </li>  
	        <li id="PM9" data-order="2"> 
	            <span class="category_bg pharmacy"></span>
	            약국
	        </li>  
	        <li id="OL7" data-order="3"> 
	            <span class="category_bg oil"></span>
	            주유소
	        </li>  
	        <li id="CE7" data-order="4"> 
	            <span class="category_bg cafe"></span>
	            카페
	        </li>  
	        <li id="CS2" data-order="5"> 
	            <span class="category_bg store"></span>
	            편의점
	        </li>      
    </ul>
		<div class="side_wrap">
			<div id="menu_wrap">		
		
				<div class="mp_option" style="color:#fff;font-family:'Noto Sans KR', '맑은고딕';">	
				<span style="font-size:14px;">코로나19-종합관리 : Map Service</span><br><br>
				
				<form onsubmit="searchPlaces(); return false;">						
					<div class="search" style="font-size:12px;display:flex; text-align:right;margin:10px 0 0 0;">											
							<input id="keyword" type="text" placeholder="병원검색" style="width:50%;height:30px;" onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}"/>												
							<input type="submit" value="" style="all:unset; background:url(/static/image/header/ico_search.png) no-repeat center;width:30px;height:30px; "/>
						<br>	
								
					</div>
					</form>
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
	
		<!-- 서브메뉴 -->
		<div class="SubOptionBar" style="position:fixed; right:0; top:0; z-index:999; padding:35px 40px;">
				<div class="menu_sub" style="position:relative; padding-top:10px; width:30px;"> 
					<div class="btn_area2">						
						<ul>
							<li><button class="btn btn_sm btn_red" onclick="mapBtnTglSub(1)" ><span>일반 모드</span><img src="/static/image/map/ico_default.png" style="width:30px;height:30px; color:white;"/></button></li>
							<li><button class="btn btn_sm btn_nh" onclick="mapBtnTglSub(2)" ><span>측정 모드</span><img src="/static/image/map/ico_placeholder.png" style="width:30px;height:30px; color:white;"/></button></li>
							<li><button class="btn btn_sm btn_nh" onclick="mapBtnTglSub(3)"><span>로드 모드</span><img src="/static/image/map/ico_road.png" style="width:30px;height:30px; color:white;"/></button></li>
							<li><button class="btn btn_sm btn_nh" onclick="mapBtnTglSub(4)"><span>주변 검색</span><img src="/static/image/map/ico_shop.png" style="width:30px;height:30px; color:white;"/></button></li>
						</ul>							
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
//로딩시 일반모드
$(document).ready(function(){
	mapBtnTglSub(1);
	
});

/*서브메뉴 색상*/
function mapBtnTglSub(sw) {
	var btn = $('.menu_sub .btn_area2 > ul > li .btn');
	btn.addClass('btn_nh');
	
	btn.click(function(){
		btn.removeClass('btn_red');
		btn.addClass('btn_nh');
		
		$(this).addClass('btn_red');
		$(this).removeClass('btn_nh');
	});
	//일반모드
	if(sw==1){
		//코로나맵 거리 계산 이벤트 종료
		deleteClickLine();
		deleteCircleDot();
		deleteOverlay();
		kakao.maps.event.removeListener(map, 'click', locStart);
		kakao.maps.event.removeListener(map, 'mousemove', locMove);
		kakao.maps.event.removeListener(map, 'rightclick', locEnd);
		kakao.maps.event.removeListener(map, 'rightclick', locEnd);
		
	}
	//측정모드
	else if(sw==2){
		
		//코로나맵 거리 측정 시작		
		kakao.maps.event.addListener(map, 'click', locStart);
		kakao.maps.event.addListener(map, 'mousemove', locMove);
		kakao.maps.event.addListener(map, 'rightclick', locEnd);
		kakao.maps.event.addListener(map, 'rightclick', locEnd);
	}
	//로드 모드
	else if(sw==3){
		//코로나맵 거리 계산 이벤트 종료
		deleteClickLine();
		deleteCircleDot();
		deleteOverlay();
		kakao.maps.event.removeListener(map, 'click', locStart);
		kakao.maps.event.removeListener(map, 'mousemove', locMove);
		kakao.maps.event.removeListener(map, 'rightclick', locEnd);
		kakao.maps.event.removeListener(map, 'rightclick', locEnd);
				
	}
	//검색 모드
	else if(sw==4){

		//코로나맵 거리 계산 이벤트 종료
		deleteClickLine();
		deleteCircleDot();
		deleteOverlay();
		kakao.maps.event.removeListener(map, 'click', locStart);
		kakao.maps.event.removeListener(map, 'mousemove', locMove);
		kakao.maps.event.removeListener(map, 'rightclick', locEnd);
		kakao.maps.event.removeListener(map, 'rightclick', locEnd);
		//카테고리 함수 걸기
		categorySearch();
		$( '#category' ).toggle( 'slow' );
		//검색
	}
}

//거리계산 function//

	
	/*코로나 맵 거리 구하기: 측정 모드*/
	var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
	var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
	var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
	var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
	var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.
	
	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 선 그리기가 시작됩니다 그려진 선이 있으면 지우고 다시 그립니다
	var locStart=function(mouseEvent){
		 // 마우스로 클릭한 위치입니다 
	    var clickPosition = mouseEvent.latLng;
	
	    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
	    if (!drawingFlag) {
	
	        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
	        drawingFlag = true;
	        
	        // 지도 위에 선이 표시되고 있다면 지도에서 제거합니다
	        deleteClickLine();
	        
	        // 지도 위에 커스텀오버레이가 표시되고 있다면 지도에서 제거합니다
	        deleteDistnce();
	
	        // 지도 위에 선을 그리기 위해 클릭한 지점과 해당 지점의 거리정보가 표시되고 있다면 지도에서 제거합니다
	        deleteCircleDot();
	    
	        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
	        clickLine = new kakao.maps.Polyline({
	            map: map, // 선을 표시할 지도입니다 
	            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
	            strokeWeight: 5, // 선의 두께입니다 
	            strokeColor: 'red', // 선의 색깔입니다
	            strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid' // 선의 스타일입니다
	        });
	        
	        // 선이 그려지고 있을 때 마우스 움직임에 따라 선이 그려질 위치를 표시할 선을 생성합니다
	        moveLine = new kakao.maps.Polyline({
	            strokeWeight: 7, // 선의 두께입니다 
	            strokeColor: 'red', // 선의 색깔입니다
	            strokeOpacity: 0.7, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid' // 선의 스타일입니다    
	        });
	    
	        // 클릭한 지점에 대한 정보를 지도에 표시합니다
	        displayCircleDot(clickPosition, 0);
	
	            
	    } else { // 선이 그려지고 있는 상태이면
	
	        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
	        var path = clickLine.getPath();
	
	        // 좌표 배열에 클릭한 위치를 추가합니다
	        path.push(clickPosition);
	        
	        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
	        clickLine.setPath(path);
	
	        var distance = Math.round(clickLine.getLength());
	        displayCircleDot(clickPosition, distance);
	    }
	};
	    
	// 지도에 마우스무브 이벤트를 등록합니다
	// 선을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 선의 위치를 동적으로 보여주도록 합니다
	var locMove= function (mouseEvent) {
	
	    // 지도 마우스무브 이벤트가 발생했는데 선을 그리고있는 상태이면
	    if (drawingFlag){
	        
	        // 마우스 커서의 현재 위치를 얻어옵니다 
	        var mousePosition = mouseEvent.latLng; 
	
	        // 마우스 클릭으로 그려진 선의 좌표 배열을 얻어옵니다
	        var path = clickLine.getPath();
	        
	        // 마우스 클릭으로 그려진 마지막 좌표와 마우스 커서 위치의 좌표로 선을 표시합니다
	        var movepath = [path[path.length-1], mousePosition];
	        moveLine.setPath(movepath);    
	        moveLine.setMap(map);
	        
	        var distance = Math.round(clickLine.getLength() + moveLine.getLength()), // 선의 총 거리를 계산합니다
	            content = '<div class="dotOverlay distanceInfo"style="width:200px">총거리 <span class="number">' + distance + '</span>m'; // 커스텀오버레이에 추가될 내용입니다
	            content += '<hr> ';
	            content += '<span class="label">부분완료 : 마우스 왼쪽</span><br> ';
	            content += '<span class="label">지정완료 : 마우스 오른쪽</span></div> ';
	        // 거리정보를 지도에 표시합니다
	        showDistance(content, mousePosition);   
	    }             
	};                 
	
	// 지도에 마우스 오른쪽 클릭 이벤트를 등록합니다
	// 선을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면 선 그리기를 종료합니다
	var locEnd= function (mouseEvent) {
	
	    // 지도 오른쪽 클릭 이벤트가 발생했는데 선을 그리고있는 상태이면
	    if (drawingFlag) {
	        
	        // 마우스무브로 그려진 선은 지도에서 제거합니다
	        moveLine.setMap(null);
	        moveLine = null;  
	        
	        // 마우스 클릭으로 그린 선의 좌표 배열을 얻어옵니다
	        var path = clickLine.getPath();
	    
	        // 선을 구성하는 좌표의 개수가 2개 이상이면
	        if (path.length > 1) {
	
	            // 마지막 클릭 지점에 대한 거리 정보 커스텀 오버레이를 지웁니다
	            if (dots[dots.length-1].distance) {
	                dots[dots.length-1].distance.setMap(null);
	                dots[dots.length-1].distance = null;    
	            }
	
	            var distance = Math.round(clickLine.getLength()), // 선의 총 거리를 계산합니다
	                content = getTimeHTML(distance); // 커스텀오버레이에 추가될 내용입니다
	                
	            // 그려진 선의 거리정보를 지도에 표시합니다
	            showDistance(content, path[path.length-1]);  
	             
	        } else {
	
	            // 선을 구성하는 좌표의 개수가 1개 이하이면 
	            // 지도에 표시되고 있는 선과 정보들을 지도에서 제거합니다.
	            deleteClickLine();
	            deleteCircleDot(); 
	            deleteDistnce();
	
	        }
	        
	        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
	        drawingFlag = false;          
	    }  
	};    
	
	// 클릭으로 그려진 선을 지도에서 제거하는 함수입니다
	function deleteClickLine() {
	    if (clickLine) {
	        clickLine.setMap(null);    
	        clickLine = null;        
	    }
	}
	
	// 마우스 드래그로 그려지고 있는 선의 총거리 정보를 표시하거
	// 마우스 오른쪽 클릭으로 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 생성하고 지도에 표시하는 함수입니다
	function showDistance(content, position) {
	    
	    if (distanceOverlay) { // 커스텀오버레이가 생성된 상태이면
	        
	        // 커스텀 오버레이의 위치와 표시할 내용을 설정합니다
	        distanceOverlay.setPosition(position);
	        distanceOverlay.setContent(content);
	        
	    } else { // 커스텀 오버레이가 생성되지 않은 상태이면
	        
	        // 커스텀 오버레이를 생성하고 지도에 표시합니다
	        distanceOverlay = new kakao.maps.CustomOverlay({
	            map: map, // 커스텀오버레이를 표시할 지도입니다
	            content: content,  // 커스텀오버레이에 표시할 내용입니다
	            position: position, // 커스텀오버레이를 표시할 위치입니다.
	            xAnchor: 0,
	            yAnchor: 0,
	            zIndex: 3  
	        });      
	    }
	}
	
	// 그려지고 있는 선의 총거리 정보와 
	// 선 그리가 종료됐을 때 선의 정보를 표시하는 커스텀 오버레이를 삭제하는 함수입니다
	function deleteDistnce () {
	    if (distanceOverlay) {
	        distanceOverlay.setMap(null);
	        distanceOverlay = null;
	    }
	}
	//거리 표시 커스텀 오버레이 삭제
	function deleteOverlay(){
		$('.dotOverlay').remove();
	}
		
	// 선이 그려지고 있는 상태일 때 지도를 클릭하면 호출하여 
	// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 표출하는 함수입니다
	function displayCircleDot(position, distance) {
	
	    // 클릭 지점을 표시할 빨간 동그라미 커스텀오버레이를 생성합니다
	    var circleOverlay = new kakao.maps.CustomOverlay({
	        content: '<span class="dot"></span>',
	        position: position,
	        zIndex: 1
	    });
	
	    // 지도에 표시합니다
	    circleOverlay.setMap(map);
	
	    if (distance > 0) {
	        // 클릭한 지점까지의 그려진 선의 총 거리를 표시할 커스텀 오버레이를 생성합니다
	        var distanceOverlay = new kakao.maps.CustomOverlay({
	            content: '<div class="dotOverlay">거리 <span class="number">' + distance + '</span>m</div>',
	            position: position,
	            yAnchor: 1,
	            zIndex: 2
	        });
	
	        // 지도에 표시합니다
	        distanceOverlay.setMap(map);
	    }
	
	    // 배열에 추가합니다
	    dots.push({circle:circleOverlay, distance: distanceOverlay});
	}
	
	// 클릭 지점에 대한 정보 (동그라미와 클릭 지점까지의 총거리)를 지도에서 모두 제거하는 함수입니다
	function deleteCircleDot() {
	    var i;
	
	    for ( i = 0; i < dots.length; i++ ){
	        if (dots[i].circle) { 
	            dots[i].circle.setMap(null);
	        }
	
	        if (dots[i].distance) {
	            dots[i].distance.setMap(null);
	        }
	    }
	
	    dots = [];
	}
	
	// 마우스 우클릭 하여 선 그리기가 종료됐을 때 호출하여 
	// 그려진 선의 총거리 정보와 거리에 대한 도보, 자전거 시간을 계산하여
	// HTML Content를 만들어 리턴하는 함수입니다
	function getTimeHTML(distance) {
	
	    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
	    var walkkTime = distance / 67 | 0;
	    var walkHour = '', walkMin = '';
	
	    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
	    if (walkkTime > 60) {
	        walkHour = '<span class="number">' + Math.floor(walkkTime / 60) + '</span>시간 '
	    }
	    walkMin = '<span class="number">' + walkkTime % 60 + '</span>분'
	
	    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
	    var bycicleTime = distance / 227 | 0;
	    var bycicleHour = '', bycicleMin = '';
	
	    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
	    if (bycicleTime > 60) {
	        bycicleHour = '<span class="number">' + Math.floor(bycicleTime / 60) + '</span>시간 '
	    }
	    bycicleMin = '<span class="number">' + bycicleTime % 60 + '</span>분'
	
	    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
	    var content = '<ul class="dotOverlay distanceInfo">';
	    content += '    <li>';
	    content += '        <span class="label">총거리</span><span class="number">' + distance + '</span>m';
	    content += '    </li>';
	    content += '    <li>';
	    content += '        <span class="label">도보</span>' + walkHour + walkMin;
	    content += '    </li>';
	    content += '    <li>';
	    content += '        <span class="label">자전거</span>' + bycicleHour + bycicleMin;
	    content += '    </li>';
	    content += '</ul>'
	
	    return content;
	}

</script>

<!-- 카테고리별 검색 -->
<script>
function categorySearch(){
	
	var cateSW= document.getElementById("category").getAttribute('display');
	console.log(cateSW);
	
	
	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var CategoryplaceOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
	    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	    markers = [], // 마커를 담을 배열입니다
	    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
	 

	// 지도에 idle 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'idle', searchCategoryPlaces);

	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'Categoryplaceinfo_wrap';

	// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

	// 커스텀 오버레이 컨텐츠를 설정합니다
	CategoryplaceOverlay.setContent(contentNode);  

	// 각 카테고리에 클릭 이벤트를 등록합니다
	addCategoryClickEvent();

	// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
	function addEventHandle(target, type, callback) {
	    if (target.addEventListener) {
	        target.addEventListener(type, callback);
	    } else {
	        target.attachEvent('on' + type, callback);
	    }
	}

	// 카테고리 검색을 요청하는 함수입니다
	function searchCategoryPlaces() {
	    if (!currCategory) {
	        return;
	    }
	    
	    // 커스텀 오버레이를 숨깁니다 
	    CategoryplaceOverlay.setMap(null);

	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    ps.categorySearch(currCategory, CategoryplacesSearchCB, {useMapBounds:true}); 
	}

	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function CategoryplacesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
	        displayCategoryPlaces(data);
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

	    } else if (status === kakao.maps.services.Status.ERROR) {
	        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
	        
	    }
	}

	// 지도에 마커를 표출하는 함수입니다
	function displayCategoryPlaces(places) {

	    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
	    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
	    var order = document.getElementById(currCategory).getAttribute('data-order');

	    

	    for ( var i=0; i<places.length; i++ ) {

	            // 마커를 생성하고 지도에 표시합니다
	            var marker = CategoryaddMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	            (function(marker, place) {
	                kakao.maps.event.addListener(marker, 'click', function() {
	                    displayCategoryPlaceInfo(place);
	                });
	            })(marker, places[i]);
	    }
	}

	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function CategoryaddMarker(position, order) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });

	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

	    return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}

	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayCategoryPlaceInfo (place) {
	    var content = '<div class="placeinfo">' +
	                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   

	    if (place.road_address_name) {
	        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	    }  else {
	        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	    }                
	   
	    content += '    <span class="tel">' + place.phone + '</span>' + 
	                '</div>' + 
	                '<div class="after"></div>';

	    contentNode.innerHTML = content;
	    CategoryplaceOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
	    CategoryplaceOverlay.setMap(map);  
	}


	// 각 카테고리에 클릭 이벤트를 등록합니다
	function addCategoryClickEvent() {
	    var category = document.getElementById('category'),
	        children = category.children;

	    for (var i=0; i<children.length; i++) {
	        children[i].onclick = onClickCategory;
	    }
	}

	// 카테고리를 클릭했을 때 호출되는 함수입니다
	function onClickCategory() {
	    var id = this.id,
	        className = this.className;

	    CategoryplaceOverlay.setMap(null);

	    if (className === 'on') {
	        currCategory = '';
	        changeCategoryClass();
	        removeMarker();
	    } else {
	        currCategory = id;
	        changeCategoryClass(this);
	        searchPlaces();
	    }
	}

	// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
	function changeCategoryClass(el) {
	    var category = document.getElementById('category'),
	        children = category.children,
	        i;

	    for ( i=0; i<children.length; i++ ) {
	        children[i].className = '';
	    }

	    if (el) {
	        el.className = 'on';
	    } 
	} 
}

</script>

</html>

