var colorarray = [[35,205,182,0.5],[142,229,213,0.5],[148,251,240,0.5],[192,247,252,0.5],[172,248,211,0.5],[230,228 ,192,0.5],[231,202,127,0.5],[255,215,187,0.5],[255,179,168,0.5],[255,76,108,0.5]]
function formatDate(time,format='YY-MM-DD hh:mm'){
    var date = new Date(time);

    var year = date.getFullYear(),
        month = date.getMonth()+1,//月份是从0开始的
        day = date.getDate(),
        hour = date.getHours(),
        min = date.getMinutes(),
        sec = date.getSeconds();
    var preArr = Array.apply(null,Array(10)).map(function(elem, index) {
        return '0'+index;
    });////开个长度为10的数组 格式为 00 01 02 03

    var newTime = format.replace(/YY/g,year)
                        .replace(/MM/g,preArr[month]||month)
                        .replace(/DD/g,preArr[day]||day)
                        .replace(/hh/g,preArr[hour]||hour)
                        .replace(/mm/g,preArr[min]||min)
                        .replace(/ss/g,preArr[sec]||sec);
    return newTime;         
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
       		/*view.on("click", function(e) {
       		        alert(e.mapPoint.latitude);
       		        alert(e.mapPoint.longitude);
       		});*/
       	$("#goback").click(function(){
       		view.goTo({
         		  target: [114.35324042896691,30.535762797065825],
         		  zoom:15
         		}, opts);
       	});
});