var items = $('#navMenu-items').width();
var itemSelected = document.getElementsByClassName('navMenu-item');
// 使其平移到第一个按钮
pointerScroll(itemSelected);
$('.navMenu-item').click(function() {
	pointerScroll(this);
	$('.navMenu-item').find('.active').removeClass('active');
	$(this).find('span').addClass('active');
});
function pointerScroll(ele) {
	var parentScroll = $("#navMenu-items").scrollLeft();
	var offset = ($(ele).offset().left - $('#navMenu-items').offset().left);
	var totalelement = offset + $(ele).outerWidth() / 2;
	var rt = (($(ele).offset().left) - ($('#navMenu-wrapper').offset().left) + ($(ele)
			.outerWidth()) / 2);
	$('#menuSelector').animate({
		left : totalelement + parentScroll
	})
}
//调整速度和位置
$('#spring').parallax("50%", 0.2);
$('#summer').parallax("50%", 0.2);
$('#autumn').parallax("50%", 0.4);
$('#winter').parallax("50%", 0.4);
//画图
width = $(window).width();
height = $(window).height();
$('#graph').css({'width':width*0.8,'height':height});
var dom = document.getElementById("graph");
var myChart = echarts.init(dom);
var app = {};
option = null;
myChart.showLoading();
$.getJSON(path+'/data/test.json', function (json) {
	console.log(json)
    myChart.hideLoading();
    myChart.setOption(option = {
        title: {
            text: ''
        },
        animationDurationUpdate: 1500,
        animationEasingUpdate: 'quinticInOut',
        series : [
            {
                type: 'graph',
                layout: 'none',
                // progressiveThreshold: 700,
                data: json.nodes.map(function (node) {
                    return {
                        x: node.x,
                        y: node.y,
                        id: node.id,
                        name: node.label,
                        symbolSize: node.size,
                        itemStyle: {
                            normal: {
                                color: node.color
                            }
                        }
                    };
                }),
                edges: json.edges.map(function (edge) {
                    return {
                        source: edge.sourceID,
                        target: edge.targetID
                    };
                }),
                label: {
                    emphasis: {
                        position: 'right',
                        show: true
                    }
                },
                roam: true,
                focusNodeAdjacency: true,
                lineStyle: {
                    normal: {
                        width: 0.5,
                        curveness: 0.3,
                        opacity: 0.7
                    }
                }
            }
        ]
    }, true);
});
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}