<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="slider" href="${path}/outercss/bootstrap-slider.min.css">
<script src="${path}/outerjs/bootstrap-slider.min.js"></script>
<script  type="text/javascript">
$(function(){
	$("ex1Slider").slider();
})
</script>


<body>
	<input id="ex1Slider" type="text" data-slider-id="ex1Slider" data-slider-min="0" data-slider-max="20" data-slider-step="1" data-slider-value="18"/>
<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
</body>
</html>