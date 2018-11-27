<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子相册</title>
<script src="${path }/outerjs/stopExecutionOnTimeout.js"
	type="text/javascript"></script>
<script src="${path }/outerjs/mouse.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		window.season = "0";
		window.springImg = new Image();
		window.summerImg = new Image();
		window.autumnImg = new Image();
		window.winterImg = new Image();
		springImg.src = path+"/images/spring.png";
		summerImg.src = path+"/images/summer.png";
		autumnImg.src = path+"/images/autumn.png";
		winterImg.src = path+"/images/winter.png";
		var springStartIndex = 1;
		var summerStartIndex = 9;
		var autumnStartIndex = 20;
		var winterStartIndex = 25;
		function addPage(page, book) {
			var element = $('<div />', {});
			if (book.turn('addPage', element, page)) {
				if (page < 31) {
					element.html('<div class="gradient">');
					loadPage(page);
				}
			}
		}

		function loadPage(page) {

			var img = $('<img />');
			img.attr('src', '${path }/images/' + (page - 1) + '.png');
			var height = $(this).height();
			var width = $(this).width();
				img.on("load", function() {
					var container = $('.flipbook .p' + page);
					$(this).css({
						width : "100%",
						height : "auto"
					});
					img.appendTo($('.flipbook .p' + page));
				});
			

		}

		function moveWithSlider() {
			$("slider").on("slide", function(slideEvt) {
				var positon = sliderEvt.value;
				$(".flipbook").turn("page", positon);
			})

		}

		window.test = 0;
		function loadApp() {
			// Create the flipbook

			$('.flipbook').turn({
				// Width
				width : 1066,
				// Height
				height : 600,
				// Elevation
				elevation : 50,
				display : "single",
				// Enable gradients
				gradients : true,
				// Auto center this flipbook
				acceleration : true,
				autoCenter : true,
				pages : 30,
				when : {
					turned : function(event, page, view) {
						var book = $(this);
						var test = 0;
						var dir;
						var pageNum = page;
						if(pageNum < summerStartIndex + 1){
							season = "0";
						}else if(pageNum >= summerStartIndex + 1 && pageNum < autumnStartIndex + 1){
							season = "1";
						}else if(pageNum >= autumnStartIndex + 1 && pageNum < winterStartIndex + 1){
							season = "2";
						}else{
							season = "3";
						}
						book.turn('center');
					},
					missing : function(e, pages) {
						for (var i = 0; i < pages.length; i++)
							addPage(pages[i], $(this));
					}
				}
			});
		}

		// Load the HTML4 version if there's not CSS transform
		yepnope({
			test : Modernizr.csstransforms,
			yep : [ '${path }/outerjs/turn.js' ],
			nope : [ '${path }/outerjs/turn.html4.min.js' ],
			both : [ '${path }/outercss/basic.css' ],
			complete : loadApp
		});
		$(document).keydown(function(e) {
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
		moveWithSlider();
	})
</script>
</head>

<style type="text/css">
.flipbook .even .gradient {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-image: url(${path }/images/right-border.png);
	background-position: right top;
	background-repeat: repeat-y;
}

.flipbook .odd .gradient {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-image: url(${path }/images/left-border.png);
	background-position: left top;
	background-repeat: repeat-y;
}

.flipbook .shadow {
	-webkit-transition: -webkit-box-shadow 0.5s;
	-moz-transition: -moz-box-shadow 0.5s;
	-o-transition: -webkit-box-shadow 0.5s;
	-ms-transition: -ms-box-shadow 0.5s;
	-webkit-box-shadow: 0 0 20px #ccc;
	-moz-box-shadow: 0 0 20px #ccc;
	-o-box-shadow: 0 0 20px #ccc;
	-ms-box-shadow: 0 0 20px #ccc;
	box-shadow: 0 0 20px #ccc;
}

.flipbook .hard {
	background-image: url(${path }/images/cover.png);
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
}

#book-zoom {
	-webkit-transition: -webkit-transform 1s;
	-moz-transition: -moz-transform 1s;
	-ms-transition: -ms-transform 1s;
	-o-transition: -o-transform 1s;
	transition: transform 1s;
}


.flipbook .p30 {
	background-image: url(${path }/images/cover-back.png);
}

.animated {
	-webkit-transition: margin-left 0.2s ease-in-out;
	-moz-transition: margin-left 0.2s ease-in-out;
	-o-transition: margin-left 0.2s ease-in-out;
	-ms-transition: margin-left 0.2s ease-in-out;
	transition: margin-left 0.2s ease-in-out;
}
#slider {
	width: 80px;
	height: 40px;
	Z-index: 500;
}

canvas{
	background-image: url(${path}/testImage/nav.jpg);
}
</style>
<!-- <input id="slider" type="text" data-slider-id="slider" data-slider-min="0" data-slider-max="20" 
data-slider-step="1" data-slider-value="18"/> -->
<body>

	<div class="flipbook-viewport">
		<div class="container">
			<div class="flipbook">
				<div class="hard p1"></div>
				<div class="hard p30"></div>
			</div>
		</div>

		<canvas id="mouseCanvas"></canvas>
		<script src="${path}/outerjs/mouse.js" type="text/javascript"></script>
</body>
</html>