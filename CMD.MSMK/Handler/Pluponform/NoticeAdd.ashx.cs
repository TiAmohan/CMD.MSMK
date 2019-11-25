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
            //获取ID
            var id = context.Request["id"];
            //判断ID是否为空  为空执行添加
            if (id == null)
            {
                ModelNotice model = new ModelNotice()
                {
                    NoticeContent = context.Request["neirong"],
                    NoticeTitle = context.Request["name"],
                };
                int num = BllNotice.NoticeInsert(model);
                context.Response.Write(num);
            }
            else
            {
                int num;
                if (context.Request["state"] == "0")
                {
                    //软删除
                    ModelNotice model = new ModelNotice()
                    {
                        NoticeID = Convert.ToInt32(id)
                    };
                    //执行软删除
                    num = BllNotice.NoticeDelete(model);
                }
                else
                {
                    //删除数据
                    ModelNotice model = new ModelNotice()
                    {
                        NoticeID = Convert.ToInt32(id)
                    };
                    //执行删除数据
                    num = BllNotice.NoticeDel(model);
                }
                context.Response.Write(num);
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