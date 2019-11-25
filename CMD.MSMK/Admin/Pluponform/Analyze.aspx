<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Analyze.aspx.cs" Inherits="CMD.MSMK.Admin.Pluponform.Analyze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
   
    <script src="../../js/jquery-1.7.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <link href="../../css/bootstrap.css" rel="stylesheet" />
    
    <script src="JS/Echarts.js"></script>
     <link href="../../css/Pluponform/Analyze.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>平台分析</h1>
            <div class="col-md-4 float btn-primary btn-lg btn-block" style="margin-top: .5rem;">
                <h3>人员数</h3>
                <asp:Label ID="Label1" runat="server" Text="买家人数"></asp:Label>
                <asp:Label ID="lab_buyer" runat="server" Text="1"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="卖家人数" CssClass="left"></asp:Label>
                <asp:Label ID="lab_seller" runat="server" Text="2"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="供应商人数"></asp:Label>
                <asp:Label ID="lab_supplier" runat="server" Text="3"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="总人数" CssClass="left"></asp:Label>
                <asp:Label ID="lab_headcount" runat="server" Text="0"></asp:Label>
            </div>
            <div class="col-md-4 float btn-success btn-lg btn-block">
                <h3>订单分析</h3>
                <asp:Label ID="Label5" runat="server" Text="未发货"></asp:Label>
                <asp:Label ID="lab_notdispatched" runat="server" TabIndex="1" Text="未发货"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="已发货" CssClass="left"></asp:Label>
                <asp:Label ID="lab_dispatched" runat="server" TabIndex="2" Text="已发货"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="已完成" CssClass="left"></asp:Label>
                <asp:Label ID="lab_Completed" runat="server" TabIndex="3" Text="已完成"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="退换"></asp:Label>
                <asp:Label ID="lab_alteration" runat="server" TabIndex="4" Text="退换"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="总订单数" CssClass="left"></asp:Label>
                <asp:Label ID="lab_countorder" runat="server" TabIndex="0" Text="总订单数"></asp:Label>
            </div>
            <div class="col-md-3 float btn-info btn-lg btn-block">
                <h3>营销额查询</h3>
                <asp:Label ID="Label10" runat="server" Text="买家"></asp:Label>
                <asp:Label ID="lab_buyers" runat="server" TabIndex="1" Text="买家"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="卖家" CssClass="left"></asp:Label>
                <asp:Label ID="lab_sellers" runat="server" TabIndex="2" Text="卖家"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="供应商"></asp:Label>
                <asp:Label ID="lab_suppliers" runat="server" TabIndex="3" Text="供应商"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="总营销额" CssClass="left"></asp:Label>
                <asp:Label ID="lab_headcounts" runat="server" TabIndex="0" Text="总营销额"></asp:Label>
            </div>
            <div style="margin-top: 200px">
                <div id="main2" style="width: 50%; height: 400px; float: left;" class="col-md-6"></div>
                <div id="zhuzhuangtu" style="width: 45%; height: 400px; float: left;" class="col-md-6"></div>
                <div id="main" style="width: 50%; height: 400px; float: left;" class="col-md-8"></div>
            </div>
        </div>
    </form>
    <script charset="utf-8">
        $(function () {
            //排名前五分析图
            var myChart = echarts.init(document.getElementById('main'));
            $.ajax({
                url: "../../Handler/Pluponform/Handler1.ashx",
                data: {},
                type: "get",
                dataType: "json",
                success: function (json) {
                    data = json
                    myChart.setOption({
                        title: {
                            text: '每时每刻销售量前5产品',
                            //subtext: '共计人数： ' + $("#lab_headcount").text(),
                            x: 'center'
                        },
                        tooltip: {
                            trigger: 'item',
                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                        },
                        legend: {
                            orient: 'vertical',
                            left: 'left',
                            data: data,
                        },
                        series: [
                            {
                                name: '总营销额',
                                type: 'pie',
                                radius: '55%',
                                data: data,
                            }
                        ],

                    })
                }
            })

            var zhuzhuangtu = echarts.init(document.getElementById('zhuzhuangtu'));
            //柱状图分析
            zhuzhuangtu.title = '每时每刻销售额 - 条形图';

            option = {
                title: {
                    text: '每时每刻消费统计',
                    //subtext: '数据来自网络'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    data: ['2019年']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value',
                    boundaryGap: [0, 0.01]
                },
                yAxis: {
                    type: 'category',
                    data: ['买家', '卖家', '供应商', '总营额']
                },
                series: [
                    {
                        name: '2019年',
                        type: 'bar',
                        data: [$("#lab_buyers").text(), $("#lab_sellers").text(), $("#lab_suppliers").text(), $("#lab_headcounts").text()]
                    }
                ]
            };
            zhuzhuangtu.setOption(option);

            //人员分析饼状图
            var myChart2 = echarts.init(document.getElementById('main2'));
            option = {
                title: {
                    text: '每时每刻用户人员分析',
                    subtext: '共计人数： ' + $("#lab_headcount").text(),
                    x: 'center'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    left: 'left',
                    data: ['买家人数', '卖家人数', '供应商人数', '全部人员']
                },
                series: [
                    {
                        name: '用户等级',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '60%'],
                        data: [
                            { value: $("#lab_buyer").text(), name: '买家人数' },
                            { value: $("#lab_seller").text(), name: '卖家人数' },
                            { value: $("#lab_supplier").text(), name: '供应商人数' },
                            //{ value: $("#lab_headcount").text(), name: '全部人员' }
                        ],
                        itemStyle: {
                            emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };
            myChart2.setOption(option);
        })
    </script>
</body>
</html>
