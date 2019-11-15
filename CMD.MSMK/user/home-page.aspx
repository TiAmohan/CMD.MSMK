<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home-page.aspx.cs" Inherits="CMD.MSMK.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>每时每刻</title>
    <link href="../css/index.css" type="text/css" rel="stylesheet" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/login.css" rel="stylesheet" />
    <link href="../css/Istop.css" rel="stylesheet" />
    <link href="../css/style2.css" rel="stylesheet" />
    <link href="../css/login2.css" rel="stylesheet" id="cssfile" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="nav">
                <div id="zhiding" onclick="pageScroll()">
                    <img id="topping" src="../img/top.gif">
                </div>
                <div class="top" id="top">

                    <iframe src="top.aspx" width="100%" height="50%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible; z-index: 200; width: 100%; height: 56px; top: 0px;"></iframe>
                </div>
                <div class="con huanfu">
                    <div id="app"></div>
                    <!-- 相关产品 -->

                    <div class="comm-box">
                        <div class="comm-header">
                            <h3>相关产品</h3>
                        </div>
                        <div class="comm-content">
                            <ul class="comm-content-list clearfix">
                                <li>
                                    <div class="comm-list-item">
                                        <img src="../img/logo/1.jpg" alt="">
                                        <p>劳力士</p>
                                        <div class="comm-list-cont">
                                            <div class="comm-list-text">
                                                <p>劳力士提供一系列经典及专业的腕表，迎合不同风格。探索劳力士腕表系列，总有一款合您心意</p>
                                                <div>
                                                    <a href="lls.html" class="comm-go-home">访问产品列表</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comm-list-item">
                                        <img src="../img/logo/5.png" alt="">
                                        <p>DW</p>
                                        <div class="comm-list-cont">
                                            <div class="comm-list-text">
                                                <p>DW手表的含义是“等我”，很浪漫的一个表白方式，永远不要忘记时间，因为有一个人一直在另一个地方等着你。</p>
                                                <div>
                                                    <a href="DW.html" class="comm-go-home">访问产品列表</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comm-list-item">
                                        <img src="../img/logo/3.jpg" alt="">
                                        <p>阿玛尼</p>
                                        <div class="comm-list-cont">
                                            <div class="comm-list-text">
                                                <p>随意优雅”是阿玛尼自创建以来一直寻求的风格。细腻的质感和简洁的线条无不彰显出舒适、洒脱、奔放和自由的特点.</p>
                                                <div>
                                                    <a href="amn.html" class="comm-go-home">访问产品列表</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comm-list-item">
                                        <img src="../img/logo/2.png" alt="">
                                        <p>黛绰维纳</p>
                                        <div class="comm-list-cont">
                                            <div class="comm-list-text">
                                                <p>“黛绰维纳”演绎全新圆形设计……华丽的圆形表壳,贯彻着浪琴表“黛绰维纳”永恒的光彩！进人现今这个热闹的新纪元!</p>
                                                <div>
                                                    <a href="lq.html" class="comm-go-home">访问产品列表</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="comm-list-item">
                                        <img src="../img/logo/4.jpg" alt="">
                                        <p>卡西欧</p>
                                        <div class="comm-list-cont">
                                            <div class="comm-list-text">
                                                <p>卡西欧手表成立于1946年，卡西欧所代表的活力、年轻、时尚、多功能的品牌形象已深入民心。</p>
                                                <div>
                                                    <a href="kxo.html" class="comm-go-home">访问产品列表</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="down navbar navbar-expand-sm bg-dark">
                    <iframe src="down.aspx" width="100%" height="100%" frameborder="0" scrolling="no" style="position: absolute; visibility: visible; z-index: 200; top: 0px;"></iframe>
                </div>
            </div>
        </div>
        </form>
</body>
<script src="../js/react.production.min.js"></script>
<script src="../js/react-dom.production.min.js"></script>
<script src="../js/react-transition-group.min.js"></script>
<script src="../js/script2.js"></script>
<script src="../js/Jqury.js"></script>
<script src="../js/popper.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/login.js"></script>
<script src="../js/Istop.js"></script>
<script src="../js/index(1).js"></script>
<script src="../js/jquery.cookie.js"></script>
</html>
