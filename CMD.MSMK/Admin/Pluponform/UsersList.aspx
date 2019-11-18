<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersList.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.UsersList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../../layui/layui.js"></script>
    <script src="../../layui/layui.all.js"></script>
    <link href="../../layui/css/layui.css" rel="stylesheet" />
    <link href="../../layui/css/layui.mobile.css" rel="stylesheet" />
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    <link href="../../css/boot.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="col-md-4">
                <asp:TextBox ID="TextBox1" runat="server" class="layui-input" placeholder="请输入用户名"></asp:TextBox>
            </div>
            <div class="col-md-2">
                等级：
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Selected="True" Value="0">-请选择-</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-4">
                用户状态：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="-1">全部</asp:ListItem>
                    <asp:ListItem Value="0">正常</asp:ListItem>
                    <asp:ListItem Value="1">冻结</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-2">
                <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="查询" OnClick="Button1_Click" />
            </div>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <HeaderTemplate>
                    <table class="layui-table">
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
                            <asp:LinkButton ID="Button2" class="btn btn-danger" runat="server" Text="冻结用户" Visible='<%# Convert.ToInt32(Eval("UsersState"))==0  %>' />
                            <asp:LinkButton ID="Button3" class="btn btn-success" runat="server" Text="恢复用户" Visible='<%# Convert.ToInt32(Eval("UsersState"))==1  %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

            <%-- 分页的代码--%>
            <nav aria-label="Page navigation" style="float: right">
                <%--<ul class="pagination">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <li>
                                <asp:LinkButton ID="LinkButton3" CommandArgument='<%#Eval("pagIndex") %>' runat="server"><%# (int)Eval("pagIndex")+1%></asp:LinkButton>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>--%>
                <asp:Button ID="Button4" runat="server" Text="首页" OnClick="Button4_Click" />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" Text="跳转" OnClick="Button5_Click" />
                <asp:Button ID="Button6" runat="server" Text="尾页" Height="26px" OnClick="Button6_Click" />
                <asp:Label ID="Label_total" runat="server"></asp:Label>
            </nav>
        </div>
    </form>
    
</body>
</html>
