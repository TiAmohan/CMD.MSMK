<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Analyze.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Analyze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../css/Pluponform/Analyze.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>平台分析</h1>
            <div>
                <h3>人员数</h3>
                <asp:Label ID="Label1" runat="server" Text="买家人数"></asp:Label>
                <asp:Label ID="lab_buyer" runat="server" Text="1"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="卖家人数"></asp:Label>
                <asp:Label ID="lab_seller" runat="server" Text="2"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="供应商人数"></asp:Label>
                <asp:Label ID="lab_supplier" runat="server" Text="3"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="总人数"></asp:Label>
                <asp:Label ID="lab_headcount" runat="server" Text="0"></asp:Label>
            </div>
            <div>
                <h3>订单分析</h3>
                <asp:Label ID="Label5" runat="server" Text="未发货"></asp:Label>
                <asp:Label ID="lab_notdispatched" runat="server" TabIndex="1" Text="未发货"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="已发货"></asp:Label>
                <asp:Label ID="lab_dispatched" runat="server" TabIndex="2" Text="已发货"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="已完成"></asp:Label>
                <asp:Label ID="lab_Completed" runat="server" TabIndex="3" Text="已完成"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="退换"></asp:Label>
                <asp:Label ID="lab_alteration" runat="server" TabIndex="4" Text="退换"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="总订单数"></asp:Label>
                <asp:Label ID="lab_countorder" runat="server" TabIndex="0" Text="总订单数"></asp:Label>
            </div>
            <div>
                <h3>营销额查询</h3>
                <asp:Label ID="Label10" runat="server" Text="买家"></asp:Label>
                <asp:Label ID="lab_buyers" runat="server" TabIndex="1" Text="买家"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="卖家"></asp:Label>
                <asp:Label ID="lab_sellers" runat="server" TabIndex="2" Text="卖家"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="供应商"></asp:Label>
                <asp:Label ID="lab_suppliers" runat="server" TabIndex="3" Text="供应商"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="总营销额"></asp:Label>
                <asp:Label ID="lab_headcounts" runat="server" TabIndex="0" Text="总营销额"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
