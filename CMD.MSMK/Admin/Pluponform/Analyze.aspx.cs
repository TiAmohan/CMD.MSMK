using CMD.MSMK.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMD.MSMK.Admin.Pluponform
{
    public partial class Analyze : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //人数统计
            lab_buyer.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_buyer.Text));
            lab_seller.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_seller.Text));
            lab_supplier.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_supplier.Text));
            lab_headcount.Text = Convert.ToString(BllAnalyze.selectUsergrade(lab_headcount.Text));

            //订单统计
            lab_notdispatched.Text = Convert.ToString(BllAnalyze.selectList(lab_notdispatched.TabIndex.ToString()));
            lab_dispatched.Text = Convert.ToString(BllAnalyze.selectList(lab_dispatched.TabIndex.ToString()));
            lab_Completed.Text = Convert.ToString(BllAnalyze.selectList(lab_Completed.TabIndex.ToString()));
            lab_alteration.Text = Convert.ToString(BllAnalyze.selectList(lab_alteration.TabIndex.ToString()));
            lab_countorder.Text = Convert.ToString(BllAnalyze.selectList(lab_countorder.TabIndex.ToString()));
            //销售额
            lab_buyers.Text = Convert.ToString(BllAnalyze.selectListsale(lab_buyers.TabIndex.ToString()));
            lab_sellers.Text = Convert.ToString(BllAnalyze.selectListsale(lab_sellers.TabIndex.ToString()));
            lab_suppliers.Text = Convert.ToString(BllAnalyze.selectListsale(lab_suppliers.TabIndex.ToString()));
            lab_headcounts.Text = Convert.ToString(BllAnalyze.selectListsale(lab_headcounts.TabIndex.ToString()));
        }
    }
}