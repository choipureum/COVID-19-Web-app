<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!doctype html>
<html lang="ko">

<head>
	<title>COVID-19 | Admin</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="/resources/admin/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/admin/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/admin/vendor/linearicons/style.css">
	<link rel="stylesheet" href="/resources/admin/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="/resources/admin/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="/resources/admin/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="/resources/static/image/header/ROK.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/resources/static/image/header/ROK.png">

	<!-- Javascript -->
	<script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/admin/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="/resources/admin/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="/resources/admin/vendor/chartist/js/chartist.min.js"></script>
	<script src="/resources/admin/scripts/klorofil-common.js"></script>



</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="/admin/admain.do"><img src="/resources/admin/img/covidlogo.png" alt="Logo" class="imglogo logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">	
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-home"></i> <span>홈페이지 이동</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="/main.do">코로나-19 종합관리센터</a></li>
								<li><a href="https://news.naver.com/">네이버 뉴스</a></li>
								<li><a href="https://news.daum.net/">다음 뉴스</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="/resources/admin/img/images.jpg" class="img-circle" alt="Avatar"> <span>ADMIN</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="/admin/adlogin.do"><i class="lnr lnr-exit"></i> <span>로그아웃</span></a></li>
							</ul>
						</li>
<!-- 						<li>
							<a class="update-pro" href="https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li>
							<a href="#subPages1" data-toggle="collapse" class="collapsed"><i class=""></i> <span>COVID-19</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages1" class="collapse ">
								<ul class="nav">
									<li><a href="/admin/adconfirmed.do" class="">확진자 등록</a></li>
<!-- 									<li><a href="#" class="">추후 수정</a></li> -->
<!-- 									<li><a href="#" class="">추후 수정</a></li> -->
								</ul>
							</div>
						</li>
						<li>
							<a href="#subPages2" data-toggle="collapse" class="collapsed"><i class=""></i> <span>게시판 관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages2" class="collapse ">
								<ul class="nav">
									<li><a href="/admin/adboard.do" class="">정보공유</a></li>
									<li><a href="/admin/adshrelist.do" class="">쇼핑</a></li>
									<li><a href="/admin/adfaq.do" class="">FAQ</a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="#subPages3" data-toggle="collapse" class="collapsed"><i class=""></i> <span>사용자 관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages3" class="collapse ">
								<ul class="nav">
									<li><a href="/admin/aduserlist.do" class="">회원 상세정보</a></li>
<!-- 									<li><a href="/admin/adseller.do" class="">판매자 관리</a></li> -->
<!-- 									<li><a href="#" class="">추후 수정</a></li> -->
								</ul>
							</div>
						</li>
<!-- 						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li> -->
<!-- 						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li> -->
					</ul>
				</nav>
			</div>
		</div>