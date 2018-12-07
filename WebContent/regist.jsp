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
<title>注册</title>
<script type="text/javascript" src="${path }/myjs/validate.js"></script>
<script type="text/javascript" src="${path }/myjs/MD5.js"></script>
<link rel="stylesheet" href="${path }/mycss/regist.css">
</head>
<body>
	<div class="register-container container">
		<div class="row">
			<div class="register span6">
				<form action="pict/regist.action" method="post">
					<h2>
						JOIN <span class="red"><strong>US</strong></span>
					</h2>
					<div class="form-group has-feedback">
						<label class="userLabel"><s:text name="uname"></s:text></label> <input type="text"
							class="form-control" AUTOCOMPLETE="off" name="user.username"
							id="username" placeholder="<s:text name="uname"></s:text>" />
						<div class="error_sty">
							<label id="userblank">${fieldErrors.username[0] }</label>
						</div>
					</div>
					<div class="form-group has-feedback">
						<label class="nickLabel"><s:text name="name"></s:text></label> <input type="text"
							class="form-control" name="user.name" AUTOCOMPLETE="off"
							id="name" placeholder="<s:text name="name"></s:text>" />
						<div class="error_sty">
							<label id="nameblank">${fieldErrors.name[0] }</label>
						</div>
					</div>
					<div class="form-group has-feedback">
						<label class="ageLabel"><s:text name="age"></s:text></label> <input type="text"
							class="form-control" name="age" AUTOCOMPLETE="off" id="age"
							placeholder="<s:text name="age"></s:text>" maxlength="3" />
						<div class="error_sty">
							<label id="ageblank">${fieldErrors.age[0] }</label>
						</div>
					</div>
					<div class="form-group has-feedback">
						<div style="width: 15px; margin-left: 20px;">
							<select name="gender" id="gender" class="btn btn-default">
								<option value="男"><s:text name="gender1"></s:text>
								<option value="女"><s:text name="gender2"></s:text>
							</select>
						</div>
					</div>
					<div class="form-group has-feedback">
						<label class="pwdLabel"><s:text name="pwd"></s:text></label> <input type="password"
							class="form-control" name="password" id="pwd" AUTOCOMPLETE="off"
							placeholder="<s:text name="pwd"></s:text>" />
						<div class="error_sty">
							<label id="pwdblank">${fieldErrors.password[0] }</label>
						</div>
						<div class="pwdStrongth">
							<span class="cinnerprogress" id="innerprogress"></span>
						</div>
						<font id="strongthTip"></font>
					</div>
					<div class="form-group has-feedback">
						<label class="pwdsureLabel"><s:text name="cpwd"></s:text></label> <input AUTOCOMPLETE="off"
							type="password" class="form-control" name="password2" id="pwd2"
							placeholder="<s:text name="cpwd"></s:text>" />
						<div class="error_sty">
							<label id="pwdblank2">${fieldErrors.password2[0] }</label>
						</div>
					</div>
					<div class="form-group has-feedback">
						<label class="checkLabel"><s:text name="rCode"></s:text></label> <input type="text"
							class="form-control" name="checkCode" AUTOCOMPLETE="off"
							id="checkCode" placeholder="<s:text name="rCode"></s:text>" maxlength="4">
						<div align="left" style="margin-left: 15px;">
							<img src="pict/draw.action" id="image" alt="验证码" /> <a
								class="btn btn-danger btn-sm" onclick="refresh()"
								href="javascript:void(0)"><s:text name="tips2"></s:text></a>
						</div>
						<div class="error_sty">
							<label id="identblank">${fieldErrors.checkCode[0] }</label>
						</div>
					</div>
					<div class="form-group has-feedback">
						<input type="submit" class="btn btn-success" value='<s:text name="register"></s:text>' /> <br>
						<br> <a href="pict/LoginPage"
							class="login btn btn-primary btn-lg active btn-sm glyphicon glyphicon-link"
							role="button"><s:text name="tips3"></s:text></a> <br> <span id="msg"></span>
						<div class="error_sty">
							<label id="subblank"></label>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script type="text/javascript" src="${path }/myjs/regist.js"></script>
</body>

</html>

