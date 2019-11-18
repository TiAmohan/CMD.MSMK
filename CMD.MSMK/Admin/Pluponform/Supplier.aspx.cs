using CMD.MSMK.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMD.MSMK.Admin.Pluponform
{
    public partial class Supplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = BllSupplier.UsersList();
            Repeater1.DataBind();
        }
    }
}