<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航界面</title>
<script src="${path }/outerjs/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/mycss/nav.css">
<script type="text/javascript">
	$(function() {
		$('.carousel').carousel({
			interval : 5000
		})
		$("ul li:eq(3)").click(function() {
			$(location).attr('href', '${path }/pict/ImagePage');
		})
		$("ul li:eq(4)").click(function() {
			$(location).attr('href', '${path }/pict/mapPage');
		})
	})
</script>
</head>
<body>
	<div class="container-fluid">

		<div class="header">
			<img alt="" src="${path }/images/head.png">
		</div>
		<nav class="navbar navbar-default">
		<div id="navMenu">
			<div id="navMenu-wrapper">
				<div id="logo">
					<img alt="" src="${path }/images/logo.png">
				</div>
				<ul id="navMenu-items">
					<div id="menuSelector"></div>
					<li class="navMenu-item"><span class="subtitle active">四季珞珈</span>
					</li>
					<li class="navMenu-item"><span class="subtitle">学术珞珈</span></li>
					<li class="navMenu-item"><span class="subtitle">食在珞珈</span></li>
					<li class="navMenu-item"><span class="subtitle">相册</span></li>
					<li class="navMenu-item"><span class="subtitle">评“珈”</span></li>
					<li class="navMenu-item"><span class="subtitle" id="login">登陆/注册</span>
					</li>
				</ul>
			</div>
		</div>
		</nav>
		<!-- bootstrap js插件轮播图 -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<!-- 中间的小圆圈 -->
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${path }/images/img1.jpg" alt="...">
					<!-- 添加描述信息 -->
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="${path }/images/img1.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="${path }/images/img1.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
			</div>

			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<script src="${path }/myjs/index.js"></script>
</body>
</html>