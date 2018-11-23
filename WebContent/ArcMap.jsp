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
 #danmu{
	position: absolute;
  font-size: 30px;
  right: 0;
  top:30%;
  z-index: 1;
 }
</style>
<link rel="stylesheet" href="https://js.arcgis.com/4.8/esri/css/main.css">
<script src="https://js.arcgis.com/4.8/"></script>
<script type="text/javascript" src="${path }/myjs/showNote.js"></script>
<script type="text/javascript">
</script>
<link rel="stylesheet" href="${path }/mycss/arcmap.css">
<script type="text/javascript">


</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>地图</title>
</head>
<body>
<button id="back" class='btn btn-primary btn-lg'>回到武大</button>
<div id="danmu"></div>
<div id="viewDiv" class="right"></div>
</body>
</html>