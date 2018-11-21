<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#goback{
	float: left;
	height: 100px;
    width: 100px;
}
html, body, #viewDiv {
    padding: 0;
    margin: 0;
    height: 100%;
    width: 100%;
 }
</style>
<link rel="stylesheet" href="https://js.arcgis.com/4.8/esri/css/main.css">
<script src="https://js.arcgis.com/4.8/"></script>
<script type="text/javascript" src="${path }/myjs/showNote.js"></script>
<script type="text/javascript">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="goback">回到武大</div>
<div id="viewDiv" class="right"></div>
</body>
</html>