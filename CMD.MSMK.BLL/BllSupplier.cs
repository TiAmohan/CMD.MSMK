using CMD.MSMK.DAL;
using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.BLL
{
    public class BllSupplier
    {
        /// <summary>
        /// 根据用户名字、等级、级别进行查询
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Usergrade"></param>
        /// <param name="UsersState"></param>
        /// <returns></returns>
        public static List<ModelUsers> UsersList(string Username = "",  int UsersState = -1)
        {
            return DalUsersList.UsersList(Username, 3, UsersState);
        }
    }
}
