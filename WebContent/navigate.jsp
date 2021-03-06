<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航界面</title>
<script src="${path }/outerjs/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/mycss/seasons.css">
<link rel="stylesheet" type="text/css" href="${path }/mycss/nav.css">
<link rel="stylesheet" type="text/css" href="${path }/mycss/majors.css">
<script type="text/javascript"
	src="${path }/outerjs/jquery.localscroll-1.2.7-min.js"></script>
<script type="text/javascript"
	src="${path }/outerjs/jquery.parallax-1.1.3.js"></script>
<script type="text/javascript"
	src="${path }/outerjs/jquery.scrollTo-1.4.2-min.js"></script>
<script type="text/javascript">
	$(function() {
		var user = "${sessionScope.user}";
		if(user!=""){
			$("#login").hide();
		}else{
			$("#login").show();
		}
		var locale = "${sessionScope.WW_TRANS_I18N_LOCALE}"
		if (locale == 'en_US') {
			$("#changeLocale").val('en_US');
			$('ul span').each(
					function(i) {
						if (i == 0) {
							$('ul span').eq(i).attr('class',
									'btn btn-default subtitle active');
						} else {
							$('ul span').eq(i).attr('class',
									'btn btn-default subtitle');
						}
						$('ul span').eq(i).css({
							'font-family' : 'navFont',
							'font-size' : '17px'
						});
						$('#navMenu-items .navMenu-item').eq(i).css({
							'margin-top' : '10px',
							'margin-left' : '1%'
						});
						$('ul span').eq(i).css({
							'background' : 'transparent'
						});
					})
			$('#login').css('font-size', '13px');
			//$(".subtitle").css({"font-size":'12px','width':'150px','height':'20px'});
		} else {

		}
		$('.carousel').carousel({
			interval : 4000
		});
		/**
		国际化
		 */
		$("#changeLocale").change(function() {
			$("form").submit();
		});

		/* $("ul li:eq(2)").click(function() {
			window.open('${path }/pict/ImagePage', '_blank');
		}) */
		$("ul li:eq(3)").click(function() {
			window.open('${path }/pict/mapPage', '_blank');
		})
		$("ul li:eq(4)").click(function() {
			window.open('${path }/pict/LoginPage', '_blank');
		})
		//图片数组
		var array = [
				[ path + '/seasonImage/slide5.jpeg',
						path + '/seasonImage/slide3.png',
						path + '/seasonImage/slide4.png',
						path + '/seasonImage/autumn2.png' ],
				[ path + '/scienceImage/science.jpg',
						path + '/scienceImage/math2.jpg',
						path + '/scienceImage/science2.png',
						path + '/scienceImage/math4.jpg' ] ];
		$('.carousel-inner img').each(function(i) {
			$(this).attr('src', array[0][i]);
		});
		$('#navMenu-items .navMenu-item').click(function() {
			index = $(this).index('#navMenu-items .navMenu-item');
			if (index == 0) {
				$('.carousel-inner img').each(function(i) {
					$(this).attr('src', array[0][i]);
				})
				$(".science").css('display', 'none');
				$(".seasons").css('display', 'block');
				$(".embed-responsive").css('display', 'none');
				$("#carousel-generic").css('display','block');
			} else if (index == 1) {
				$('.carousel-inner img').each(function(i) {
					$(this).attr('src', array[1][i]);
				})
				//切换展示主题
				$(".science").css('display', 'block');
				$(".seasons").css('display', 'none');
				$(".embed-responsive").css('display', 'none');
				$("#carousel-generic").css('display','block');
			} else if (index == 2) {
				$(".science").css('display', 'none');
				$(".seasons").css('display', 'none');
				$(".embed-responsive").css('display', 'block');
				$("#carousel-generic").css('display','none');
			}
		})
	})
</script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div id="navMenu">
			<div id="navMenu-wrapper">
				<div id="logo">
					<h1>珞珈印象</h1>
				</div>
				<ul id="navMenu-items">
					<div id="menuSelector"></div>
					<li class="navMenu-item"><span class="subtitle active"><s:text
								name="the_four_seasons"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle"><s:text
								name="academic"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle"><s:text
								name="album"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle"><s:text
								name="impression"></s:text></span></li>
					<li class="navMenu-item"><span class="subtitle" id="login"><s:text
								name="login_regiser"></s:text></span></li>
					<li class="navMenu-item">
						<form action="${path}/pict/homePage" method="post">
							<s:select cssClass="btn btn-info"
								cssStyle="font-family: navFont;" id="changeLocale"
								name="locales" list="#{'zh_CN':'中文','en_US':'English'}"></s:select>
						</form>
					</li>

				</ul>
			</div>
		</div>
		</nav>
		<!-- bootstrap js插件轮播图 -->
		<div id="carousel-generic" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<!-- 中间的小圆圈 -->
				<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-generic" data-slide-to="1"></li>
				<li data-target="#carousel-generic" data-slide-to="2"></li>
				<li data-target="#carousel-generic" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="" alt="..." align="center">
					<!-- 添加描述信息 -->
				</div>
				<div class="item">
					<img src="" alt="..." align="center">
				</div>
				<div class="item">
					<img src="" alt="..." align="center">
				</div>
				<div class="item">
					<img src="" alt="..." align="center">
				</div>
			</div>

			<a class="left carousel-control" href="#carousel-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div class="seasons">
			<div class="page-header">
				<b><h1 class='text-success'>珞珈的春夏秋冬</h1></b>
			</div>
			<div id="spring">
				<div class="description">
					<div class="float-left">
						<h2 class='text-warning'>春天的珞珈</h2>
						<h2>微风不定，幽香成径，红云十里波千顷</h2>
						<b><footer>-- 元代<cite title="Source Title">刘时中</cite></footer></b>
					</div>
				</div>
			</div>
			<div id="summer">
				<div class="description">
					<div class="float-right">
						<h2 class='text-danger'>夏天的珞珈</h2>
						<h2>明月别枝惊鹊，清风半夜鸣蝉。</h2>
						<b><footer>-- 宋代<cite title="Source Title">辛弃疾</cite></footer></b>
					</div>
				</div>

			</div>

			<div id="autumn">
				<div class="description">
					<div class="float-left">
						<h2 class='text-warning'>秋天的珞珈</h2>
						<h2>天阶夜色凉如水，卧看牵牛织女星</h2>
						<b><footer>-- 唐代<cite title="Source Title">杜牧</cite></footer></b>
					</div>
				</div>
			</div>
			<div id="winter">
				<div class="description">
					<div class="float-right">
						<h2 class='text-danger'>冬天的珞珈</h2>
						<h2>一声画角谯门，半庭新月黄昏，雪里山前水滨</h2>
						<b><footer>-- 元代<cite title="Source Title">白朴</cite></footer></b>
					</div>
				</div>
			</div>
		</div>
		<div class="science" style="display: none">
			<div class="page-header">
				<b><h1 class='text-success'>文法理工农医</h1></b>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading">
					<blockquote>
						<h2 class='text-primary'>文</h2>
						<h2 class='text-warning'>“步过春光，醉老西窗” 才知人间已荒</h2>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-11">
							<img src="${path }/scienceImage/literature4.jpg" alt="..."
								class="img-responsive img-thumbnail literature">
						</div>
					</div>
					<div class='row'>
						<div class="col-sm-4 col-md-6">
							<img src="${path }/scienceImage/literature2.jpg" alt="..."
								class="img-responsive img-thumbnail literature">
						</div>
						<div class="col-sm-4 col-md-6">
							<img src="${path }/scienceImage/literature.jpg" alt="..."
								class="img-responsive img-thumbnail literature">
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-success">
				<div class="panel-heading">
					<blockquote>
						<h2 class='text-info'>法</h2>
						<h2>无念为之本，一念为之意，二念为之德，三念为之法</h2>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class="col-sm-4 col-md-6 law" style="margin-top: 7%;">
							<img src="${path }/scienceImage/law4.jpg" alt="..."
								class="img-responsive img-thumbnail law">
						</div>
						<div class="col-sm-4 col-md-6 law">
							<img src="${path }/scienceImage/law.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
						<div class="col-sm-4 col-md-6 law">
							<img src="${path }/scienceImage/law3.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-warning">
				<div class="panel-heading">
					<blockquote>
						<h2 class='text-info'>理</h2>
						<h2>在我看来这时间的美丽有两种，一是深刻又动人的方程</h2>
						<h2>一是你泛着倦意淡淡的笑容</h2>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class="col-sm-4 col-md-6 sciences" style="margin-top: 3%;">
							<img src="${path }/scienceImage/science4.png" alt="..."
								class="img-responsive img-thumbnail law">
						</div>
						<div class="col-sm-4 col-md-6 sciences">
							<img src="${path }/scienceImage/science5.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
						<div class="col-sm-4 col-md-6 sciences">
							<img src="${path }/scienceImage/science3.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-danger">
				<div class="panel-heading">
					<blockquote>
						<h2 class='text-info'>工</h2>
						<h2>“工匠精神”代表着一个时代的气质</h2>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class="col-sm-4 col-md-6 law" style="margin-top: 3%;">
							<img src="${path }/scienceImage/engineer5.jpg" alt="..."
								class="img-responsive img-thumbnail law">
						</div>
						<div class="col-sm-4 col-md-6 law">
							<img src="${path }/scienceImage/engineer2.png" alt="..."
								class="img-responsive img-thumbnail">
						</div>
						<div class="col-sm-4 col-md-6 law">
							<img src="${path }/scienceImage/engineer4.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-warning">
				<div class="panel-heading">
					<blockquote>
						<h2 class='text-info'>农</h2>
						<h2>农业的要素也就是构成宇宙的要素：水、土、空气和阳光</h2>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class="col-sm-4 col-md-9" style="margin-left: 15%;">
							<img src="${path }/scienceImage/agriculture2.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>

						<div class="col-sm-4 col-md-9" style="margin-left: 15%;">
							<img src="${path }/scienceImage/agriculture3.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<blockquote>
						<h2 class='text-info'>医</h2>
						<h2>有时是治愈，常常是安慰，总是去帮助</h2>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class='row'>
						<div class="col-sm-4 col-md-6">
							<img src="${path }/scienceImage/hospital2.jpg" alt="..."
								class="img-responsive img-thumbnail law">
						</div>
						<div class="col-sm-4 col-md-6">
							<img src="${path }/scienceImage/hospital.png" alt="..."
								class="img-responsive img-thumbnail">
						</div>
						<div class="col-sm-4 col-md-6" style="margin-top: 2%;">
							<img src="${path }/scienceImage/hospital3.jpg" alt="..."
								class="img-responsive img-thumbnail">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="embed-responsive embed-responsive-16by9"
			style="display: none; background-color: transparent;">
			<iframe class="embed-responsive-item" src="${path }/bookPic.jsp"></iframe>
		</div>
	</div>
	<script src="${path }/myjs/index.js"></script>
	<script type="text/javascript" src="${path }/myjs/seasons.js"></script>
</body>
</html>