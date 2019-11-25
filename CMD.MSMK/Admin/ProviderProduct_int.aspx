<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProviderProduct_int.aspx.cs" Inherits="CMD.MSMK.Admin.ProviderProduct_int" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin:0 auto" border="1" rules="all" >
                <tr>
                    <td colspan="2"  style="text-align:center">供应商添加商品</td>
                    
                </tr>
                <tr>
                    <td>商品图片</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td>商品名</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>商品简介</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="49px" Width="175px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>商品价格</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
               <%-- <tr>
                    <td>用户名</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>--%>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="退出" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
