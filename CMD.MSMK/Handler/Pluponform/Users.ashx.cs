using CMD.MSMK.BLL;
using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace CMD.MSMK.Handler.Pluponform
{
    /// <summary>
    /// Users 的摘要说明
    /// </summary>
    public class Users : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            var id = context.Request["id"];
            List<ModelUsers> list = new List<ModelUsers>();
            int num;
            if (id == null)
            {
                list = BllUsersList.UsersList();
                string json = JsonConvert.SerializeObject(new { date=list});
                context.Response.Write(json);
            }
            else
            {
                var sta = Convert.ToInt32(context.Request["UsersState"]);
                int state = 0;
                if (sta == 0)
                {
                    state = 1;
                }
                ModelUsers model = new ModelUsers()
                {
                    Userid = Convert.ToInt32(id),
                    usersState = state
                };
                num = BllUsersList.UsersStateupdate(model);
                string json = JsonConvert.SerializeObject(new { date = list,zt=num });
                context.Response.Write(json);
            }
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}