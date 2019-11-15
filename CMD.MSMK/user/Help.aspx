<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="CMD.MSMK.Admin.Help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>帮助中心</title>
		<link  href="../css/bootstrap.css" rel="stylesheet" />
		<link href="../css/login.css" rel="stylesheet" />
		<script src="../js/login.js"></script>
		<script src="../js/bootstrap.js"></script>
		<script src="../js/Jqury.js"></script>
		<script src="../js/popper.js"></script>
		<script src="../js/Istop.js"></script>
		<link  href="../css/Istop.css" rel="stylesheet" />
		<link href="../css/login2.css" rel="stylesheet" id="cssfile" />
		<style type="text/css">
				.div1{
					width: 100%;
					color: grey;
				}
				.top
				{
					width: 100%;
					height: 10%;
					
				}
			
				#middle
				{
					width: 100%;
					height: 80%;
					margin-left: 200px;
					margin-top: 10%;
					margin-bottom: 10%;
				}
				.down
				{
					width: 100%;
					height: 100px;
					
		
				}
				.left img
				{
					width: 55%;
				}
	           .zhong
			   {
				   padding-top: 53px;
					 margin-left: 20px;
			   }
			   .zhong img
			   {
				   width: 650px;
			   }
			   #middle p
			   {
				   font-size: 18px;
			   }
</style>
</head>
<body style=" background-color: #343A3A;">
		<div class="div1">
			<div id="zhiding" onclick="pageScroll()"><img id="topping" src="../img/top.gif"/></div>
			<%--<div class="top">
				<iframe src="top.html" width="100%" height="50%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible;  z-index: 200; width: 100%; height: 56px; top:0px;"></iframe>
			</div>--%>
			
			<div id="middle" >
				<div class="left" style=" width: 15%; float: left; ">
					<img src="../img/cebianlan.gif"/>
				</div>
				<div class="zhong" style=" width: 85%;">
				<h3>购物流程如下:</h3>
				<img src="../img/help.png" />
				<p>1、登录Every Time，选购您想要购买的商品。</p>
				<p>2、选择购买数量，点击“立即购买”。</p>
				<p>3、会员登录：(如您是第一次购买，请进入新会员注册页面：>><a href="#">即刻注册<a/>)，如果您已有万表网会员帐号，请直接输入用户名和密码登录。</p>
				<p>4、填写订单信息：如果您想继续购买其它商品，可以继续挑选；如果您已挑选完毕，请填写收货人信息、发票类型及留言；填写完成后，请点击“立即购买”。</p>
				<p>5、提示“购买成功”之后，等待收货。</p>
				<h4>温馨提示：</h4>
				<p>如有疑问，请联系Every Time在线客服或者拨打客服热线：400-00-00730。</p>
				<p>祝您购物愉快！！！</p>
				</div>
				<div class="right" style=" width: 10%;"></div>
			
			</div>
			<%--<div class="down navbar navbar-expand-sm bg-dark">
				<iframe src="down.html" width="100%" height="100%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible;  z-index: 200; top:0px;"></iframe>
			</div>--%>
		</div>
	</body>
</html>
