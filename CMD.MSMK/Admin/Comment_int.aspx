<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comment_int.aspx.cs" Inherits="CMD.MSMK.Admin.Comment_int" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #qq tr td{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin:0 auto" border="1" rules="all" id="qq">
                <tr>
                    <td  colspan="2" style="text-align:center">买家添加评论</td>
                    
                </tr>
                 <tr>
                    <td>评价</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>评价时间</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td> 
                </tr>
                <%-- <tr>
                    <td>卖家商品id</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>--%>
                 <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="退出" /></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
