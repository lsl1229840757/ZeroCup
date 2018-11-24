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
	function addPage(page, book) {
		var element = $('<div />', {});
		if (book.turn('addPage', element, page)) {
			if (page<28) {
				element.html('<div class="gradient">');
				loadPage(page);
			}
		}
	}
	
	function loadPage(page) {

		var img = $('<img />');
		img.on("load",function() {
			var container = $('.flipbook .p'+page);
			  $(this).css({
            width: '100%',
            height: '100%'
        });
			img.appendTo($('.flipbook .p'+page));
		});

		img.attr('src', '${path }/images/' +  (page-2) + '.jpg');

	}
	
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
				acceleration:true,
				autoCenter: true,
				pages:18,
				when:{
					
					missing: function (e, pages) {
						for (var i = 0; i < pages.length; i++)
							addPage(pages[i], $(this));
					}
				}
		});
	}

	// Load the HTML4 version if there's not CSS transform
	yepnope({
		test : Modernizr.csstransforms,
		yep: ['${path }/outerjs/turn.js'],
		nope: ['${path }/outerjs/turn.html4.min.js'],
		both: ['${path }/outercss/basic.css'],
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

<style type="text/css">
	.flipbook .even .gradient{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background-image:url(${path }/images/right-border.png);
	background-position:right top;
	background-repeat: repeat-y;
}

.flipbook .odd .gradient{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
	background-image:url(${path }/images/left-border.png);
	background-position:left top;
	background-repeat: repeat-y;
}

.flipbook .shadow{
	-webkit-transition: -webkit-box-shadow 0.5s;
	-moz-transition: -moz-box-shadow 0.5s;
	-o-transition: -webkit-box-shadow 0.5s;
	-ms-transition: -ms-box-shadow 0.5s;

	-webkit-box-shadow:0 0 20px #ccc;
	-moz-box-shadow:0 0 20px #ccc;
	-o-box-shadow:0 0 20px #ccc;
	-ms-box-shadow:0 0 20px #ccc;
	box-shadow:0 0 20px #ccc;
}

.flipbook .hard {
	background-image:url(${path }/images/covers.jpg);
	background-size: cover;  
	-webkit-background-size: cover; 
	-moz-background-size: cover; 
	-o-background-size: cover; 
}

.flipbook .p2{
	background-position:-471px 0;
	-webkit-background-position:-471px 0;
	-moz-background-position:-471px 0;
	-o-background-position:-471px 0;
}
#book-zoom{
	-webkit-transition: -webkit-transform 1s;
	-moz-transition: -moz-transform 1s;
	-ms-transition: -ms-transform 1s;
	-o-transition: -o-transform 1s;
	transition: transform 1s;
}

.animated{
	-webkit-transition:margin-left 0.2s ease-in-out;
	-moz-transition:margin-left 0.2s ease-in-out;
	-o-transition:margin-left 0.2s ease-in-out;
	-ms-transition:margin-left 0.2s ease-in-out;
	transition:margin-left 0.2s ease-in-out;
}
.flipbook  .hard.p10{
	background:-webkit-gradient(linear, left top, right top, color-stop(0.95, #fff), color-stop(1, #dadada));
	background-image:-webkit-linear-gradient(left, #fff 95%, #dadada 100%);
	background-image:-moz-linear-gradient(left, #fff 95%, #dadada 100%);
	background-image:-ms-linear-gradiep29nt(left, #fff 95%, #dadada 100%);
	background-image:-o-linear-gradient(left, #fff 95%, #dadada 100%);
	background-image:linear-gradient(left, #fff 95%, #dadada 100%);
}

.flipbook .p17{
	background-position:-942px 0;
	-webkit-background-position:-942px 0;
	-moz-background-position:-942px 0;
	-o-background-position:-942px 0;
}

.flipbook .p18{
	background-position:-1413px 0;
	-webkit-background-position:-1413px 0;
	-moz-background-position:-1413px 0;
	-o-background-position:-1413px 0;
}
	
</style>

<body>

<div class="flipbook-viewport">
	<div class="container">
		<div class="flipbook">
			<div class="hard p1"></div>
			<div class="hard p2"></div>
			<div class="hard p17"></div>
			<div class="hard p18"></div>
		</div>
	</div>
</div>
<canvas id="mouseCanvas"></canvas>
</body>
</html>