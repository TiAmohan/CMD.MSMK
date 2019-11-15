using CMD.MSMK.DAL;
using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.BLL
{
    public class BllUsersList
    {
        /// <summary>
        /// 根据用户名字、等级、级别进行查询
        /// </summary>
        /// <param name="Username"></param>
        /// <param name="Usergrade"></param>
        /// <param name="UsersState"></param>
        /// <returns></returns>
        public static List<ModelUsers> UsersList(string Username = "", int Usergrade = 0, int UsersState = -1)
        {
            return DalUsersList.UsersList(Username, Usergrade, UsersState);
        }
        /// <summary>
        /// 查询等级类别
        /// </summary>
        /// <returns></returns>
        public static List<ModelGrade> gradeList()
        {
            return DalUsersList.gradeList();
        }

        /// <summary>
        /// 修改用户状态
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int UsersStateupdate(ModelUsers model)
        {
            return DalUsersList.UsersStateupdate(model);
        }
    }
}
