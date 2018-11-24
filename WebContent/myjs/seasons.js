$('.seasons .panel').not($('.seasons .panel').eq(0)).hide();
$('.seasons .season').click(function() {
	index = $(this).index('.seasons .season');
	$('.seasons .panel').eq(index).show();
	$('.seasons .panel').not($('.seasons .panel').eq(index)).hide();
})