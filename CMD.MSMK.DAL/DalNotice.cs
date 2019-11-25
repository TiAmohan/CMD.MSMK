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
        public static List<ModelNotice> NoticeList(int NoticeState = 0)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@NoticeState",NoticeState)
            };
            SqlDataReader sdr = DBhelp.slelectProc("NoticeList",sqlpar);
            List<ModelNotice> list = new List<ModelNotice>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelNotice model = new ModelNotice();
                    model.NoticeContent = sdr["NoticeContent"].ToString();
                    model.NoticeID = Convert.ToInt32(sdr["NoticeID"]);
                    model.NoticeTime = Convert.ToDateTime(sdr["NoticeTime"]).ToString("yyyy-MM-dd");
                    model.NoticeTitle = sdr["NoticeTitle"].ToString();
                    model.gradeid = Convert.ToInt32(sdr["gradeid"]);
                    model.NoticeState = Convert.ToInt32(sdr["NoticeState"]);
                    list.Add(model);
                }
            }
            return list;
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int NoticeInsert(ModelNotice model)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@NoticeTitle",model.NoticeTitle),
                 new SqlParameter("@NoticeContent",model.NoticeContent),
            };
            return DBhelp.NotqueryProc("NoticeInsert", sqlpar);
        }
        /// <summary>
        /// 删除公告 软删除
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int NoticeDelete(ModelNotice model)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@NoticeID",model.NoticeID),
            };
            return DBhelp.NotqueryProc("NoticeDeleteState", sqlpar);
        }
        /// <summary>
        /// 删除公告 删除数据
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int NoticeDel(ModelNotice model)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@NoticeID",model.NoticeID),
            };
            return DBhelp.NotqueryProc("NoticeDel", sqlpar);
        }
    }
}
