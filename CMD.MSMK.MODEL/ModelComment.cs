using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
 public   class ModelComment
    {
        //买家评论表
        /// <summary>
        /// 评论ID
        /// </summary>
        public int commentid { get; set; }
        /// <summary>
        /// 评价内容
        /// </summary>
        public string commentcontent { get; set; }
        /// <summary>
        /// 评价时间
        /// </summary>
        public string commenttime { get; set; }
        /// <summary>
        /// 对应卖家商品表商品id 外键
        /// </summary>
        public int Sproductid { get; set; }
    }
}
