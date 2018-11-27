$('.majors .panel').not($('.majors .panel').eq(0)).hide();
$('.majors .major').click(function() {
	index = $(this).index('.majors .major');
	$('.majors .panel').eq(index).show();
	$('.majors .panel').not($('.majors .panel').eq(index)).hide();
})