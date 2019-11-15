<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="top.aspx.cs" Inherits="CMD.MSMK.top" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet"/>
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/login.css" rel="stylesheet" />
    <link href="../css/login1.css" rel="stylesheet" />
    <link href="../css/login2.css" rel="stylesheet" id="cssfile" />
    <script src="../js/Jqury.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/login2.js"></script>
    <script src="../js/jquery-1.7.js"></script>
    <script src="../js/login.js"></script>
    <script src="../js/jquery.cookie.js"></script>
    <style type="text/css">
        .nav-link {
            display: inline-block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav>
                <div class="top navbar navbar-expand-sm bg-dark navbar-dark navbar-expand-sm bg-dark navbar-dark">
                    <a class="navbar-brand" href="javascript:void(0)" onclick="window.parent.location ='home-page.html'">每时每刻</a>
                    <button type="button" class="btn btn-default btn-xs white">白</button>
                    <button type="button" class="btn btn-default black" style="background-color: #343A3A!important;">黑</button>

                    <div class="daohang">
                        <ul class="navbar-nav  justify-content-end" style="width: 1660px;">
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='kxo.html'">卡西欧</a>
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='DW.html'">DW</a>
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='amn.html'">阿玛尼</a>
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='lq.html'">浪琴</a>
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='lls.html'">劳力士</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='Relation.html'">联络方式</a>
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='index.html'">常见问题</a>
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='help.html'">帮助中心</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='shopping3.html'">购物车</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link" href="javascript:void(0)" onclick="window.parent.location ='VIP_Privilege.html'">会员特权</a>
                            </li>

                            <a href="login.html">
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal" id="navbardropna" onclick="window.parent.location ='login.html'">
                                    登陆
                                </button>
                            </a>
                            <button type="button" class="btn btn-danger" id="chenggong">退出</button>
                    </div>
                    </li>
				</ul>
                </div>
        </div>
    </form>
</body>
</html>
