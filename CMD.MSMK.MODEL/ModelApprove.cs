using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
   public class ModelApprove
    {
        //审批表
        /// <summary>
        /// 审批ID
        /// </summary>
        public int ApproveID { get; set; }
        /// <summary>
        /// 审批级别
        /// </summary>
        public int ApproveLevel { get; set; }
        /// <summary>
        /// 审批内容
        /// </summary>
        public string ApproveContent { get; set; }
        /// <summary>
        /// 审批时间
        /// </summary>
        public DateTime ApproveTime { get; set; }
        /// <summary>
        /// 申请人(对应用户表用户id)
        /// </summary>
        public int Userid { get; set; }
    }
}
