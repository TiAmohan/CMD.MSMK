$(document).ready(function() {
	var registerModel = JSON.parse($.cookie("registerUser"));
	if (registerModel != null && registerModel != undefined) {
		var username = registerModel.username;
		var password = registerModel.password;
	}
	$("#username").val(username);
	$("#password").val(password);
	$("#register-buttun").click(function() {
		if ($("#username-register").val() == "" || $("#password-register").val() == "" || $("#phone-number").val() ==
			"" || $("#e-mail").val() == "") {
			return;
		}
		// 前台格式验证
		var yanz = /^[\u4e00-\u9fa5]+$/;
		if (!yanz.test($("#username-register").val())) {
			return;
		}

		var yanz1 = /^[A-Za-z0-9_]+$/;
		if (!yanz1.test($("#password-register").val())) {
			return;
		}


		var yanz2 = /^\d+$/;
		if (!yanz2.test($("#phone-number").val())) {
			// alert("错误");
			return;
		}
		var yanz3 = /^[\d]{6,10}@qq[.]com+$/;
		if (!yanz3.test($("#e-mail").val())) {
			return;
		}
		var registerModel = {
			"username": $('#username-register').val(),
			"password": $('#password-register').val(),
			"phone-number": $('#phone-number').val(),
			"e-mail": $('#e-mail').val()
		};
		var registerStr = JSON.stringify(registerModel);
		$.cookie("registerUser", registerStr, {
			path: '/',
			expires: 1,
		});

		// $(".ul-centent:eq(1)").prepend("<li id='tixing'>注册成功</li>");
		$("#content1").show();
		$(".tab-menu li:eq(0)").addClass("active");
		$(".tab-menu li:eq(0) div").css("width", "100%");
		$("#content2").hide();
		$(".tab-menu li:eq(1)").removeClass("active");
		$(".tab-menu li:eq(1) div").css("width", "0%");
		$("#first-ul-content").append("<li style='margin-top:-6%;margin-left: 27%;color: #8b8f93;'>注册成功,可进行直接登陆</li>");

		// $("#login-buttun").val("注册成功请登录");
	})

	$("#login-buttun").click(function() {

		$("#login-buttun").attr("type", "submit");
		if ($("#username").val() == "" || $("#password").val() == "") {
			return;
		}
		var yanz = /^[\u4e00-\u9fa5]+$/;
		if (!yanz.test($("#username").val())) {
			return;
		}
		if ($("#username").val() == username) {
			if ($("#password").val() == password) {
				var userModel = {
					"username": $('#username').val(),
					"password": $('#password').val()
				};
				var userStr = JSON.stringify(userModel);
				$.cookie("LoginUser", userStr, {
					path: '/',
					expires: 1
				});
				$("#login-buttun").attr("type", "button");
				window.parent.location = "home-page.html";
			} else {
				$("#password").val("");
				$("#password").attr("placeholder", "密码错误");
				return;
			}
		} else {
			$("#username").val("");
			$("#password").val("");
			$("#username").attr("placeholder", "账号或密码错误");
			return;
		}

	})
})
