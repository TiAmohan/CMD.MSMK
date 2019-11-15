<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="CMD.MSMK.Admin.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #343A3A!important;">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link rel="stylesheet" href="../css/style4.css" />
		<link rel="stylesheet" href="../css/style-tab.css"/>
		<link rel="stylesheet" href="../css/style-tab.css"/>
		<link rel="stylesheet" href="../css/reset.min.css"/>

		<link rel="stylesheet" href="../css/login.css" type="text/css" />
		<link rel="stylesheet" href="../css/login1.css" type="text/css" />
		<link rel="stylesheet" href="../css/login2.css" type="text/css" />

		<link rel="stylesheet" href="../css/bootstrap.css"/>
		<script src="../js/Jqury.js" type="text/javascript"></script>
		<script src="../js/bootstrap.js" type="text/javascript"></script>
		<script src="../js/popper.js" type="text/javascript"></script>
		<script src="../js/jquery-1.7.js"></script>
		<script src="../js/jquery.min.js"></script>
		<script src="../js/index.js"></script>
		<script src="../js/login.js"></script>
		<script src="../js/jquery.cookie.js"></script>
		<style>
			.login-div-content{
				width: 100%;
				height: 520px;
				/* top:170px ; */
				margin-top: 170px;
				background: url(../img/timg.jpg)no-repeat;
				/* background-color: #343A3A!important; */
			}
			.tab-wrapper{
				margin-left: 1420px;
			}
			.tab-menu li{
				margin-top: 18px;
				font-size: 20px;
				width: 200px;
				text-align: center;
			}
			#first-ul-content li{
				margin-top: 20px;
			}
			.down {
				background-color: #000000;
				width: 100%;
				height: 100px;
				margin-top: 130px;
				float: left;
			}
			
		</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="login-div-content">
				<div class="tab-wrapper" style="width: 450px;">

					<ul class="tab-menu">
						<li class="active">会员登陆</li>
						<li>用户注册</li>
					</ul>

					<div class="tab-content" style="width: 450px;">
						<div id="content1" style="width: 450px;">
							
								<ul class="ul-centent" id="first-ul-content">
									<li>
                                        <asp:TextBox ID="username" runat="server" CssClass="input"></asp:TextBox>
									</li>
									<li>
                                        <asp:TextBox ID="password" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
									</li>
									<li>
                                        <asp:Button ID="Button1" CssClass="login-button" runat="server" Text="登陆" OnClick="Button1_Click" />
									</li>
								</ul>
							
						</div>
						<div id="content2" style="width: 450px;">
							
								<ul class="ul-centent">
									<li>
                                        <asp:TextBox ID="TextBox1" CssClass="input" runat="server"></asp:TextBox>
									</li>
									<li>
                                        <asp:TextBox ID="TextBox2" CssClass="input" runat="server" TextMode="Password"></asp:TextBox>
									</li>
									<li>
                                        <asp:TextBox ID="TextBox3" CssClass="input" runat="server"></asp:TextBox>
									</li>
									<li>
                                        <asp:TextBox ID="TextBox4" CssClass="input" runat="server"></asp:TextBox>
									</li>
									<li>
                                        <asp:Button ID="Button2" CssClass="register-button" runat="server" Text="注册" />
									</li>
								</ul>
							
						</div>
						

					</div>

				</div>
			</div>
        </div>
    </form>
</body>
</html>
