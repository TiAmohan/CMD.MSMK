using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMD.MSMK.Handler.Pluponform
{
    /// <summary>
    /// Approve 的摘要说明
    /// </summary>
    public class Approve : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            List<ModelApprove> list = BllApprove.ApproveList(Convert.ToInt32( context.Request["state"]));
            string result = JsonConvert.SerializeObject(new { data = list });
            context.Response.Write(result);
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