using CMD.MSMK.BLL;
using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CMD.MSMK.Handler.Pluponform
{
    /// <summary>
    /// NoticeAdd 的摘要说明
    /// </summary>
    public class NoticeAdd : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            ModelNotice model = new ModelNotice()
            {
                NoticeContent = context.Request["neirong"],
                NoticeTitle = context.Request["name"],
            };
            int num= BllNotice.NoticeInsert(model);
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