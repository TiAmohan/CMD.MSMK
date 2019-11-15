window.onload=function(){
	var ren=document.getElementById("ren");
	var dizhi=document.getElementById("dizhi");
	var tel=document.getElementById("tel");
	var buy=document.getElementById("buy");
	
	buy.onclick=function(){
		if(ren.value==""||dizhi.value==""||tel.value==""){
			alert("请完善您的收货地址");
			return;
		}else{
			alert("购买成功！");
		}
	}
}
// s5.onclick = function() {
// 		if(s1.value=="-请选择-"&&s2.value=="-请选择-"){
// 			alert("请完善送货地址");
// 			return;
// 		}else if(s3.value==0&&s4.value==0){
// 			alert("请完善送货地址");
// 			return;
// 		} else {
// 			alert("确认成功");
// 		}
// 	}
// }
