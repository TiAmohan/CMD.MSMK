$(function() {
	$("#chenggong").hide();
	$("#denglu").click(function() {
		if ($("#name").val() == "" || $("#pwd").val() == "" || $("#shouji").val() == "" || $("#youxiang").val() == "") {
			alert("请完善信息");
			return;
		}
		$("#chenggong").text($("#name").val());
		$('#myModal').modal('hide');
		$("#navbardropna").hide();
		$("#chenggong").show();
	})
	$("#chenggong").click(function() {
		$("#chenggong").hide();
		$("#navbardropna").show();
	})
})
