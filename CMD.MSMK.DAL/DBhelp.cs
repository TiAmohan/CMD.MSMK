using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CMD.MSMK.DAL
{
    public class DBhelp
    {
        //ceshiConnectionString
        /// <summary>
        /// 连接字符串
        /// </summary>
        public static string str = ConfigurationManager.ConnectionStrings["EveryTimeConnectionString"].ConnectionString;
        /// <summary>
        /// 查询首行首列
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlpar"></param>
        /// <returns></returns>
        public static object select(string sql, params SqlParameter[] sqlpar)
        {
            //连接数据库
            using (SqlConnection conn = new SqlConnection(str))
            {
                //创建指令
                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    //判断数据库是否连接
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    comm.CommandType = CommandType.StoredProcedure;
                    //添加执行命令
                    comm.Parameters.AddRange(sqlpar);
                    //返回查询结果(第一行第一列)
                    return comm.ExecuteScalar();
                }
            }
        }
        /// <summary>
        /// 查询(存储过程)
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlpar"></param>
        /// <returns></returns>
        public static SqlDataReader slelectProc(string sql, params SqlParameter[] sqlpar)
        {
            SqlConnection conn = new SqlConnection(str);

            using (SqlCommand comm = new SqlCommand(sql, conn))
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.AddRange(sqlpar);
                return comm.ExecuteReader(CommandBehavior.CloseConnection);
            }
        }
        /// <summary>
        /// 查询(语句)
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlpar"></param>
        /// <returns></returns>
        public static SqlDataReader slelect(string sql, params SqlParameter[] sqlpar)
        {
            SqlConnection conn = new SqlConnection(str);

            using (SqlCommand comm = new SqlCommand(sql, conn))
            {
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                comm.Parameters.AddRange(sqlpar);
                return comm.ExecuteReader(CommandBehavior.CloseConnection);
            }
        }
        /// <summary>
        /// 非查询(语句)
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlpar"></param>
        /// <returns></returns>
        public static int Notquery(string sql, SqlParameter[] sqlpar)
        {
            using (SqlConnection conn = new SqlConnection(str))
            {
                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    //comm.CommandType = CommandType.StoredProcedure;
                    comm.Parameters.AddRange(sqlpar);
                    return comm.ExecuteNonQuery();
                }
            }
        }

        /// <summary>
        /// 非查询(存储过程)
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="sqlpar"></param>
        /// <returns></returns>
        public static int NotqueryProc(string sql, SqlParameter[] sqlpar)
        {
            using (SqlConnection conn = new SqlConnection(str))
            {
                using (SqlCommand comm = new SqlCommand(sql, conn))
                {
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    comm.CommandType = CommandType.StoredProcedure;
                    comm.Parameters.AddRange(sqlpar);
                    return comm.ExecuteNonQuery();
                }
            }
        }
    }
}
