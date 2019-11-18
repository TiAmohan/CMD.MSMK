<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoticeAdd.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.NoticeAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

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
                        <input type="text" class="form-control" id="txt_title" placeholder="标题">
                        <textarea id="txt_neirong" class="form-control" rows="3" placeholder="内容"></textarea>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        关闭
                    </button>
                    <button type="button" class="btn btn-primary" id="but">
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
            $("#myModal").modal("show");
            $("#but").click(function(){
                $.ajax({
                    url: "../../Handler/Pluponform/NoticeAdd.ashx",
                    type: "get",
                    data: {name:$("#txt_title").val(),neirong:$("#txt_neirong").val()},
                    dataType: "json",
                    success: function (json) {
                        if (json = 1) {
                            alert("发布成功");
                            location.href = "../../admin/Pluponform/Notice.aspx";
                        } else {
                            alert("发布失败");
                        }
                    }
                })
            })

        })
    </script>
</body>
</html>
