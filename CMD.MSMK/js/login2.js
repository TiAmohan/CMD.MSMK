$(function(){
// 换肤
	// $(".white").hide();
	// $(".black").show();

	$(".white").click(function() {
		// alert("123");
		$("body").add("selected").siblings().removeClass("selected");
		$("#cssfile").attr("href", "css/login1.css");
// 		if ($("#cssfile").attr("href") == "css/login1.css") {
// 			$(".black").show();
// 			$(".white").hide();
// 		} 
		// $(".bg-dark").css("background-color","#343A3A!important");
	})

	$(".black").click(function() {
		// alert("123");
		$("body").add("selected").siblings().removeClass("selected");
		$("#cssfile").attr("href", "css/login2.css");
// 		if ($("#cssfile").attr("href") == "css/login2.css") {
// 			$(".white").show();
// 			$(".black").hide();
// 		}
	})
	})