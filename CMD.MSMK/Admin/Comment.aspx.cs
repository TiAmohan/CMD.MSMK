using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
namespace CMD.MSMK.Admin
{
    public partial class Comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = BllComment.select();
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //获取前台的comm方法名
            string name = e.CommandName;
            //存储model值
            ModelComment model = new ModelComment()
            {
                commentid = Convert.ToInt32(e.CommandArgument)
            };
            //判断方法名来进行相对的操作
            if (name == "delete")
            {
                //执行删除（软删除,将值隐藏）
                int num = BllComment.delete(model);
                if (num > 0)
                {
                    Response.Write("<script>alert('删除成功');location.href='Comment.aspx'</script>");
                }
            }
        }
    }
}