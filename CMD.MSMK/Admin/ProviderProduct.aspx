<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProviderProduct.aspx.cs" Inherits="CMD.MSMK.Admin.ProviderProduct" %>

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
            商品名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="查询"></asp:Button>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <HeaderTemplate>
                    <table id="aa" class="layui-table">
                        <thead>
                            <tr>
                                <th>商品ID</th>
                                <th>商品图片</th>
                                <th>商品名</th>
                                <th>商品简介</th>
                                <th>商品价格</th>
                                <th>用户id</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Productid") %></td>
                        <td><%#Eval("Productimg") %></td>
                        <td><%#Eval("Productname") %></td>
                        <td><%#Eval("Productcontent") %></td>
                        <td><%#Eval("Productprice") %></td>
                        <td><%#Eval("Userid") %></td>
                        <td>
                             <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" CommandArgument='<%# Eval("Productid") %>'>删除</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" CommandArgument='<%# Eval("Productid") %>'>更新</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate></table></FooterTemplate>
            </asp:Repeater>
        </div></center>
    </form>
</body>
</html>
