using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.MODEL.MODEL;

namespace CMD.MSMK.DAL
{
    public class DalUsers
    {
        /// <summary>
        /// 根据用户名密码查询
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Userpassword"></param>
        /// <returns></returns>
        public static object Userslogin(string Username, string Userpassword)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@Username",Username),
                    new SqlParameter("@Userpassword",Userpassword),
                };
            object obj = DBhelp.select("Userslogin", sqlpar);
            return obj;
        }
        /// <summary>
        /// 根据ID查询表信息
        /// </summary>
        /// <param name="Userid"></param>
        /// <returns></returns>
        public static ModelUsers  UsersloginID(int Userid)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@Userid",Userid),
                };
            SqlDataReader sdr = DBhelp.slelectProc("UsersloginID", sqlpar);
            ModelUsers model = new ModelUsers();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    model.Userid = Convert.ToInt32(sdr["Userid"]);
                    model.Userbalance = Convert.ToDouble(sdr["Userbalance"]);
                    model.Usergrade = Convert.ToInt32(sdr["Usergrade"]);
                    model.Username = Convert.ToString(sdr["Username"]);
                    model.Userpassword = Convert.ToString(sdr["Userpassword"]);
                    model.UsersStateSting= Convert.ToString(sdr["UsersState"]);
                }
            }
            return model;
        }
    }
}
