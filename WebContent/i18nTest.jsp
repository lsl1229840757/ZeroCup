<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$("#changeLocale").change(function(){
				$("form").submit();
			}
		);
	});
</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/i18n" method="post">
<s:select id="changeLocale" name="locales" list="#{'zh_CN':'中文','en_US':'英文'}"></s:select>
</form>
<hr>
<s:text name="title"></s:text>
<s:text name="form.email"></s:text>
<s:text name="form.password"></s:text>
<s:text name="form.repassword"></s:text>
<s:text name="form.phone"></s:text>
<s:text name="form.submit"></s:text>
<s:debug></s:debug>
<a href="${pageContext.request.contextPath }/i18n2">页面2</a>
</body>
</html>