<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Notice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../../js/jquery-1.7.js"></script>
    <script src="../../js/jquery.tmpl.js"></script>
    <script src="../../layui/layui.js"></script>
    <script src="../../layui/layui.all.js"></script>
    <link href="../../layui/css/layui.css" rel="stylesheet" />
    <link href="../../layui/css/layui.mobile.css" rel="stylesheet" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link href="../../css/boot.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="tb"  class="layui-table">
                <tr>
                    <th>标题</th>
                    <th>内容</th>
                    <th>发布时间</th>
                    <th><asp:Button ID="Button2" runat="server" Text="添加"  class="btn btn-success"/></th>
                </tr>
                <script id="sc" type="text/x-jquery-tmpl">
                    <tr>
                        <td>${NoticeTitle}</td>
                        <td>${NoticeContent}</td>
                        <td>${NoticeTime}</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="删除"  class="btn btn-danger"/></td>
                    </tr>
                </script>
            </table>
        </div>
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
