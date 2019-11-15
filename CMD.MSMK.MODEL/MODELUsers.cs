using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL.MODEL
{
    public class ModelUsers:ModelGrade
    {
        /// <summary>
        /// 用户ID
        /// </summary>
        public int Userid { get; set; }
        /// <summary>
        /// 用户名
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// 用户密码
        /// </summary>
        public string Userpassword { get; set; }
        /// <summary>
        /// 用户余额
        /// </summary>
        public Double Userbalance { get; set; }
        /// <summary>
        /// 用户等级
        /// </summary>
        public int Usergrade { get; set; }
        /// <summary>
        /// 用户状态
        /// </summary>
        private int _usersState;

        public int usersState
        {
            get { return _usersState; }
            set { _usersState = value; }
        }

        private string usersStateSting;
        /// <summary>
        /// 用户状态转换
        /// </summary>
        public string UsersStateSting
        {
            get {
                if (_usersState == 0)
                {
                    return "正常";
                }
                if (_usersState == 1)
                {
                    return "冻结";
                }
                return "";
            }
            set { usersStateSting = value; }
        }


    }
}
