function formatDate(time,format='YY-MM-DD hh:mm'){
    var date = new Date(time);

    var year = date.getFullYear(),
        month = date.getMonth()+1,// 月份是从0开始的
        day = date.getDate(),
        hour = date.getHours(),
        min = date.getMinutes(),
        sec = date.getSeconds();
    var preArr = Array.apply(null,Array(10)).map(function(elem, index) {
        return '0'+index;
    });// //开个长度为10的数组 格式为 00 01 02 03

    var newTime = format.replace(/YY/g,year)
                        .replace(/MM/g,preArr[month]||month)
                        .replace(/DD/g,preArr[day]||day)
                        .replace(/hh/g,preArr[hour]||hour)
                        .replace(/mm/g,preArr[min]||min)
                        .replace(/ss/g,preArr[sec]||sec);
    return newTime;         
}
var gl_map = null;
var gl_layer = null;
var gl_showPoi = null;
require([
      "esri/Map",
      "esri/views/SceneView",
      "esri/layers/GraphicsLayer",
      "esri/Graphic",
      "dojo/domReady!"
    ], function(Map,SceneView,GraphicsLayer, Graphic){
		
    		var map = new Map({
    	        basemap: "streets"
    	      });
    		gl_map = map;
           	var view = new SceneView({
             container: "viewDiv",
             map: map,
             environment: {
                 atmosphere: {
                   quality: "high"
                 },
                 lighting: {
                   directShadowsEnabled: true,
                   ambientOcclusionEnabled: true
                 }
               },
               scale: 60000000,          
               center: [0, 0]
           	});
           	var graphicsLayer = new GraphicsLayer();
           	gl_layer = graphicsLayer;
          	map.add(graphicsLayer);
        	var opts = {
	           		  duration: 6000,
	           		};
       		view.goTo({
       		  target: [114.35324042896691,30.535762797065825],
       		  zoom:18
       		}, opts);
       		
       		var opts2 = {
	           		  duration: 2000,
	           		};
       	$("#back").click(function(){
       		view.goTo({
         		  target: [114.35324042896691,30.535762797065825],
         		  zoom:15
         		}, opts2);
       	});
       	// 初始化所有poi
       	ajax_showAllPois();
    
     /* view.on("click",function(e){
        console.log(e.mapPoint.latitude);
        console.log(e.mapPoint.longitude)
       	   });*/
       	
       	
       	/**
		 * 
		 * 定义一些函数
		 * 
		 */
      // 传入一个poi的jsonObject
    	function showPoi(poi){
    			var point = {
    		        type: "point", 
    		        x: poi.longitude,
    		        y: poi.latitude,
    		      };
    			var col =  "#2791ff";
    		    var markerSymbol = {
    		    	// 这里以后设置大小
    		        type: "simple-marker", 
    		        color:col,
    		        outline: { 
    		          color:col,
    		          width: 0.1
    		        },
					size:15// 15-30
    		      };

    		      // 类似于Map
    		    var attribute = {
    		    		  描述: poi.description,
    		      };
				// 添加template的action
				var go = { title: "评论", id: "goIt"};
    		    var template = {
    		    		title: "<h3 align='center' style='margin-left: 50px;'><span class='label label-warning'>特征点:"+poi.name+"</span></h3>",
    		            content: [{
    		              type: "fields",
    		              fieldInfos: [{
    		                fieldName: "描述"
    		              }
    		              ]
    		            },{
    		            	type:"text",
    		            	// 可以使用html语句修饰
    		            	text:"<h3 align='center'><span class='label label-success'>预览图片</span></h3>"
    		            },{
    		             type: "media",
    		            mediaInfos: [{
							type: "image",
							value: {
								sourceURL: path+poi.url
							}
    		            }]
    		           },
    		           {
   		            	type:"text",
   		            	// 可以使用html语句修饰
   		            	text:"<h3 align='center'><span class='label label-info'>评论内容</span></h3>"
   		            	},
    		           {
	   		            	type:"text",
	   		            	text:setContent(poi)
   		            	},
    		           {
	   		            	type:"text",
	   		            	text:setBtn()
  		            	}
    		           ],
    		      };
    		    function setContent(poi){
    		    	var sum = "";
    		    	for(var i=0;i<poi.notes.length;i++){
    		    		var name = "<div class='panel-heading'><span class='glyphicon glyphicon-user'></span><h3 class='panel-title'>"+poi.notes[i].user+"</h3></div>";
    		    		var comment = "<div class='panel-body'>"+poi.notes[i].content+"</div>";
        		    	
        		    	sum+=("<div class='panel panel-info'>"+name+comment+"</div>");
    		    	}
    		    	return "<div class='pre-scrollable'>"+sum+"</div>";
    		    }
    			
    		    function setBtn(){
    		    	
    		    	var btn = "<button class='btn btn-primary' id='mybtn' type='button' " +
    		    			"data-toggle='collapse' data-target='#collapseUse' " +
    		    			"aria-expanded='false' aria-controls='collapseUse'>" +
    		    			"评论</button>" +
    		    			"<div class='collapse' id='collapseUse'>" +
    		    			"<textArea class='well form-control' rows='3'></textArea><button poiId='"+poi.id+"' class='btn btn-success' onclick='ajax_addNote(gl_layer,gl_showPoi,this)' >提交" +
    		    			"</button></div>";
    		    	return btn;
    		    }
    		    var pointGraphic = new Graphic({
    		        geometry: point,
    		        symbol: markerSymbol,
    		        attributes:attribute,
    		        popupTemplate:template
    		      });
    		    graphicsLayer.add(pointGraphic);
    	}
    	
    	gl_showPoi = showPoi;
    	/**
		 * 
		 * 第一次展示所有的Poi信息以及相关的评论信息
		 * 
		 */
    	function ajax_showAllPois(){
    		$.ajax({
    	  		method : "POST",
    	  		timeout : 5000,
    	  		url : path+"/ajax_poi_showAllPois",
    	  		data :"now="+new Date().getTime(), // 防止缓存问题
    	  		dataType : "json",
    	  		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
    	  		async:false,
    	  		success : function(data) {
    	  			// 这里的数据是jsonArray
    	  			for(var i=0;i<data.length;i++){
    	  				showPoi(data[i]);
    	  			}
    	  			
    	  			/*
					 * //给template添加事件 var popup = view.popup;
					 * popup.on("trigger-action", function(event) { if
					 * (event.action.id === "goIt") { } });
					 */
    	  		},
    	  		error : function(a) {
    	  			alert("error");
    	  		}
    	  	});
    	}
});

function ajax_addNote(layer,showPoi,btn){
	var str = $(".well").val();
	var flag = 0;
	if(str!=null&&str!==""){
		layer.removeAll();
		$.ajax({
	  		method : "POST",
	  		timeout : 5000,
	  		url : path+"/ajax_poi_addNote",
	  		data :{
	  			"now":new Date().getTime(),
	  			"poiId":$(btn).attr("poiId"),
	  			"note.content":str
	  		}, // 防止缓存问题
	  		dataType : "json",
	  		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
	  		async:false,
	  		success : function(data) {
	  			console.log(data);
		  			// 这里的数据是jsonArray
		  			for(var i=0;i<data.length-1;i++){
		  				showPoi(data[i]);
		  			}
		  			if(data[data.length-1]==1){
		  				//未登录
		  				flag = 1;
		  				$('.alert').remove();
		  				$('#collapseUse').prepend('<div class="alert alert-danger alert-dismissible" role="alert" style="margin-top:10px;text-align:center;">'+
		  						'<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>没登陆呢，兄弟&emsp;&emsp;<a href = "'+path+'/pict/LoginPage" class = "login btn btn-warning active btn-sm glyphicon glyphicon-link" role="button">登录</a></div>');
		  			}
	  		},
	  		error : function(b) {
	  			console.log(b);
	  			alert("错误!");
	  		}
	  	});
		if(flag == 0){
			$(".esri-popup").empty();
			$(".well").val(''); 
			var pWidth = $("#viewDiv").width();
			// 发射弹幕
		    var randomColor=""+Math.floor(Math.random()*255).toString(16)+Math.floor(Math.random()*255).toString(16)+Math.floor(Math.random()*255).toString(16);
		    $("#danmu").css({"color":"#"+randomColor});
		    $("#danmu").html("<span>"+str+"</span>");
		    $("#danmu").animate({left:-pWidth},10000,function(){
		        $(this).html('');
		        $(this).css('left',pWidth);
		    });
		}
	}else{
		alert("内容不能为空");
	}
}


