using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.MODEL;
using CMD.MSMK.BLL;
using CMD.MSMK.MODEL.MODEL;
namespace CMD.MSMK.Admin
{
    public partial class ProviderProduct_int : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                Response.Write("<script>alert('请输入商品名')</script>");
            }
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入商品简介')</script>");
            }
            if (TextBox3.Text=="")
            {
                Response.Write("<script>alert('请输入商品价格')</script>");
            }
            //if (TextBox4.Text=="")
            //{
            //    Response.Write("<script>alert('请输入用户id')</script>");
            //}
            //var qq = Session["User"] as ModelUsers;
            ModelProviderProduct ins = new ModelProviderProduct()
            {
                
                Productname = TextBox2.Text,
                Productcontent = TextBox1.Text,
                Productprice = Convert.ToDouble(TextBox3.Text),
                //Userid = qq.Userid
            };
            if (BllProviderProduct.insert(ins) > 0)
            {
                Response.Write("<script>alert('添加成功');location.href='ProviderProduct.aspx'</script>");
            }

        }
    }
}