using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
   public class ModelNotice
    {
        //公告表
        /// <summary>
        /// 公告ID
        /// </summary>
        public int NoticeID { get; set; }
        /// <summary>
        /// 公告标题
        /// </summary>
        public string NoticeTitle { get; set; }
        /// <summary>
        /// 公告内容
        /// </summary>
        public string NoticeContent { get; set; }
        /// <summary>
        /// 公告时间
        /// </summary>
        public DateTime NoticeTime { get; set; }
        /// <summary>
        /// 公告发布人(对应用户表用户id)
        /// </summary>
        public int Userid { get; set; }
    }
}
