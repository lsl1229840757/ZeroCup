$(function() {
  var items = $('#navMenu-items').width();
  var itemSelected = document.getElementsByClassName('navMenu-item');
  var backgroundColours = ["rgb(133, 105, 156)", "rgb(175, 140, 115)","rgb(151, 167, 109)","rgb(171, 100, 122)","rgb(105, 134, 156)","rgb(152, 189, 169)"]
  pointerScroll($(itemSelected));
  $("#navMenu-items").scrollLeft(200).delay(200).animate({
    scrollLeft: "-=200"
  }, 2000, "easeOutQuad"); 
  $('.navMenu-item').click(function () {
		$('#navMenu').find('.active').removeClass('active');
		$(this).addClass("active");
		pointerScroll($(this));
		newBackgroundColour(backgroundColours)
	});
});
var newBackgroundColour = function(backgroundColours){
  var newBackground = backgroundColours[Math.floor(Math.random()*backgroundColours.length)];
  if(newBackground != $("#navMenu").css("background-color")){
    $("#navMenu").css("background",newBackground);
  }else{
    newBackgroundColour(backgroundColours);
  }
}
function pointerScroll(ele) {
	var parentScroll = $("#navMenu-items").scrollLeft();
	var offset = ($(ele).offset().left - $('#navMenu-items').offset().left);
	var totalelement = offset + $(ele).outerWidth()/2;
	var rt = (($(ele).offset().left) - ($('#navMenu-wrapper').offset().left) + ($(ele).outerWidth())/2);
	$('#menuSelector').animate({
		left: totalelement + parentScroll
	})
}