<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航界面</title>
<script src="${path }/outerjs/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/mycss/nav.css">
<script type="text/javascript">
	$(function() {
		var locale = "${sessionScope.WW_TRANS_I18N_LOCALE}"
		if(locale=='en_US'){
			$("#changeLocale").val('en_US');
			$(".subtitle").css({"font-size":'12px','width':'150px','height':'20px'});
		}else{
			$(".subtitle").css({"font-size":'21px','width':'100px'});
		}
		$('.carousel').carousel({
			interval : 5000
		});
		/**
		国际化
		*/
		$("#changeLocale").change(function(){
			$("form").submit();
		});
		
		
		$("ul li:eq(3)").click(function() {
			window.open('${path }/pict/ImagePage', '_blank');
		})
		$("ul li:eq(4)").click(function() {
			window.open('${path }/pict/mapPage', '_blank');
		})
		$("ul li:eq(5)").click(function() {
			window.open('${path }/pict/LoginPage', '_blank');
		})
		var array=[[path+'/poiImages/a.jpg',path+'/images/img1.jpg',path+'/images/img1.jpg',path+'/images/img1.jpg'],
			[path+'/images/1.jpg',path+'/images/img1.jpg',path+'/images/2.jpg',path+'/images/3.jpg']];
		$('#navMenu-items .navMenu-item').click(function(){
			index = $(this).index('#navMenu-items .navMenu-item');
			if(index==0){
				$('.carousel-inner img').each(function(i){
					$(this).attr('src',array[0][i]);
				})
			}
			else if(index==1){
				$('.carousel-inner img').each(function(i){
					$(this).attr('src',array[1][i]);
				})
			}
		})
	})
</script>
</head>
<body>
	<div class="container-fluid">
		<%-- <div class="header">
			<img alt="" src="${path }/images/head.png">
		</div> --%>
		<nav class="navbar navbar-default navbar-fixed-top">
		<div id="navMenu">
			<div id="navMenu-wrapper">
				<div id="logo">
					<img alt="" src="${path }/images/logo.png">
				</div>
				<ul id="navMenu-items">
					<div id="menuSelector"></div>
					<li class="navMenu-item"><span class="subtitle active"><s:text name="the_four_seasons"></s:text></span>
					</li>
					<li class="navMenu-item"><span class="subtitle"><s:text name="academic"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle"><s:text name="food"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle"><s:text name="album"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle"><s:text name="impression"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle" id="login"><s:text name="login_regiser"></s:text></span></li>
					<li class="navMenu-item">
						<form action="${path}/pict/homePage" method="post">
							<s:select id="changeLocale" name="locales" list="#{'zh_CN':'中文','en_US':'英文'}"></s:select>
						</form>
					</li>
					
				</ul>
			</div>
		</div>
		</nav>
		<!-- bootstrap js插件轮播图 -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<!-- 中间的小圆圈 -->
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${path }/images/img1.jpg" alt="...">
					<!-- 添加描述信息 -->
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="${path }/images/img1.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="${path }/images/img1.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
				<div class="item">
					<img src="${path }/images/img1.jpg" alt="...">
					<div class="carousel-caption">...</div>
				</div>
			</div>

			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div class="embed-responsive embed-responsive-16by9">
			<iframe class="embed-responsive-item" src="${path }/seasons.jsp"></iframe>
		</div>

	</div>
	<script src="${path }/myjs/index.js"></script>
</body>
</html>