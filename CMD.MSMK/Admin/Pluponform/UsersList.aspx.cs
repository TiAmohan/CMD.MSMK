using CMD.MSMK.BLL;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = BllUsersList.gradeList();
                DropDownList1.DataValueField = "gradeId";
                DropDownList1.DataTextField = "ClassTypes";
                DropDownList1.DataBind();
                select();
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
            Repeater1.DataSource = BllUsersList.UsersList(TextBox1.Text, Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(RadioButtonList1.SelectedValue));
            Repeater1.DataBind();
        }
    }
}