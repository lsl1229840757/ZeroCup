<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="outerjs/jquery-3.3.1.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/i18n" method="post">
<s:select id="changeLocale" name="locales" list="#{'zh_CN':'中文','en_US':'英文'}"></s:select>
</form>
sssss
<hr>
<s:text name="title"></s:text>
<s:text name="form.email"></s:text>
<s:text name="form.password"></s:text>
<s:text name="form.repassword"></s:text>
<s:text name="form.phone"></s:text>
<s:text name="form.submit"></s:text>
<s:debug></s:debug>
</body>
</html>