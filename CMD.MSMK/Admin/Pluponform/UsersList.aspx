<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.UsersList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            等级：<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                <asp:ListItem Selected="True" Value="0">-请选择-</asp:ListItem>
            </asp:DropDownList>
            用户状态：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem Selected="True" Value="-1">全部</asp:ListItem>
                <asp:ListItem Value="0">正常</asp:ListItem>
                <asp:ListItem Value="1">冻结</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>用户编号</th>
                            <th>用户名称</th>
                            <th>用户等级</th>
                            <th>用户余额</th>
                            <th>用户状态</th>
                            <th>操作</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Userid") %> </td>
                        <td><%#Eval("Username") %></td>
                        <td><%#Eval("ClassTypes") %></td>
                        <td><%#Eval("Userbalance") %></td>
                        <td>
                            <%#Eval("UsersStateSting")%></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="冻结用户" Visible='<%# Convert.ToInt32(Eval("UsersState"))==0  %>' />
                            <asp:Button ID="Button3" runat="server" Text="恢复用户" Visible='<%# Convert.ToInt32(Eval("UsersState"))==1  %>' />
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
