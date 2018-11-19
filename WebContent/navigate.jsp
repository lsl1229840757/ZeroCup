<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航界面</title>
<script type="text/javascript" src="outerjs/jquery-3.3.1.js"></script>
<script src='outerjs/jquery-ui.min.js'></script>
<script src='myjs/index.js'></script>
<link rel="stylesheet" type="text/css" href="mycss/style.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
</head>
<body>    
<div class="container-fluid">                                                                      
	<div id="navMenu">
	    <div id="navMenu-wrapper">
	    	<ul id="navMenu-items">
	        	<div id="menuSelector"></div>
		        <li class="navMenu-item active">
		          <span class="item">四季珞珈</span>
		        </li>
		        <li class="navMenu-item">
		          <span class="item">学术珞珈</span>
		        </li>
		        <li class="navMenu-item">
		          <span class="item">食在珞珈</span>
		        </li>
		        <li class="navMenu-item">
		          <span class="item">相册</span>
		        </li>
		        <li class="navMenu-item">
		          <span class="item">评“珈”</span>
		        </li>
		        <li class="navMenu-item">
		          <span class="item" id="login">登陆/注册</span>
		        </li>
	        </ul>
		</div>
	</div>
	<div class="slide"></div>
</div>
</body>
</html>