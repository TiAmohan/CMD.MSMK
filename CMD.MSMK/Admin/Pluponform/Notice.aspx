<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Notice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../../js/jquery-1.7.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <script src="../../js/bootstrap.js"></script>
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <script src="../../js/jquery.tmpl.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table id="tb" class="table table-striped table-hover table-bordered ">
                    <tr style="font-size: 20px">
                        <th>标题</th>
                        <th>内容</th>
                        <th>发布时间</th>
                        <th>操作
                        <%--<asp:Button ID="Button2" runat="server" Text="添加" class="btn btn-primary" PostBackUrl="~/Admin/Pluponform/NoticeAdd.aspx" />--%>
                        </th>
                    </tr>
                    <script id="sc" type="text/x-jquery-tmpl">
                        <tr>
                            <td>${NoticeTitle}</td>
                            <td>${NoticeContent}</td>
                            <td>${NoticeTime}</td>
                            <td>
                                <a href="#" noticeid="${NoticeID}" class="btn btn-danger cc">删除</a>
                                <%--<asp:Button ID="Button1" runat="server" NoticeID="${NoticeID}" Text="删除" class="btn btn-danger" />--%></td>
                        </tr>
                    </script>
                </table>
            </div>


            <%--<asp:Button ID="Button2" runat="server" Text="添加" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" />--%>
    </form>
    <input id="Button1" id="state" class="btn btn-info" type="button" value="显示删除公告" />
    <label id="state">0</label>
    <%--<button class="btn btn-info" id="state" state="0">显示删除公告</button>--%>
    <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">添加公告</button>
    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">公告发布
                    </h4>
                </div>
                <div class="modal-body">
                    <form>
                        <input type="text" class="form-control" id="txt_title" placeholder="标题" />
                        <textarea id="txt_neirong" class="form-control" rows="3" placeholder="内容"></textarea>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" id="close">
                        关闭
                    </button>
                    <button type="button" id="but" class="btn btn-primary">
                        提交更改
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>

    <script>
        $(function () {
            $("#state").hide();
            $("#Button1").click(function () {
                if ($("#state").text() == "0") {
                    $("#state").text("1");
                    $("#Button1").val("查看已发出公告");
                    $(".cc").addClass("aa");
                    select(1);
                } else {
                    $("#state").text("0");
                    $("#Button1").val("显示删除公告");
                    select(0);
                }

            })
            select();
            function select(ste) {
                //读取列表
                $.ajax({
                    url: "../../Handler/Pluponform/NoticeList.ashx",
                    data: { state: ste },
                    type: "get",
                    dataType: "json",
                    success: function (result) {
                        $("#tb tr:gt(0)").remove();
                        $("#sc").tmpl(result.data).appendTo("#tb");
                        if (ste == 1) {
                            $(".cc").hide();
                        }
                    },
                })
            }


            //添加公告
            $("#but").click(function () {
                $.ajax({
                    url: "../../Handler/Pluponform/NoticeAdd.ashx",
                    type: "get",
                    data: { name: $("#txt_title").val(), neirong: $("#txt_neirong").val() },
                    dataType: "json",
                    success: function (json) {
                        if (json > 0) {
                            alert("发布成功");
                            $("#myModal").modal("hide");
                            select(0);
                        } else {
                            alert("发布失败");
                        }
                    }
                })
            })
            //删除
            $("#tb").on("click", "a", function () {
                var NoticeID = $(this).attr("NoticeID");
                var state;
                if ($("#state").val() == "显示删除公告") {
                    state = 0;
                } else {
                    state = 1;
                }
                $.ajax({
                    url: "../../Handler/Pluponform/NoticeAdd.ashx",
                    type: "get",
                    data: { id: NoticeID, state: state },
                    dataType: "json",
                    success: function (json) {
                        if (json = 1) {
                            alert("删除成功");
                            select(0);
                        } else {
                            alert("删除失败");
                        }
                    }
                })
            })
        })
    </script>
</body>
</html>
