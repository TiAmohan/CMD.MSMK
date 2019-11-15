<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="CMD.MSMK.Admin.Comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../layui/css/layui.css" rel="stylesheet" />
    <script src="../layui/layui.js"></script>
    <title></title>
     <style type="text/css">
        #aa 
        {
          text-align:center!important;
        }
            #aa tr th {
            
             text-align:center!important;
            }
        body {
            color:darkgray;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <center><div>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
                <HeaderTemplate>
                    <table id="aa" class="layui-table">
                        <thead>
                            <tr>
                                <th>评论ID</th>
                                <th>卖家商品id</th>
                                <th>评价时间</th>
                                <th>评价</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("commentid ") %></td>
                        <td><%#Eval("Sproductid ") %></td>
                        <td><%#Eval("commenttime ") %></td>
                        <td><%#Eval("commentcontent ") %></td>
                        <td>
                           <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" CommandArgument='<%# Eval("commentid") %>'>删除</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" CommandArgument='<%# Eval("commentid") %>'>更新</asp:LinkButton>

                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
            </asp:Repeater>
        </div></center>
    </form>
</body>
</html>
