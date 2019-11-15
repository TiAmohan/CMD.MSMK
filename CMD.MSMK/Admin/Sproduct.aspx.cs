using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
using System.Data;
using System.Data.SqlClient;

namespace CMD.MSMK.Admin
{
    public partial class Sellerour : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //绑定数据源
            Repeater1.DataSource = BllSproducts.SproductList();
            //对数据进行绑定
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = BllSproducts.sproducts(TextBox1.Text, TextBox2.Text);
            Repeater1.DataBind();
          
        }
    }
}