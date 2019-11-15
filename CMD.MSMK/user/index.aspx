<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CMD.MSMK.Admin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>常见问题</title>
		<!-- 	<link type="text/css" href="css/help.css" rel="stylesheet" /> -->
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
			#div1 {
				width: 100%;
			}

			.top {
				width: 100%;
				height: 10%;

			}

			#middle {
				width: 100%;
				height: 80%;
				margin-left: 200px;
				margin-top: 10%;

			}

			.down {
				width: 100%;
				height: 100px;


			}

			#panel {
				width: 80%;
			}

			.head {
				padding: 3px;
				cursor: pointer;
				color: lightsteelblue;
			}

			.content {
				padding: 5px;
				/* text-indent: 2em; */
				display: block;
				font-size: 18px;
				color: #C6C8CA;
			}
			h1,h3
			{
				color: gray;
			}
		</style>

		<script type="text/javascript">
			$(function() {
				$("#panel h5.head").click(function() {
					$(this).next().slideToggle();
				})
				$(".content").hide();
			})


		</script>
</head>
	<body style="background-color:#343A3A ;">

		<div id="div1">
           
			<%--<div class="top">
				<img src="../img/kxo/1.jpg" />
				<iframe src="top.html" width="100%" height="50%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible;  z-index: 200; width: 100%; height: 56px; top:0px;"></iframe>
			</div>--%>
			<div id="middle" style=" width: 80%;">
				<div class="left" style=" float: left; width: 10%; margin-bottom: 10%;">
					<img src="../img/cebianlan.gif" />
				</div>
				<div class="right" style="width: 70%; float: left; padding-top: 73px; margin-left: 200px;">
					<div>
						<h1>常见问题</h1>
						<select>
							<option>检修腕表</option>
							<option>保养腕表</option>
							<option>选购腕表</option>
						</select>
						<hr style="color: #B0C4DE;" />
					</div>

					<h3>选购Every Time腕表</h3>
					<div id="panel">
						<h5 class="head">哪里可选购Every Time腕表？</h5>
						<div class="content">
							相关问题：<br />
							哪里可购买Every Time腕表？/哪些商店销售Every Time腕表？/如何寻找最就近的Every Time零售商？<br /><br />
							Every Time特约零售商出售全新和正品Every Time腕表，认证的真品可享全球五年保用保证。Every Time特约零售商遍布全球逾百个国家。
						</div>

					</div>
					<div id="panel">
						<h5 class="head">如何确认腕表的真伪？</h5>
						<div class="content">
							相关问题：<br />
							如何认证Every Time手表？/如何分辨Every Time腕表的真假？/如何辨出Every Time膺品？<br /><br />
							顾客只应在Every Time特约零售商选购腕表，他们均获授权销售及检修Every Time腕表。他们具备所需技能、培训、专业知识及特殊设备，保证每只Every Time腕表的各个零件均为真品，可靠耐用。
						</div>

					</div>

					<h3>保养Every Time腕表</h3>
					<div id="panel">
						<h5 class="head">如何打理Every Time腕表？</h5>
						<div class="content">
							<span>相关问题：<br /></span>
							如何保养Every Time手表？/如何清洁Every Time手表？/如何清洗Every Time表？ <br /><br />
							偶尔用纤维布拭擦有助保持腕表光泽。您也可使用肥皂水和软刷（不适用于皮革表带）间中清洗表壳和金属表带。若腕表曾经接触过海水，必需彻底清洗，以免积聚盐份或沙粒。清洁腕表前，请确保表冠已经旋紧以防止水份渗入。
						</div>

					</div>
					<div id="panel">
						<h5 class="head">是否需要为Every Time腕表上链？</h5>
						<div class="content">
							相关问题:
							如何为Every Time腕表上链？/Every Time腕表在未有佩戴的情况下可运行多久？/为何Every Time腕表停止嘀嗒作响？<br /><br />
							您无需为每日佩戴Every
							Time腕表上链。日常摆动手腕时，恒动摆铊会将能量传至腕表，从而提供持续稳定的动力。若您暂时脱下腕表，腕表已储备的动力便足够运行70小时，而持续运行的时间则视乎型号而定。为机芯手动上链时，请旋松表冠至上链位置，并顺时针转动约20次。请谨记把表冠旋紧，以确保防水功能。
						</div>

					</div>

					<h3>检修Every Time腕表</h3>
					<div id="panel">
						<h5 class="head">每隔多久应检修Every Time腕表？</h5>
						<div class="content">
							相关问题：<br />
							为何需要检验Every Time腕表？/每隔多久应维修Every Time手表？<br /><br />
							为确保腕表保持准确及防水，Every Time建议您定期到特约零售商或服务中心进行专业检修。视乎表款及实际使用情况，Every Time建议您每十年检修腕表。
						</div>

					</div>
					<div id="panel">
						<h5 class="head">Every Time检修服务包括什么？</h5>
						<div class="content">
							相关问题：<br />
							维修时会出现什么情况？/修理Every Time腕表的步骤是怎样？什么是检修服务？<br /><br />
							在售后服务过程中，腕表工匠会以超声波洁净各个部件，再仔细检查。若发现任何部件未达劳力士工艺及运行标准，便会以原厂部件将之替换。机芯会添上润滑剂，并通过电子测试以确保时间运行准确。表壳及金属表带则重新修饰以保持亮泽。最后，腕表会接受连串严谨的技术测试及检验，从而确保腕表的防水功能、动力储备功能及精确度。在完成检修后，您的Every
							Time腕表可获保用保证。
						</div>
					</div>
				</div>

			</div>

			<%--<div class="down navbar navbar-expand-sm bg-dark">
				<iframe src="down.html" width="100%" height="100%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible;  z-index: 200; top:0px;"></iframe>
			</div>--%>
			<div id="zhiding" onclick="pageScroll()"><img id="topping" src="../img/top.gif"/></div>
		</div>
	</body>
</html>
