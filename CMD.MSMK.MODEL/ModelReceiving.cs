using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL.MODEL
{
    public class ModelReceiving
    {
        /// <summary>
        /// 收货地址ID
        /// </summary>
        public int ReceivingID { get; set; }
        /// <summary>
        /// 收货人
        /// </summary>
        public string Consignee { get; set; }
        /// <summary>
        /// 收货地址
        /// </summary>
        public string ShippingAddress { get; set; }
        /// <summary>
        /// 收获手机号
        /// </summary>
        public string Mobile { get; set; }
        /// <summary>
        /// 用户ID
        /// </summary>
        public int Userid { get; set; }
    }
}
