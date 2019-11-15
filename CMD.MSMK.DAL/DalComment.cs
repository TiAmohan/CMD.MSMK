using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.MODEL;
namespace CMD.MSMK.DAL
{
    public class DalComment
    {/// <summary>
    /// 查询买家评论表
    /// </summary>
    /// <returns></returns>
        public static List<ModelComment> select()
        {
            string sql = "select * from Comment";
            SqlDataReader sdr = DBhelp.slelect(sql);
            List<ModelComment> list = new List<ModelComment>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelComment model = new ModelComment();
                    model.commentid = Convert.ToInt32(sdr["commentid"]);
                    model.commentcontent = sdr["commentcontent"].ToString();
                    model.commenttime = sdr["commenttime"].ToString();/*Convert.ToDateTime(sdr[""]).ToString("yyyy-MM-dd");*/
                    model.Sproductid = Convert.ToInt32(sdr["Sproductid"]);
                    list.Add(model);
                }
            }
            return list;
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int delete(ModelComment model)
        {
            string sql = "delete from Comment where commentid =@commentid ";
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@commentid ",model.commentid)
                };
            return DBhelp.Notquery(sql,sqlpar);
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int insert(ModelComment model)
        {
            string sql = "insert into Comment values(@commentcontent ,@commenttime ,@Sproductid )";
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@commentcontent",model.commentcontent),
                    new SqlParameter("@commenttime",model.commenttime),
                    new SqlParameter("@Sproductid",model.Sproductid)
                };
            return DBhelp.Notquery(sql,sqlpar);
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int update(ModelComment model)
        {
            string sql = "update Comment set commentcontent =@commentcontent ,commenttime =@commenttime ,Sproductid =@Sproductid  where commentid =@commentid ";
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@commentcontent",model.commentcontent),
                    new SqlParameter("@commenttime",model.commenttime),
                    new SqlParameter("@Sproductid",model.Sproductid),
                    new SqlParameter("@commentid",model.commentid)
                };
            return DBhelp.Notquery(sql,sqlpar);
        }
    }
}
