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
        public static List<ModelNotice> NoticeList(int NoticeState = 0)
        {
            return DalNotice.NoticeList(NoticeState);
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

        /// <summary>
        /// 删除公告
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int NoticeDelete(ModelNotice model)
        {
            return DalNotice.NoticeDelete(model);
        }
        /// <summary>
        /// 删除公告 删除数据
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int NoticeDel(ModelNotice model)
        {
            return DalNotice.NoticeDel(model);
        }
    }
}
