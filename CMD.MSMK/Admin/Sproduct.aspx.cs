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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Repeater1.DataSource = BllSproducts.sproducts(TextBox1.Text, TextBox2.Text);
            Repeater1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                Response.Write("<script> alert('商品名字不能为空')</script>");
                return;
            }
            if (TextBox4.Text == "")
            {
                Response.Write("<script> alert('商品简介不能为空')</script>");
                return;
            }
            if (TextBox5.Text == "")
            {
                Response.Write("<script> alert('商品价格不能为空')</script>");
                return;
            }
            ModelSproduct sproduct = new ModelSproduct()
            {
                Sproductimg = Convert.ToString(FileUpload1.ToString()),
                Sproductname = Convert.ToString(TextBox3.Text),
                Sproductcontent = Convert.ToString(TextBox4.Text),
                Sproductprice = Convert.ToDouble(TextBox5.Text)
            };
            if (BllSproducts.insert(sproduct) > 0)
            {
                Response.Write("<script> alert('添加成功！');location.href='Sproduct.aspx' </script>");
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        //protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        //{

        //    //获取前台的comm方法名
        //    string name = e.CommandName;
        //    //存储model值
        //    ModelSproduct model = new ModelSproduct()
        //    {
        //        Sproductid = Convert.ToInt32(e.CommandArgument)
        //    };
        //    //判断方法名来进行相对的操作
        //    if (name == "delete")
        //    {
        //        //执行删除（软删除,将值隐藏）
        //        int num = BllSproducts.delete(model);
        //        if (num > 0)
        //        {
        //            Response.Write("<script>alert('删除成功');location.href='Comment.aspx'</script>");
        //        }
        //    }
        //}
    }
}
