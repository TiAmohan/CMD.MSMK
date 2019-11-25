using CMD.MSMK.MODEL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.DAL
{
    public class DalApprove
    {
        /// <summary>
        /// 查询申请表
        /// </summary>
        /// <returns></returns>
        public static List<ModelApprove> ApproveList(int state=0)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@ApproveState",state)
            };
            SqlDataReader sdr = DBhelp.slelectProc("ApproveList", sqlpar);
            List<ModelApprove> list = new List<ModelApprove>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelApprove model = new ModelApprove()
                    {
                        ApproveContent = sdr["ApproveContent"].ToString(),
                        ApproveID = Convert.ToInt32(sdr["ApproveID"]),
                        ClassTypes = sdr["ClassTypes"].ToString(),
                        ApproveLevel = Convert.ToInt32(sdr["ApproveLevel"]),
                        ApproveTime = Convert.ToDateTime(sdr["ApproveTime"]),
                        Username = sdr["Username"].ToString(),
                        Userid = Convert.ToInt32(sdr["Userid"]),
                    };

                    list.Add(model);
                }
            }
            return list;
        }
        /// <summary>
        /// 修改级别
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int ApproveUpdate(ModelApprove model)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
            {
                new SqlParameter("@ApproveID",model.ApproveID),
                new SqlParameter("@ApproveLevel",model.ApproveLevel),
                new SqlParameter("@Userid",model.Userid),
            };
            return DBhelp.NotqueryProc("ApproveUpdate", sqlpar);
        }
    }
}
