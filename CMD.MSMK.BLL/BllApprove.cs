using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.BLL
{
    public class BllApprove
    {
        /// <summary>
        /// 查询申请表
        /// </summary>
        /// <returns></returns>
        public static List<ModelApprove> ApproveList(int state = 0)
        {
            return DalApprove.ApproveList(state);
        }
        /// <summary>
        /// 修改级别
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int ApproveUpdate(ModelApprove model)
        {
            return DalApprove.ApproveUpdate(model);
        }
    }
}
