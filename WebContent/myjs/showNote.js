var colorarray = [[0,0,0,1]]
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
var pois= null;
var gl_map = null;
var flag = 0;
function b(){
	
}
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
          	map.add(graphicsLayer);
        	var opts = {
	           		  duration: 6000,
	           		};
       		view.goTo({
       		  target: [114.35324042896691,30.535762797065825],
       		  zoom:18
       		}, opts);
       		/*
			 * view.on("click", function(e) { alert(e.mapPoint.latitude);
			 * alert(e.mapPoint.longitude); });
			 */
       		var opts2 = {
	           		  duration: 2000,
	           		};
       	$("#goback").click(function(){
       		view.goTo({
         		  target: [114.35324042896691,30.535762797065825],
         		  zoom:15
         		}, opts2);
       	});
       	// 初始化所有poi
       	ajax_showAllPois(flag);
    
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
    			var col =  colorarray[Math.floor(Math.random()*11)];
    		    var markerSymbol = {
    		    	// 这里以后设置大小
    		        type: "simple-marker", 
    		        color:col,
    		        outline: { 
    		          color:col,
    		          width: 0.1
    		        },
    		      size:Math.random()*15+5// 15-30
    		      };

    		      // 类似于Map
    		    var attribute = {
    		    		  描述: poi.description,
    		    		  留言: poi.notes[0].content
    		      };
				// 添加template的action
				var go = { title: "评论", id: "goIt"};
    		    var template = {
    		    		title: "<p align = 'center'><b>"+poi.name+"</b></p>",
    		            content: [{
    		              type: "fields",
    		              fieldInfos: [{
    		                fieldName: "描述"
    		              }
    		              ]
    		            },{
    		            	type:"text",
    		            	// 可以使用html语句修饰
    		            	text:"<b>预览图片</b>"
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
    		    		var comment = "<div class='comment' style='height: 40%;width: 70%;background-color: red;'>"+poi.notes[i].title+"</div>";
        		    	var name = "<div class='username' style='height: 20%;width: 30%;background-color: black;'>"+poi.notes[i].user+"</div>";
        		    	sum+=("<div class='commentInfo'>"+comment+name+"</div>");
    		    	}
    		    	return sum;
    		    }
    			
    		    function setBtn(){
    		    	var btn = "<button class='btn btn-primary' id='mybtn' type='button' " +
    		    			"data-toggle='collapse' data-target='#collapseExample' " +
    		    			"aria-expanded='false' aria-controls='collapseExample'>" +
    		    			"评论</button>" +
    		    			"<div class='collapse' id='collapseExample'>" +
    		    			"<textArea class='well'></textArea><button class='btn btn-success' id='refresh' onclick='a(1,2)'>提交" +
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
    	
    	/**
		 * 
		 * 第一次展示所有的Poi信息以及相关的评论信息
		 * 
		 */
    	function ajax_showAllPois(flag){
    		if(flag!=0){
    			map.removeAll();
    			alert(1);
    		}
    		flag++;
    		$.ajax({
    	  		method : "POST",
    	  		timeout : 5000,
    	  		url : path+"/ajax_showAllPois",
    	  		data :"now="+new Date().getTime(), // 防止缓存问题
    	  		dataType : "json",
    	  		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
    	  		async:false,
    	  		success : function(data) {
    	  			// 这里的数据是jsonArray
    	  			for(var i=0;i<data.length;i++){
    	  				pois = data[i];
    	  				showPoi(data[i]);
    	  				
    	  			}
    	  			
    	  		
    	  		 /* //给template添加事件 var popup = view.popup;
				  popup.on("trigger-action", function(event) { if
				  (event.action.id === "goIt") {
					  
				  } });*/
				 
    	  		},
    	  		error : function() {
    	  			alert("error")
    	  		}
    	  	});
    	}
    	b = ajax_showAllPois;
    
});

function a(c,d){
	$.ajax({
  		method : "POST",
  		timeout : 5000,
  		url : path+"/ajax_addNote",
  		data :{
  			"now":new Date().getTime(), 
  			"note.content":$(".well").val(),
  			"poiId":d,
  			"userName":"胡森"},   // 防止缓存问题
  		dataType : "json",
  		contentType :'application/x-www-form-urlencoded; charset=UTF-8',
  		async:false,
  		success : function(data) {
  			alert(data);
  		},
  		error : function(s) {
  			console.log(s)
  		}
  	});
	b(flag);
}




