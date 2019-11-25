using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
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
        int pageIndex=1;
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
                Label1.Text = BllUsersList.Userspaging(pageIndex, pageSize, out total).ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            select();
            //repselect();
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
            //Repeater1.DataSource = BllUsersList.GetUserspaging(pageIndex, pageSize, out total);
            Repeater1.DataBind();
        }
        public void repselect()
        {
            int num = 1;
            Repeater1.DataSource = BllUsersList.GetUserspaging(pageIndex, pageSize, out total);
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
            pageIndex = Convert.ToInt32(BllUsersList.Userspaging(pageIndex, pageSize, out num)) / 5;
            repselect();
        }
        //public List<Paging> paginglist()
        //{
        //    int total = 0;
        //    BllUsersList.Userspaging(pageIndex, pageSize,out total);
        //    int paging = total % pageSize == 0 ? total / pageSize : total / pageSize + 1;
        //    List<Paging> list = new List<Paging>();
        //    for (int i = 0; i < paging; i++)
        //    {
        //        Paging model = new Paging();
        //        model.pagIndex = i;
        //        list.Add(model);
        //    }
        //    return list;
        //}

        protected void Button5_Click(object sender, EventArgs e)
        {
            pageIndex = Convert.ToInt32(TextBox2.Text);
            repselect();
        }
    }
}