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
	<link rel="apple-touch-icon" sizes="76x76" href="/resources/admin/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/resources/admin/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="/resources/admin/img/logo-dark.png" alt="Klorofil Logo" class="imglogo logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="텍스트 입력...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">검색</button></span>
					</div>
				</form>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="/resources/admin/img/user.png" class="img-circle" alt="Avatar"> <span>Admin</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>프로필</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>메세지</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>설정</span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span>로그아웃</span></a></li>
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
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class=""></i> <span>게시판 관리</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="#" class="">커뮤니티</a></li>
									<li><a href="#" class="">쇼핑</a></li>
									<li><a href="#" class="">QnA</a></li>
								</ul>
							</div>
						</li>
						<li><a href="#" class=""><i class=""></i> <span>게시판 관리</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>쇼핑 관리</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>QnA</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li>
						<li><a href="#" class=""><i class=""></i> <span>추후 수정</span></a></li>
					</ul>
				</nav>
			</div>
		</div>