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
<link rel="stylesheet" type="text/css" href="${path }/mycss/login.css">
<script type="text/javascript" src="${path }/myjs/validate.js"></script>
<script type="text/javascript" src="${path }/myjs/MD5.js"></script>

</head>
<body>
	<div class="container">
		<div class="welcome"><b><s:text name="tips4"></s:text></b></div>
		<form action="pict/login" method="post" name="loginForm"
			class="col-xs-6" id="loginForm">
			<div class="form-group has-feedback">
				<label class="input_sty"><s:text name="uname"></s:text></label> <input type="text"
					class="form-control" AUTOCOMPLETE="off" name="user.username"
					id="username" placeholder="<s:text name="uname"></s:text>" />
				<div class="error_sty">
					<label id="userblank">${fieldErrors.username[0] }</label>
				</div>
			</div>
			<div class="form-group has-feedback">
				<label class="input_sty2"><s:text name="pwd"></s:text></label> <input type="password"
					class="form-control" AUTOCOMPLETE="off" name="user.password"
					id="pwd" placeholder="<s:text name="pwd"></s:text>" />
				<div class="error_sty">
					<label id="pwdblank">${fieldErrors.password[0] }</label>
				</div>
			</div>
			<div class="form-group has-feedback">
				<label class="checkLabel"><s:text name="rCode"></s:text></label> <input type="text"
					class="form-control" name="checkCode" AUTOCOMPLETE="off"
					id="checkCode" maxlength="4" placeholder="<s:text name="rCode"></s:text>"> <img
					src="pict/draw.action" id="image" alt="验证码" /> 
					<a onclick="refresh()" href="javascript:void(0)" class="btn btn-danger btn-sm"><s:text name="tips2"></s:text></a>
				<div class="error_sty">
					<label id="identblank">${fieldErrors.checkCode[0] }</label>
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-success" value=<s:text name="login"></s:text> id="sub" />
				<a href="pict/RegisterPage.action"
					class="btn btn-primary btn-lg active btn-sm glyphicon glyphicon-link"
					role="button"><s:text name="tips"></s:text></a><br> <span id="msg"></span>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="${path }/myjs/login.js"></script>
</body>
</html>

