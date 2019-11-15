<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sproduct_ins.aspx.cs" Inherits="CMD.MSMK.Admin.Sellertwo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加卖家商品信息</title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
    <script src="../layui/layui.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="layui-form" >
      <div style="width:600px;height:187px">
            <h2>添加商品信息</h2>
            
            <table>
                
                <tr>
                    <td>商品图片：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td>商品名称：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>商品简介：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>商品价格：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="返回" PostBackUrl="~/Admin/Sproduct.aspx"/>
                    </td>
                </tr>
            </table>
             </div>  
        
    </form>
</body>
</html>
