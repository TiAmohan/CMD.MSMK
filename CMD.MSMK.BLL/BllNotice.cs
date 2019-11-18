using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.BLL
{
    public class BllNotice
    {
        /// <summary>
        /// 查询公告
        /// </summary>
        /// <returns></returns>
        public static List<ModelNotice> NoticeList()
        {
            return DalNotice.NoticeList();
        }

        /// <summary>
        /// 添加公告
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int NoticeInsert(ModelNotice model)
        {
            return DalNotice.NoticeInsert(model);
        }
    }
}
