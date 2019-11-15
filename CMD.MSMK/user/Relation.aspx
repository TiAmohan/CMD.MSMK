<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Relation.aspx.cs" Inherits="CMD.MSMK.Admin.Relation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>联络方式</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
	<link href="../css/login.css" rel="stylesheet" />
	<script src="../js/jquery-1.7.js"></script>
	<script src="../js/login.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script src="../js/Jqury.js"></script>
	<script src="../js/popper.js"></script>
	<script src="../js/Istop.js"></script>
	<link href="../css/Istop.css" rel="stylesheet" />
	<link href="../css/login2.css" rel="stylesheet" id="cssfile" />
	<style type="text/css">
		.div1 {
			height: 1000px;
		}

		.top {
			width: 100%;
			height: 10%;

		}

		#middle {
			width: 100%;
			height: 80%;
			margin-top: 10%;

		}

		.down {
			width: 100%;
			height: 100px;


		}

		#right {
			float: right;
			width: 60%;
			margin-bottom: 10%;
                  margin-right: 70px;
		}

		#left {
			float: left;
			width: 30%;
			margin-left: 120px;
			padding-top: 50px;


		}

		#right p {
			font-size: 25px;
		}
	</style>
</head>
<body style="background-color: #343a3a; color: white;">
    <form id="form1" runat="server">
		<div class="div1">
			<div id="zhiding" onclick="pageScroll()"><img id="topping" src="../img/top.gif"/></div>
			<div class="top">
				<iframe src="user/top.aspx" width="100%" height="50%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible;  z-index: 200; width: 100%; height: 56px; top:0px;"></iframe>
			</div>
			<div id="middle">
				<div id="left">
					<h1>嗨！需要帮助吗？</h1>
					<h3>您或许可以在<a href="index.aspx">常见问题<a />中找到答案。</h3>
					<h4>也可以联系我们：</h4>
					<img src="../img/无标题.gif" style="width: 500px; height: 200px; margin-top: 80px;" />
				</div>
				<div id="right">
					<h2>联络方式</h2>
					<p><img src="../img/iphone.png" style=" width: 30px; height: 30px;" /><b>电话</b></p>
					<p>全产品：400-00-00730</p>
					<p>电话受理时间：9:00-18:00(国定假日除外) </p>
					<p><img src="../img/qq.png" style=" width: 30px; height: 30px;" /><b>在线客服</b></p>
					<p>我们将为您提供民用全产品的在线客服，您可以长按下方图片扫描二维码添加好友。</p>
					<p>我们将第一时间为您解决问题</p>
					<p>受理时间：9:00-21:00（国定假日除外）</p>
					<p><img src="../img/qqfile.jpg"/ style="width: 100px; height: 80px;"/></p>
					<p><img src="../img/wx.png" style=" width: 30px; height: 30px;" /><b>微信客服</b></p>
					<p>我们将为您提供民用全产品的微信客服，您可以关注“Every Time”微信公众号或扫描以下二维码在手机端进行咨询。</p>
					<p>受理时间：9:00-21:00（国定假日除外）</p>
					<p><img src="../img/wxfile.jpg" style="width: 100px; height:80px;" /></p>
				</div>
			</div>
			<%--<div class="down navbar navbar-expand-sm bg-dark">
				<iframe src="down.html" width="100%" height="100%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible;  z-index: 200; top:0px;"></iframe>
			</div>--%>
		</div>
    </form>
</body>
</html>
