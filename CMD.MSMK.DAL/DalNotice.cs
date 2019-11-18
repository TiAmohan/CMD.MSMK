using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace CMD.MSMK.DAL
{
    public class DalNotice
    {
        /// <summary>
        /// 查询公告
        /// </summary>
        /// <returns></returns>
        public static List<ModelNotice> NoticeList()
        {
            SqlDataReader sdr = DBhelp.slelectProc("NoticeList");
            List<ModelNotice> list = new List<ModelNotice>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelNotice model = new ModelNotice();
                    model.NoticeContent = sdr["NoticeContent"].ToString();
                    model.NoticeID = Convert.ToInt32(sdr["NoticeID"]);
                    model.NoticeTime= Convert.ToDateTime(Convert.ToDateTime(sdr["NoticeTime"]).ToString("yyyy-MM-dd"));
                    model.NoticeTitle = sdr["NoticeTitle"].ToString();
                    model.Userid= Convert.ToInt32(sdr["Userid"]);
                    list.Add(model);
                }
            }
            return list;
        }
    }
}
