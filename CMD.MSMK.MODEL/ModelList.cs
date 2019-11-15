using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
  public  class ModelList
    {
        //订单表
        /// <summary>
        /// 订单id
        /// </summary>
        public int Listid { get; set; }
        /// <summary>
        /// 对应卖家商品表的商品id（外键）
        /// </summary>
        public int Sproductid { get; set; }
        /// <summary>
        /// 订单状态(0=未发货，1是待发货，2是已发货，3是已完成，4是退换)
        /// </summary>
        public int Liststate { get; set; }
        /// <summary>
        /// 对应用户表用户id
        /// </summary>
        public int Userid { get; set; }
    }
}
