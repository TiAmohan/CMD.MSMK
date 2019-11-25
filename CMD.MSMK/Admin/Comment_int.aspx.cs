using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CMD.MSMK.MODEL;
using CMD.MSMK.BLL;
namespace CMD.MSMK.Admin
{
    public partial class Comment_int : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text== "")
            {
                Response.Write("<script>alert('请评价')</script>");
            }
            //if (TextBox2.Text=="")
            //{
            //    Response.Write("<script>alert('请输入卖家商品id')</script>");
            //}
           //var qq = Session["Product"] as ModelSproduct;
            ModelComment ins = new ModelComment()
            {
                commentcontent = TextBox1.Text,
                commenttime=TextBox2.Text
                //Sproductid=Convert.ToInt32(TextBox2.Text)
            };
            if (BllComment.insert(ins)>0)
            {
                Response.Write("<script>alert('添加成功');location.href='Comment.aspx'</script>");
            }
        }
    }
}