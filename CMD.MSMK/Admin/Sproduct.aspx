<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sproduct.aspx.cs" Inherits="CMD.MSMK.Admin.Sellerour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>卖家商品表</title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
    <script src="../layui/layui.js"></script>

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
       <center> <h2>卖家商品信息管理</h2>
            商品名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               商品简介：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
               <asp:Button ID="Button2" runat="server" Text="添加" PostBackUrl="~/Admin/Sproduct_ins.aspx"/>
       </center>
        <div>
            <asp:Repeater ID="Repeater1" runat="server"  OnItemCommand="Repeater1_ItemCommand">
           <HeaderTemplate>
              
               <table id="aa"class="layui-table">
                   <thead>
                   <tr>
                       <th>商品ID</th>
                       <th>商品图片</th>                     
                       <th>商品名称</th>
                       <th>商品简介</th>
                       <th>商品价格</th>
                       <th>操作</th>
                   </tr></thead>
           </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Sproductid") %></td>
                        <td><img src="<%#Eval("Sproductimg") %>"/></td>
                        <td><%#Eval("Sproductname") %></td>
                        <td><%#Eval("Sproductcontent") %></td>
                        <td><%#Eval("Sproductprice") %></td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server">修改</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server">删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
