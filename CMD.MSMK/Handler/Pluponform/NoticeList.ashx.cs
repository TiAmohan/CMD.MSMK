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
    /// NoticeList 的摘要说明
    /// </summary>
    public class NoticeList : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/plain";
            List<ModelNotice> list = BllNotice.NoticeList();
            
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