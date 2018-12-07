<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${path }/outerjs/anime.min.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
$(function(){
	var logoAnimation = anime.timeline({
		  direction: 'alternate',
		  loop: false,
		  complete: function(anim) {
			window.location = path+"/pict/homePage";  
		  }
		});

		logoAnimation.add([
		     {
		    targets: '.luo .words',
		    translateX: (target) => {
		      let x = 1200;
		      let translate;
		      translate = anime.random(0, 1) ? x/3 : -x/3;
		      return [translate, 0];
		    },
		    translateY: (target) => {
		      let y = 200;
		      let translate;
		       translate = anime.random(0, 1) ? y/3 : -y/3;
		      return [translate, 0];
		    },
		    scale: {
		      value: [1.4, 1],
		      duration: 1000,
		    },
		    stroke: '#EBD2E7',
		    opacity: {
		      value: [0, 1],
		      duration: 100,
		    },
		    delay: (t, i) => (i * 25),
		    duration: 500,
		    easing: 'easeInOutCubic',
		    offset: 0
		  },
		  
		  {
		    targets: '.jia .words',
		    translateX: (target) => {
		      let x = 500;
		      let translate;
		      translate = anime.random(0, 1) ? x/3 : -x/5;
		      return [translate, 0];
		    },
		    translateY: (target) => {
		      let y = 1200;
		      let translate;
		     translate = anime.random(0, 1) ? y/3 : -y/3;
		      return [translate, 0];
		    },
		    scale: {
		      value: [1.4, 1],
		      duration: 1000,
		    },
		    stroke: '#7AD734',
		    opacity: {
		      value: [0, 1],
		      duration: 100,
		    },
		    delay: (t, i) => 500 + (i * 25),
		    duration: 500,
		    easing: 'easeInOutCubic',
		    offset: 0
		  },
		  
		  
		  {
		    targets: '.yin .words',
		    translateX: (target) => {
		      let x = 500;
		      let translate;
		      translate = anime.random(0, 1) ? x/2 : -x/4;
		      return [translate, 0];
		    },
		    translateY: (target) => {
		      let y = 1200;
		      let translate;
		       translate = anime.random(0, 1) ? y/3 : -y/3;
		      return [translate, 0];
		    },
		    scale: {
		      value: [1.4, 1],
		      duration: 1000,
		    },
		    stroke: '#EAB01E',
		    opacity: {
		      value: [0, 1],
		      duration: 100,
		    },
		    delay: (t, i) => 1000 + (i * 50),
		    duration: 500,
		    easing: 'easeInOutCubic',
		    offset: 0
		  },
		  
		  
		  {
		    targets: '.xiang .words',
		    translateX: (target) => {
		      let x = 200;
		      let translate;
		     translate = anime.random(0, 1) ? x/3 : -x/3;
		      return [translate, 0];
		    },
		    translateY: (target) => {
		      let y = 1200;
		      let translate;
		       translate = anime.random(0, 1) ? y/3 : -y/3;
		      return [translate, 0];
		    },
		    scale: {
		      value: [1.4, 1],
		      duration: 1000,
		    },
		    stroke: '#48B4F5',
		    opacity: {
		      value: [0, 1],
		      duration: 100,
		    },
		    delay: (t, i) => 1500 +(i * 25),
		    duration: 500,
		    easing: 'easeInOutCubic',
		    offset: 0,
		  }
		]);
		
		
});
</script>



<title>Insert title here</title>
</head>
<style type="text/css">
html, body {
	background-color: black;
}

section {
	position: absolute;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
}

.flower, words {
	opacity: 0
}
</style>
<body>
<svg width="1064" height="637" xmlns="http://www.w3.org/2000/svg">
 <!-- Created with Method Draw - http://github.com/duopixel/Method-Draw/ -->
 <defs>
  <filter height="200%" width="200%" y="-50%" x="-50%" id="svg_24_blur">
   <feGaussianBlur stdDeviation="0.5" />
  </filter>
  <filter height="200%" width="200%" y="-50%" x="-50%" id="svg_56_blur">
   <feGaussianBlur stdDeviation="0" />
  </filter>
  <filter id="svg_12_blur">
   <feGaussianBlur stdDeviation="0.7" />
  </filter>
  <filter id="svg_33_blur">
   <feGaussianBlur stdDeviation="0" />
  </filter>
  <filter id="svg_106_blur">
   <feGaussianBlur stdDeviation="0.9" />
  </filter>
  <filter id="svg_36_blur">
   <feGaussianBlur stdDeviation="0.5" in="SourceGraphic" />
  </filter>
  <filter id="svg_37_blur">
   <feGaussianBlur stdDeviation="0.5" in="SourceGraphic" />
  </filter>
  <filter id="svg_34_blur">
   <feGaussianBlur stdDeviation="0.5" in="SourceGraphic" />
  </filter>
 </defs>
 <g>
  <title>background</title>
 
  <g display="none" id="canvasGrid">
   <rect fill="url(#gridpattern)" stroke-width="0" y="0" x="0"
			height="100%" width="100%" id="svg_28" />
  </g>
 </g>
 <g>
  <title>Layer 1</title>
  <g class="luo">
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_1"
			y2="119.8" x2="115.7" y1="121.8" x1="26.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_2"
			y2="159.79999" x2="108.7" y1="163.79999" x1="37.7"
			stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_3"
			y2="206.8" x2="72.7" y1="123.8" x1="71.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_4"
			y2="195.8" x2="115.7" y1="224.8" x1="27.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_5"
			y2="153.8" x2="117.7" y1="86.8" x1="175.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_6"
			y2="108.8" x2="235.7" y1="111.8" x1="161.7" stroke-width="11.5"
			fill="none" />
  <line class="words" filter="url(#svg_12_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_7"
			y2="204.8" x2="126.7" y1="105.79999" x1="239.7" stroke-width="11.5"
			fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_8"
			y2="192.8" x2="253.7" y1="112.8" x1="154.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_9"
			y2="232.8" x2="175.7" y1="175.8" x1="165.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_10"
			y2="175.8" x2="229.7" y1="175.8" x1="167.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_11"
			y2="231.8" x2="222.7" y1="175.8" x1="230.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_12_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_12"
			y2="228.8" x2="227.7" y1="231.8" x1="171.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  </g>
  <g class="jia">
  <line class="words" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_13"
			y2="112.8" x2="367.7" y1="114.8" x1="298.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_14"
			y2="154.8" x2="358.7" y1="157.8" x1="306.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_15"
			y2="201.8" x2="332.69994" y1="116.8" x1="338.69994"
			stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_16"
			y2="189.8" x2="368.7" y1="214.8" x1="300.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_17"
			y2="129.8" x2="450.7" y1="134.8" x1="377.7" stroke-width="11.5"
			fill="none" />
  <line class="words" filter="url(#svg_24_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_18"
			y2="229.8" x2="429.7" y1="125.8" x1="455.7" stroke-width="11.5"
			fill="none" />
  <line class="words" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_19"
			y2="203.8" x2="395.7" y1="224.8" x1="433.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_20"
			y2="185.8" x2="391.7" y1="86.8" x1="434.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_24_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_21"
			y2="185.8" x2="481.7" y1="129.8" x1="472.7" stroke-width="11.5"
			fill="none" />
  <line class="words" filter="url(#svg_24_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_22"
			y2="133.8" x2="531.7" y1="134.8" x1="475.7" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_24_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_23"
			y2="184.8" x2="517.69999" y1="129.8" x1="534.69999"
			stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_24_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_24"
			y2="180.8" x2="521.7" y1="182.8" x1="476.7" stroke-width="11.5"
			fill="none" />
	</g>
	<g class="yin">
 <line class="words" filter="url(#svg_33_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_25"
			y2="289.8" x2="452" y1="239.8" x1="535" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_33_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_26"
			y2="379.8" x2="452" y1="291.8" x1="455" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_33_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_27"
			y2="353.5453" x2="534.31367" y1="380.5453" x1="454.31367"
			fill-opacity="null" stroke-opacity="null" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_33_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_29"
			y2="306.16889" x2="542.01128" y1="329.16889" x1="464.01128"
			fill-opacity="null" stroke-opacity="null" stroke-width="11.5"
			stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_56_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_30"
			y2="271.8" x2="647" y1="274.8" x1="559" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_56_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_31"
			y2="360.8" x2="626" y1="267.8" x1="643" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_33_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_32"
			y2="340.8" x2="604" y1="357.8" x1="628" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_33_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_33"
			y2="452.8" x2="577" y1="275.8" x1="571" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  </g>
  <path class="flower" id="svg_64" d="m-36,65.8" opacity="0.5"
			fill-opacity="null" stroke-opacity="null" stroke-width="11.5"
			stroke="#000" fill="none" />
   
  <g class="xiang">
  <line class="words" filter="url(#svg_106_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_88"
			y2="254" x2="733" y1="164" x1="792" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_89"
			y2="209" x2="854" y1="205" x1="756" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_90"
			y2="264" x2="821" y1="206" x1="853" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_94"
			y2="316" x2="722" y1="256" x1="708" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_95"
			y2="260" x2="850" y1="258" x1="706" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_96"
			y2="316" x2="834" y1="260" x1="852" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_97"
			y2="312" x2="828" y1="312" x1="727" stroke-opacity="null"
			stroke-width="15.5" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_98"
			y2="369" x2="712" y1="260" x1="788" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_99"
			y2="348" x2="813" y1="313" x1="755" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" stroke="#000"
			transform="rotate(1.2951500415802002 819.9999999999983,380.00000000000404) "
			filter="url(#svg_106_blur)" stroke-linecap="undefined"
			stroke-linejoin="undefined" id="svg_100" y2="413.97804"
			x2="827.05676" y1="346.02196" x1="812.94324" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_101"
			y2="471" x2="793" y1="408" x1="826" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" stroke="#000" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_102"
			y2="450" x2="766" y1="470" x1="800" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_103"
			y2="387" x2="748" y1="328" x1="782" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_104"
			y2="414" x2="770" y1="347" x1="815" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" stroke="#000" filter="url(#svg_106_blur)"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_105"
			y2="358" x2="813" y1="302" x1="873" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
  <line class="words" filter="url(#svg_106_blur)" stroke="#000"
			stroke-linecap="undefined" stroke-linejoin="undefined" id="svg_106"
			y2="408" x2="889" y1="357" x1="821" fill-opacity="null"
			stroke-opacity="null" stroke-width="11.5" fill="none" />
	</g>
  <text stroke="#000"
			transform="rotate(-8.070651054382324 28.671874999999275,292.58593749999994) matrix(0.9999999999999999,0,0,0.9999999999999999,0,0) "
			xml:space="preserve" text-anchor="start"
			font-family="Helvetica, Arial, sans-serif" font-size="24"
			id="svg_107" y="301" x="22" stroke-opacity="null" stroke-width="0"
			fill="#000000" />
  <path class="flower" filter="url(#svg_34_blur)" fill="#fff"
			stroke="#000" stroke-width="1.5" stroke-opacity="null"
			fill-opacity="null"
			d="m101,310.8c6,-2 108,-23 121,35c13,58 16,51 13,63c-3,12 -55,12 -75,0c-20,-12 -58,-48 -59,-61c-1,-13 -6,-35 0,-37z"
			id="svg_34"
			transform="rotate(23.27352523803711 167.083038330078,361.63540649414057) " />
  <path class="flower" filter="url(#svg_36_blur)" fill="#fff"
			stroke-width="1.5" stroke-opacity="null" fill-opacity="null"
			d="m205.18854,325.25452c6.52765,-1.52968 117.49771,-17.59129 131.64095,26.76935c14.14324,44.36064 17.40707,39.00677 14.14324,48.18484c-3.26383,9.17806 -59.8368,9.17806 -81.59563,0c-21.75884,-9.17806 -63.10062,-36.71226 -64.18856,-46.65516c-1.08794,-9.9429 -6.52765,-26.76935 0,-28.29903z"
			id="svg_35"
			transform="rotate(132.7758331298828 277.08306884765625,364.1354064941406) "
			stroke="#000" />
  <path class="flower" filter="url(#svg_36_blur)" fill="#fff"
			stroke="#000" stroke-width="1.5" stroke-opacity="null"
			fill-opacity="null"
			d="m209,399.8c6,-2 108,-23 121,35c13,58 16,51 13,63c-3,12 -55,12 -75,0c-20,-12 -58,-48 -59,-61c-1,-13 -6,-35 0,-37z"
			id="svg_36" />
  <path class="flower" fill="#fff" stroke="#000" stroke-width="1.5"
			stroke-opacity="null" fill-opacity="null"
			d="m145,439.8c6,-2 108,-23 121,35c13,58 16,51 13,63c-3,12 -55,12 -75,0c-20,-12 -58,-48 -59,-61c-1,-13 -6,-35 0,-37z"
			id="svg_38"
			transform="rotate(48.723419189453125 211.083038330078,490.6354064941406) " />
  <path class="flower" filter="url(#svg_37_blur)" fill="#fff"
			stroke="#000" stroke-width="1.5" stroke-opacity="null"
			fill-opacity="null"
			d="m53,377.8c6,-2 108,-23 121,35c13,58 16,51 13,63c-3,12 -55,12 -75,0c-20,-12 -58,-48 -59,-61c-1,-13 -6,-35 0,-37z"
			id="svg_37"
			transform="rotate(130.74356079101562 119.08305358886717,428.6354064941406) " />
  <ellipse class="flowerr" fill="#fff" stroke="#000" stroke-width="1.5"
			stroke-opacity="null" fill-opacity="null" cx="197.5" cy="406.3"
			id="svg_39" rx="27.5" ry="23.5" />
 </g>
</svg>

</body>

</html>