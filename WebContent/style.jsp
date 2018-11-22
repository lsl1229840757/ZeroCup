<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航界面</title>
<script src="${path }/outerjs/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/mycss/style.css">
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
		<div class="header">
			<img alt="" src="images/head.png">
		</div>
		<div id="navMenu">
			<div id="navMenu-wrapper">
				<div id="logo">
					<img alt="" src="images/logo.png">
				</div>
				<ul id="navMenu-items">
					<div id="menuSelector"></div>
					<li class="navMenu-item"><span class="item active">四季珞珈</span>
					</li>
					<li class="navMenu-item"><span class="item">学术珞珈</span></li>
					<li class="navMenu-item"><span class="item">食在珞珈</span></li>
					<li class="navMenu-item"><span class="item">相册</span></li>
					<li class="navMenu-item"><span class="item">评“珈”</span></li>
					<li class="navMenu-item"><span class="item" id="login">登陆/注册</span>
					</li>
				</ul>
			</div>
		</div>
		</nav>
		<div class="slide"> 
			<img alt="" src="images/img1.jpg">
			<div class="circle hit" style="margin-left: 20px;"></div>
			<div class="circle" style="margin-left: 50px;"></div>
			<div class="circle" style="margin-left: 80px;"></div>
		</div>
	</div>
	<script src="${path }/myjs/index.js"></script>
	<script src="${path }/myjs/index.js"></script>
	<script type="${path }/text/javascript" src="outerjs/star.js"></script>
</body>
</html>