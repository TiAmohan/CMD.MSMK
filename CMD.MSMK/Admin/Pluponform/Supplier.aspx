<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Supplier.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Supplier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>供应商列表</h1>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>用户编号</th>
                            <th>用户名称</th>
                            <th>用户余额</th>
                            <th>用户状态</th>
                            <th>操作</th>
                            <th>
                                <asp:Button ID="Button1" runat="server" Text="添加" /></th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Userid") %> </td>
                        <td><%#Eval("Username") %></td>
                        <td><%#Eval("Userbalance") %></td>
                        <td>
                            <%#Eval("UsersStateSting")%></td>
                        <td>
                            <asp:LinkButton ID="Button2" runat="server" Text="冻结用户" Visible='<%# Convert.ToInt32(Eval("UsersState"))==0  %>' />
                            <asp:LinkButton ID="Button3" runat="server" Text="恢复用户" Visible='<%# Convert.ToInt32(Eval("UsersState"))==1  %>' />
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
