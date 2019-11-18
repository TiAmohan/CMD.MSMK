using CMD.MSMK.BLL;
using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMD.MSMK.Admin.Pluponform
{
    public partial class UsersList : System.Web.UI.Page
    {
        int pageIndex = 1;
        int pageSize = 5;
        int total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = BllUsersList.gradeList();
                DropDownList1.DataValueField = "gradeId";
                DropDownList1.DataTextField = "ClassTypes";
                DropDownList1.DataBind();
                select();

                repselect();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            select();
        }
        /// <summary>
        /// 根据名字、等级、状态进行查询
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Usergrade"></param>
        /// <param name="UsersState"></param>
        public void select()
        {
            //Repeater1.DataSource = BllUsersList.UsersList(TextBox1.Text, Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(RadioButtonList1.SelectedValue));
            //Repeater1.DataSource = BllUsersList.GetUserspaging(pageIndex, pageSize, out total, TextBox1.Text, Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(RadioButtonList1.SelectedValue));
            //Repeater1.DataBind();
            repselect();
        }
        public void repselect(int pageIndex = 1)
        {
            int num = 1;
            //Repeater2.DataSource = BllUsersList.Userspaging(pageIndex, pageSize, out num);
            //Repeater2.DataBind();
            Repeater1.DataSource = BllUsersList.GetUserspaging(pageIndex, pageSize, out total, TextBox1.Text, Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(RadioButtonList1.SelectedValue));
            Repeater1.DataBind();
            Label_total.Text = "共" + Convert.ToString(Convert.ToInt32(BllUsersList.Userspaging(pageIndex, pageSize, out num)) / 5) + "页";
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            repselect();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int num = 1;
            repselect(Convert.ToInt32(BllUsersList.Userspaging(pageIndex, pageSize, out num)) / 5);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //int num = 1;
            //if (Convert.ToInt32(TextBox2.Text) >= (Convert.ToInt32(BllUsersList.Userspaging(pageIndex, pageSize, out num)) / 5))
            //{
            //    Response.Write("<script>alert('不能大于总页数')</script>");
            //    return;
            //}
            //repselect(Convert.ToInt32(BllUsersList.Userspaging(Convert.ToInt32(TextBox2.Text) - 1, pageSize, out num)) / 5);

        }
    }
}