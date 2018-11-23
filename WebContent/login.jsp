<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="mycss/login.css">
<script type="text/javascript" src="myjs/validate.js"></script>
<script type="text/javascript" src="myjs/MD5.js"></script>

</head>
<body>
	<div class="container">
		<div class="welcome"><b>欢迎登录</b></div>
		<form action="pict/login" method="post" name="loginForm"
			class="col-xs-6" id="loginForm">
			<div class="form-group has-feedback">
				<label class="input_sty">用户名</label> <input type="text"
					class="form-control" AUTOCOMPLETE="off" name="user.username"
					id="username" placeholder="用户名" />
				<div class="error_sty">
					<label id="userblank">${fieldErrors.username[0] }</label>
				</div>
			</div>
			<div class="form-group has-feedback">
				<label class="input_sty2">密码</label> <input type="password"
					class="form-control" AUTOCOMPLETE="off" name="user.password"
					id="pwd" placeholder="密码" />
				<div class="error_sty">
					<label id="pwdblank">${fieldErrors.password[0] }</label>
				</div>
			</div>
			<div class="form-group has-feedback">
				<label class="checkLabel">验证码</label> <input type="text"
					class="form-control" name="checkCode" AUTOCOMPLETE="off"
					id="checkCode" maxlength="4" placeholder="验证码"> <img
					src="pict/draw.action" id="image" alt="验证码" /> 
					<a onclick="refresh()" href="javascript:void(0)" class="btn btn-danger btn-sm">看不清，换一张</a>
				<div class="error_sty">
					<label id="identblank">${fieldErrors.checkCode[0] }</label>
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-success" value=立即登录 id="sub" />
				<a href="pict/RegisterPage.action"
					class="btn btn-primary btn-lg active btn-sm glyphicon glyphicon-link"
					role="button">还没有账号？立即注册</a><br> <span id="msg"></span>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="myjs/login.js"></script>
</body>
</html>

