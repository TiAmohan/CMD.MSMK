using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using CMD.MSMK.MODEL.MODEL;

namespace CMD.MSMK.DAL
{
    public class DalAnalyze
    {
        /// <summary>
        /// 根据用户级别进行查询总人数
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static object selectUsergrade(string num)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                       new SqlParameter("@num",num)
                };
            object sdr = DBhelp.select("selectnumber", sqlpar);
            return sdr;
        }

        /// <summary>
        /// 根据状态进行查询订单数
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static object selectList(string num)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                       new SqlParameter("@num",num)
                };
            object sdr = DBhelp.select("Listnumber", sqlpar);
            return sdr;
        }


        /// <summary>
        /// 根据级别进行查询营销额
        /// </summary>
        /// <param name="num"></param>
        /// <returns></returns>
        public static object selectListsale(string num)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                       new SqlParameter("@num",num)
                };
            object sdr = DBhelp.select("Listsale", sqlpar);
            return sdr;
        }
    }
}
