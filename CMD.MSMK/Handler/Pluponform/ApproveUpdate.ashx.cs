using CMD.MSMK.BLL;
using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMD.MSMK.Handler.Pluponform
{
    /// <summary>
    /// ApproveUpdate 的摘要说明
    /// </summary>
    public class ApproveUpdate : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            var ApproveID = context.Request["ApproveID"];
            var ApproveLevel = context.Request["ApproveLevel"];
            var Userid = context.Request["Userid"];
            ModelApprove model = new ModelApprove()
            {
                ApproveID = Convert.ToInt32(context.Request["ApproveID"]),
                ApproveLevel = Convert.ToInt32(context.Request["ApproveLevel"]),
                Userid = Convert.ToInt32(context.Request["Userid"])
            };
            int num = BllApprove.ApproveUpdate(model);
            context.Response.Write(num);
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