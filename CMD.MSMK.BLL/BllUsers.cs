using CMD.MSMK.DAL;
using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.BLL
{
    public class BllUsers
    {
        /// <summary>
        /// 根据用户名密码查询
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Userpassword"></param>
        /// <returns></returns>
        public static object Userslogin(string Username, string Userpassword)
        {
            return DalUsers.Userslogin(Username, Userpassword);
        }
        /// <summary>
        /// 根据ID查询表信息
        /// </summary>
        /// <param name="Userid"></param>
        /// <returns></returns>
        public static ModelUsers UsersloginID(int Userid)
        {
            return DalUsers.UsersloginID(Userid);
        }
    }
}
