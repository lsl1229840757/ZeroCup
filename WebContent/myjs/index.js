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