$("input[id=username]").blur(
		function() {
			if (checkusername()
					&& validateInput('username', 'userblank', 'userLabel')) {
				$(this).data({
					's' : 1
				});
			} else {
				$(this).data({
					's' : 0
				});
			}
		});
$("input[id=pwd]").blur(function() {
	if (pwdComplex() && validateInput('pwd', 'pwdblank', 'pwdLabel')) {
		$(this).data({
			's' : 1
		});
	} else {
		$(this).data({
			's' : 0
		});
	}
});
$("input[id=pwd2]").blur(
		function() {
			if (checkrepassword()
					&& validateInput('pwd2', 'pwdblank2', 'pwdsureLabel')) {
				$(this).data({
					's' : 1
				});
			} else {
				$(this).data({
					's' : 0
				});
			}
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
$("input[id=name]").blur(function() {
	validateInput('name', 'nameblank', 'nickLabel') ? $(this).data({
		's' : 1
	}) : $(this).data({
		's' : 0
	});
});
$("input[id=age]").blur(
		function() {
			if (validateAge('age', 'ageblank')
					&& validateInput('age', 'ageblank', 'ageLabel')) {
				$(this).data({
					's' : 1
				});
			} else {
				$(this).data({
					's' : 0
				});
			}
		});

$("input[id=pwd]").keyup(function() {
	if (pwdComplex() && validateInput('pwd', 'pwdblank', 'pwdLabel')) {
		$(this).data({
			's' : 1
		});
	} else {
		$(this).data({
			's' : 0
		});
	}
});

$("input[id=name]").keyup(function() {
	validateInput('name', 'nameblank', 'nickLabel') ? $(this).data({
		's' : 1
	}) : $(this).data({
		's' : 0
	});
});
$("input[id=age]").keyup(function() {
	if (validateAge() && validateInput('age', 'ageblank', 'ageLabel')) {
		$(this).data({
			's' : 1
		});
	} else {
		$(this).data({
			's' : 0
		});
	}
});
$("form").submit(function() {
	$(".form-control").blur();
	result = 0;
	$(".form-control").each(function() {
		result += $(this).data('s');
	});
	if (result != 6) {
		$("#msg").html("<font color='red'>请确认用户信息是否全部正确填写!</font>");
		return false;
	}
	$("#pwd").val(md5($("#pwd").val()));
	$("#pwd2").val(md5($("#pwd2").val()));

});
$(".userLabel,.checkLabel,.ageLabel,.pwdLabel,.nickLabel,.pwdsureLabel").hide();