$("input[id=username]").blur(function() {
	validateInput('username', 'userblank', 'input_sty') ? $(this).data({
		's' : 1
	}) : $(this).data({
		's' : 0
	});
});
$("input[id=pwd]").blur(function() {
	validateInput('pwd', 'pwdblank', 'input_sty2') ? $(this).data({
		's' : 1
	}) : $(this).data({
		's' : 0
	});
});
$("input[id=checkCode]").blur(function() {
	if (checkCode() && validateInput('checkCode', 'identblank', 'checkLabel')) {
		$(this).data({
			's' : 1
		});
	} else {
		$(this).data({
			's' : 0
		});
	}
});
$("input[id=username]").keyup(function() {
	validateInput('username', 'userblank', 'input_sty') ? $(this).data({
		's' : 1
	}) : $(this).data({
		's' : 0
	});
});
$("input[id=pwd]").keyup(function() {
	validateInput('pwd', 'pwdblank', 'input_sty2') ? $(this).data({
		's' : 1
	}) : $(this).data({
		's' : 0
	});
});

$("form").submit(function() {
	$(".form-control").blur();
	result = 0;
	$(".form-control").each(function() {
		result += $(this).data('s');
	});
	if (result != 3) {
		$("#msg").html("<font color='red'>请检查登录信息是否完善!</font>");
		return false;
	}
	$("#pwd").val(md5($("#pwd").val()));

});
$(".input_sty,.input_sty2,.checkLabel").hide();