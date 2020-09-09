<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko" class="fullscreen-bg">
<head>
	<title>Login | COVID-19</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="/resources/admin/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/admin/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/admin/vendor/linearicons/style.css">
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
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><h2>COVID-19</h2></div>
							</div>
							<form class="form-auth-small" action="/admin/adloginimpl.do" method="post">
								<!-- 아이디 -->
								<div class="form-group">
									<input type="text" class="form-control" id="adminId" name="adminId" placeholder="아이디를 입력하세요."/>
									<span id="checkMsg" class="checkMsg"></span>
								</div>
								<!-- 아이디 끝 -->
								
								<!-- 패스워드 -->
								<div class="form-group">
									<input type="password" class="form-control" id="password" name="password" placeholder="패스워드를 입력하세요."/>
								</div>
								<!-- 패스워드 끝 -->
								
								<div class="form-group clearfix">
									<label class="fancy-checkbox element-left">
										<input type="checkbox">
										<span>Remember me</span>
									</label>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
<!-- 						<div class="content text"> -->
<!-- 							<h1 class="heading">Free Bootstrap dashboard template</h1> -->
<!-- 							<p>by The Develovers</p> -->
<!-- 						</div> -->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>

</html>
