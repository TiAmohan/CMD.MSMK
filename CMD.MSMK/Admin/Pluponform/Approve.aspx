<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Approve.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Approve" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../../js/jquery-1.7.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <script src="../../js/jquery.tmpl.js"></script>
    <style>
        .aa {
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table id="tb" class="table table-striped table-hover table-bordered ">
                <tr style="font-size: 20px">
                    <th>审批ID</th>
                    <th>当前级别</th>
                    <th>审批内容</th>
                    <th>申请时间 </th>
                    <th>处理时间</th>
                    <th>申请人 </th>
                    <th>操作</th>
                </tr>
                <script id="sc" type="text/x-jquery-tmpl">
                    <tr>
                        <td>${ApproveID}</td>
                        <td>${ClassTypes}</td>
                        <td>${ApproveContent}</td>
                        <td>${ApproveTime}</td>
                        <td>${processingtime}</td>
                        <td>${Username}</td>
                        <td>
                            <a href="#" class="cc" approveid="${ApproveID}" approvelevel="${ApproveLevel}" userid="${Userid}">同意</a>
                        </td>
                    </tr>
                </script>
            </table>
            <input id="Button1" type="button" value="显示审批记录" />
            <label id="state">0</label>
        </div>
    </form>
    <script>
        $("#state").hide();
        //切换查询
        $("#Button1").click(function () {
            if ($("#state").text() == "0") {
                $("#state").text("1");
                $("#Button1").text("查看审批申请");
                $(".cc").addClass("aa");
                select(1);
            } else {
                $("#state").text("0");
                $("#Button1").text("显示审批记录");
                select(0);
            }
            
        })
        //读取列表
        select();
        function select(state) {
            $.ajax({
                url: "../../Handler/Pluponform/Approve.ashx",
                data: { state: $("#state").text() },
                type: "get",
                dataType: "json",
                success: function (result) {
                    $("#tb tr:gt(0)").remove();
                    $("#sc").tmpl(result.data).appendTo("#tb");
                    if (state==1) {
                        $(".cc").hide();
                    }
                    
                },
            })
        }
        $("#tb").on("click", "a", function () {
            //执行AJAX进行修改级别
            //alert( $(this).attr("ApproveLevel"));
            $.ajax({
                url: "../../Handler/Pluponform/ApproveUpdate.ashx",
                data: { ApproveID: $(this).attr("ApproveID"), ApproveLevel: $(this).attr("ApproveLevel"), Userid: $(this).attr("Userid") },
                type: "get",
                dataType: "json",
                success: function (json) {
                    //执行
                    if (json > 1) {
                        alert("审批成功");
                        select();
                    } else {
                        alert("审批失败");
                    }
                },
            })
        })
    </script>
</body>
</html>
