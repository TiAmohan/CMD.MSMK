using CMD.MSMK.MODEL;
using CMD.MSMK.MODEL.MODEL;
using HPIT.Data.Core;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.DAL
{
    public class DalUsersList
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
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@Username",Username),
                     new SqlParameter("@Usergrade",Usergrade),
                      new SqlParameter("@UsersState",UsersState),
                };
            SqlDataReader sdr = DBhelp.slelectProc("UsersList", sqlpar);
            List<ModelUsers> list = new List<ModelUsers>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelUsers model = new ModelUsers();
                    model.Userid = Convert.ToInt32(sdr["Userid"]);
                    model.Userbalance = Convert.ToDouble(sdr["Userbalance"]);
                    model.ClassTypes = Convert.ToString(sdr["ClassTypes"]);
                    model.Username = Convert.ToString(sdr["Username"]);
                    model.Userpassword = Convert.ToString(sdr["Userpassword"]);
                    model.usersState = Convert.ToInt32(sdr["UsersState"]);
                    list.Add(model);
                }
            }
            return list;
        }
        /// <summary>
        /// 查询等级类别
        /// </summary>
        /// <returns></returns>
        public static List<ModelGrade> gradeList()
        {
            SqlDataReader sdr = DBhelp.slelectProc("gradeList");
            List<ModelGrade> list = new List<ModelGrade>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelGrade model = new ModelGrade();
                    model.gradeId = Convert.ToInt32(sdr["gradeId"]);
                    model.ClassTypes = Convert.ToString(sdr["ClassTypes"]);
                    list.Add(model);
                }
            }
            return list;
        }

        /// <summary>
        /// 修改用户状态
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int UsersStateupdate(ModelUsers model)
        {
            SqlParameter[] sqlpar = new SqlParameter[]
              {
                    new SqlParameter("@UsersState",model.usersState),
                     new SqlParameter("@Userid",model.Userid),
              };
            return DBhelp.NotqueryProc("UsersStateupdate", sqlpar);
        }
        /// <summary>
        /// 分页
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="docount"></param>
        /// <returns></returns>
        public static object Userspaging(int pageIndex, int pageSize, out int docount)
        {
            docount = 1;
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                   new SqlParameter("@pageindex",pageIndex),
                     new SqlParameter("@pagesize",pageSize),
                      new SqlParameter("@docount",docount),
                };
            //sqlpar[2].Direction = ParameterDirection.Output;
            object dt = DBhelp.select("Userspaging", sqlpar);
            //docount = Convert.ToInt32(sqlpar[2].Value);
            return dt;
        }

        /// <summary>
        /// 分页
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="totalCount"></param>
        /// <returns></returns>
        public static List<ModelUsers> UserspagingGet(int pageIndex, int pageSize, out int totalCount)
        {
            //初始化输出参数
            totalCount = 0;
            SqlParameter[] sqlParameters = new SqlParameter[] {
                 new SqlParameter("@pageindex",pageIndex),
                 new SqlParameter("@pagesize",pageSize),
                 new SqlParameter("@docount",totalCount)
            };
            //sqlParameters[2].Direction = ParameterDirection.Output;
            SqlDataReader sdr = DBhelp.slelectProc("Userspaging", sqlParameters);
            List<ModelUsers> list = new List<ModelUsers>();
            //判断有没有数据
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelUsers model = new ModelUsers();
                    model.Userid = Convert.ToInt32(sdr["Userid"]);
                    model.Userbalance = Convert.ToDouble(sdr["Userbalance"]);
                    model.ClassTypes = Convert.ToString(sdr["ClassTypes"]);
                    model.Username = Convert.ToString(sdr["Username"]);
                    model.Userpassword = Convert.ToString(sdr["Userpassword"]);
                    model.usersState = Convert.ToInt32(sdr["UsersState"]);
                    list.Add(model);
                }
            }
            //totalCount = Convert.ToInt32(sqlParameters[2].Value);
            //返回结果list
            return list;
        }
    }
}
