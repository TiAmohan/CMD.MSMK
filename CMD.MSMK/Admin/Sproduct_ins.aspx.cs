using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.Admin
{
    public partial class Sellertwo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
               Response.Write("<script> alert('商品名字不能为空')</script>");
                return;
            }
            if (TextBox2.Text == "")
            {
                Response.Write("<script> alert('商品简介不能为空')</script>");
                return;
            }
            if (TextBox3.Text == "")
            {
                Response.Write("<script> alert('商品价格不能为空')</script>");
                return;
            }
            ModelSproduct sproduct = new ModelSproduct()
            {
                Sproductimg=Convert.ToString(FileUpload1.ToString()),
                Sproductname=Convert.ToString(TextBox1.Text),
                Sproductcontent=Convert.ToString(TextBox2.Text),
                Sproductprice=Convert.ToDouble(TextBox3.Text)
            };
            if (BllSproducts.insert(sproduct) > 0)
            {
                Response.Write("<script> alert('添加成功！');location.href='Sproduct.aspx' </script>");
            }
        }
    }
}