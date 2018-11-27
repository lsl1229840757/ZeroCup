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
<script type="text/javascript"
	src="${path }/outerjs/jquery.localscroll-1.2.7-min.js"></script>
<script type="text/javascript"
	src="${path }/outerjs/jquery.parallax-1.1.3.js"></script>
<script type="text/javascript"
	src="${path }/outerjs/jquery.scrollTo-1.4.2-min.js"></script>
<script type="text/javascript">
	$(function() {
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
			interval : 5000
		});
		/**
		国际化
		 */
		$("#changeLocale").change(function() {
			$("form").submit();
		});

		
		$("ul li:eq(2)").click(function() {
			window.open('${path }/pict/ImagePage', '_blank');
		})
		$("ul li:eq(3)").click(function() {
			window.open('${path }/pict/mapPage', '_blank');
		})
		$("ul li:eq(4)").click(function() {
			window.open('${path }/pict/LoginPage', '_blank');
		})
		//图片数组
		var array = [
				[ path + '/poiImages/a.jpg', path + '/images/img1.jpg',
						path + '/images/img1.jpg', path + '/images/img1.jpg' ],
				[ path + '/images/1.jpg', path + '/images/img1.jpg',
						path + '/images/2.jpg', path + '/images/3.jpg' ] ];
		$('#navMenu-items .navMenu-item').click(
				function() {
					index = $(this).index('#navMenu-items .navMenu-item');
					if (index == 0) {
						$('.carousel-inner img').each(function(i) {
							$(this).attr('src', array[0][i]);
						})

						$('.embed-responsive-item').attr('src',
								'${path }/seasons.jsp');
						$(".science").css('display','none'); 
						$(".seasons").css('display','block');
					} else if (index == 1) {
						$('.carousel-inner img').each(function(i) {
							$(this).attr('src', array[1][i]);
						})

						$('.embed-responsive-item').attr('src',
								'${path }/majors.jsp');
						$(".science").css('display','block'); 
						$(".seasons").css('display','none');
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
					<img alt="" src="${path }/images/logo.png">
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
							<s:select cssClass="btn btn-info" id="changeLocale"
								name="locales" list="#{'zh_CN':'中文','en_US':'English'}"></s:select>
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
		<div class="seasons">
			<div class="page-header">
				<h1 class='text-success'>珞珈的春夏秋冬</h1>
			</div>
			<div id="spring">
				<div class="description">
					<div class="float-left">
						<h2>(Almost) Static Background</h2>
						<p>This section has a background that moves slightly slower
							than the user scrolls. This is achieved by changing the top
							position of the background for every pixel the page is scrolled.</p>
					</div>
				</div>
			</div>
			<div id="summer">
				<div class="description">
					<div class="float-right">
						<h2>Multiple Backgrounds</h2>
						<p>The multiple backgrounds applied to this section are moved
							in a similar way to the first section -- every time the user
							scrolls down the page by a pixel, the positions of the
							backgrounds are changed.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Aenean nibh erat, sagittis sit amet congue at, aliquam eu libero.
							Integer molestie, turpis vel ultrices facilisis, nisi mauris
							sollicitudin mauris, volutpat elementum enim urna eget odio.
							Donec egestas aliquet facilisis. Nunc eu nunc eget neque ornare
							fringilla. Nam vel sodales lectus. Nulla in pellentesque eros.
							Donec ultricies, enim vitae varius cursus, risus mauris iaculis
							neque, euismod sollicitudin metus erat vitae sapien. Sed
							pulvinar.</p>
					</div>
				</div>

			</div>

			<div id="autumn">
				<div class="description">
					<div class="float-left">
						<h2>What Happens When JavaScript is Disabled?</h2>
						<p>The user gets a slap! Actually, all that jQuery does is
							moves the backgrounds relative to the position of the scrollbar.
							Without it, the backgrounds simply stay put and the user would
							never know they are missing out on the awesome! CSS2 does a good
							enough job to still make the effect look cool.</p>
					</div>
				</div>
			</div>
			<div id="winter">
				<div class="description">
					<div class="float-left">
						<h2>What Happens When JavaScript is Disabled?</h2>
						<p>The user gets a slap! Actually, all that jQuery does is
							moves the backgrounds relative to the position of the scrollbar.
							Without it, the backgrounds simply stay put and the user would
							never know they are missing out on the awesome! CSS2 does a good
							enough job to still make the effect look cool.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="science" style="display:none">
			<div class="panel panel-info">
				<div class="panel-heading">
					<blockquote>
						<h3 class='text-info'>文</h3>
						<p>笔落惊风雨,诗成泣鬼神。</p>
						<footer>唐代&emsp;<cite title="Source Title">杜甫</cite></footer>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-success">
				<div class="panel-heading">
					<blockquote>
						<h3 class='text-info'>法</h3>
						<p>无念为之本，一念为之意，二念为之德，三念为之法。</p>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-warning">
				<div class="panel-heading">
					<blockquote>
						<h3 class='text-info'>理</h3>
						<p>在我看来这时间的美丽有两种，一是深刻又动人的方程，一是你泛着倦意淡淡的笑容。</p>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<blockquote>
						<h3 class='text-info'>工</h3>
						<p>国之重器，大国工匠！</p>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
				<div class="panel panel-default">
				<div class="panel-heading">
					<blockquote>
						<h3 class='text-info'>农</h3>
						<p>农业乃立家之本，商贸乃强国之途，军队乃护国之剑。农业乃立家之本，商贸乃强国之途，军队乃护国之剑。</p>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
				<div class="panel panel-default">
				<div class="panel-heading">
					<blockquote>
						<h3 class='text-info'>医</h3>
						<p> 悬壶济世医苍生, 妙手回春解疾疼。</p>
					</blockquote>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-md-4">
							<div class="thumbnail">
								<img src="${path }/navimages/test.jpeg" alt="..."
									class="img-responsive">
								<div class="caption">
									<p>...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${path }/myjs/index.js"></script>
	<script type="text/javascript" src="${path }/myjs/seasons.js"></script>
</body>
</html>