using CMD.MSMK.DAL;
using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace CMD.MSMK.BLL
{
    public class BllAnalyze
    {
        /// <summary>
        /// 根据用户级别进行查询总人数
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static object selectUsergrade(string num)
        {
            return DalAnalyze.selectUsergrade(num);
        }
        /// <summary>
        /// 根据状态进行查询订单数
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static object selectList(string num)
        {
            return DalAnalyze.selectList(num);
        }

        /// <summary>
        /// 根据级别进行查询营销额
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static object selectListsale(string num)
        {
            return DalAnalyze.selectListsale(num);
        }
    }
}