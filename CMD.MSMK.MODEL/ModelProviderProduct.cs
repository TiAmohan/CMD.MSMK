using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
 public   class ModelProviderProduct
    {
        //供应商商品表
        /// <summary>
        /// 商品ID
        /// </summary>
        public int Productid { get; set; }
        /// <summary>
        /// 商品名
        /// </summary>
        public string Productname { get; set; }
        /// <summary>
        /// 商品简介
        /// </summary>
        public string Productcontent { get; set; }
        /// <summary>
        /// 商品价格	
        /// </summary>
        public double Productprice { get; set; }
        /// <summary>
        /// 商品图片
        /// </summary>
        public string Productimg { get; set; }
        /// <summary>
        /// 对用用户表用户id
        /// </summary>
        public int Userid { get; set; }
    }
}
