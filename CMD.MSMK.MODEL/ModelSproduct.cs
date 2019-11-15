using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
  public  class ModelSproduct
    {
        //卖家商品表
        /// <summary>
        /// 卖家商品id
        /// </summary>
        public int Sproductid { get; set; }
        /// <summary>
        /// 卖家商品名称
        /// </summary>
        public string Sproductname { get; set; }
        /// <summary>
        /// 卖家商品简介
        /// </summary>
        public string Sproductcontent { get; set; }
        /// <summary>
        /// 卖家商品价格
        /// </summary>
        public Double Sproductprice { get; set; }
        /// <summary>
        /// 卖家商品图片
        /// </summary>
        public string Sproductimg { get; set; }
      
    }
}
