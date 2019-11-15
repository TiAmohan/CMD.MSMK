$(function() {
	$("#chenggong").hide();
	 // if($.cookie("LoginUser")!=null){alert("000");return;}
	// 判断cookie是否有值
	var LoginUser = JSON.parse($.cookie("LoginUser"));
	if (LoginUser == null) {
		$("#navbardropna").show();
		$("#chenggong").hide();
		return;
	}
	// alert(LoginUser.username);
	if (LoginUser.username == null) {
		return;
	}
	// 获取用户名
	var username = LoginUser.username;
	$("#chenggong").text(username);
	//存储用户状态
	var zhuangtai = {
		"zhuangtai": "1",
	};
	var zt = JSON.stringify(zhuangtai);
	$.cookie("zhuangtai", zt, {
		path: '/',
		expires: 1
	});
	// 显示退出按钮  隐藏登陆按钮
	$("#chenggong").show();
	$("#navbardropna").hide();
	// 
	if (LoginUser.username == $('#navbardropna').hide()) {
		window.parent.location.href = "home-page.html";
	}
	// window.parent.location.href="VIP_Privilege.html";
	// 点击退出时执行
	$("#chenggong").click(function() {
		// 显示登陆按钮  显示成功按钮
		$("#chenggong").hide();
		$("#navbardropna").show();
		// 清除cookie
		var userModel = {
			"username": null,
		};
		var userStr = JSON.stringify(userModel);
		$.cookie("LoginUser", userStr, {
			path: '/',
			expires: 1
		});
		//退出后清除登录状态
		var zhuangtai = {
			"zhuangtai": "0",
		};
		var zt = JSON.stringify(zhuangtai);
		$.cookie("zhuangtai", zt, {
			path: '/',
			expires: 1
		});
		
	})
})
