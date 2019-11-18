<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Notice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<script src="../../js/jquery-1.7.js"></script>--%>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                    <th>
                        <asp:Button ID="Button2" runat="server" Text="添加" class="btn btn-primary" PostBackUrl="~/Admin/Pluponform/NoticeAdd.aspx" />
                    </th>
                </tr>
                <script id="sc" type="text/x-jquery-tmpl">
                    <tr>
                        <td>${NoticeTitle}</td>
                        <td>${NoticeContent}</td>
                        <td>${NoticeTime}</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="删除" class="btn btn-danger" /></td>
                    </tr>
                </script>
            </table>
            <asp:Button ID="Button3" runat="server" Text="显示删除公告" class="btn btn-info" />
        </div>

        <!-- 模态框（Modal） -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题
                        </h4>
                    </div>
                    <div class="modal-body">
                        在这里添加一些文本
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">
                            关闭
                        </button>
                        <button type="button" class="btn btn-primary">
                            提交更改
                        </button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>

        <%--<asp:Button ID="Button2" runat="server" Text="添加" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" />--%>
    </form>
    <script>
        $(function () {
            $.ajax({
                url: "../../Handler/Pluponform/NoticeList.ashx",
                data: {},
                type: "get",
                dataType: "json",
                success: function (result) {
                    $("#sc").tmpl(result.data).appendTo("#tb");
                },
            })
        })
    </script>
</body>
</html>
