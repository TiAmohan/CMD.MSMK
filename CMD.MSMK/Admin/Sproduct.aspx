<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sproduct.aspx.cs" Inherits="CMD.MSMK.Admin.Sellerour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../js/jquery-3.4.1.js"></script>
    <script src="../Script/bootstrap-3.3.7.min.js"></script>
    <link href="../Script/bootstrap-3.3.7.min.css" rel="stylesheet" />
     <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
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
            font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>卖家商品信息管理</h2>
            商品名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               商品简介：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
               <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" class="btn btn-primary btn-lg"  />
               <input type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" value="添加" />
     
        <div >
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" >
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
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete"  CommandArgument='<%# Eval("Sproductid") %>'>删除</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

        </div>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					添加卖家商品信息
				</h4>
			</div>
			<div class="modal-body">
                <table style="font-size:20px" class=" layui-table">
				 <tr>
                    <td>商品图片：</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td>商品名称：</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>商品简介：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>商品价格：</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                    </table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="保存" OnClick="Button2_Click" />
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
    </form>
</body>
</html>
