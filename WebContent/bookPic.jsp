<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子相册</title>
<script src="${path }/outerjs/stopExecutionOnTimeout.js" type="text/javascript"></script>
<script src="${path }/outerjs/mouse.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	function loadApp() {
		// Create the flipbook
		$('.flipbook').turn({
				// Width
				width:922,
				// Height
				height:600,
				// Elevation
				elevation: 50,
				// Enable gradients
				gradients: true,
				// Auto center this flipbook
				autoCenter: true
		});
	}
	// Load the HTML4 version if there's not CSS transform
	yepnope({
		test : Modernizr.csstransforms,
		yep: ['outerjs/turn.js'],
		nope: ['outerjs/turn.html4.min.js'],
		both: ['outercss/basic.css'],
		complete: loadApp
	});
	$(document).keydown(function(e){
		var previous = 37, next = 39;
		switch (e.keyCode) {
			case previous:
				$('.flipbook').turn('previous');
			break;
			case next:
				$('.flipbook').turn('next');
			break;
		}
	});
})
</script>
</head>
<body>

<div class="flipbook-viewport">
	<div class="container">
		<div class="flipbook">
			<div style="background-image:url(images/a.jpg)"></div>
			<div style="background-image:url(images/b.jpg)"></div>
			<div style="background-image:url(images/c.jpg)"></div>
			<div style="background-image:url(images/d.jpg)"></div>
			<div style="background-image:url(images/e.jpg)"></div>
			<div style="background-image:url(images/f.jpg)"></div>
			<div style="background-image:url(images/g.jpg)"></div>
			<div style="background-image:url(images/h.jpg)"></div>
			<div style="background-image:url(images/k.jpg)"></div>
			<div style="background-image:url(images/l.jpg)"></div>
		</div>
	</div>
</div>
<canvas id="mouseCanvas"></canvas>
</body>
</html>