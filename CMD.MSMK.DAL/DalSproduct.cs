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
    public class DalSproduct
    {
        //查询整表
        public static List<ModelSproduct> SproductList()
        {
            string sql = "select * from Sproduct";
            SqlDataReader reader = DBhelp.slelect(sql);
            //判断有没有读到数据，hasRows有没有行数据
            List<ModelSproduct> sproducts = new List<ModelSproduct>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    //读取第一条数据
                    ModelSproduct model = new ModelSproduct();
                    model.Sproductid = int.Parse(reader["Sproductid"].ToString());
                    model.Sproductname = reader["Sproductname"].ToString();
                    model.Sproductcontent = reader["Sproductcontent"].ToString();
                    model.Sproductprice = double.Parse(reader["Sproductprice"].ToString());
                    model.Sproductimg = reader["Sproductimg"].ToString();
                    sproducts.Add(model);
                }
            }
            return sproducts;
        }

        //模糊查询
        public static List<ModelSproduct> sproducts(string Sproductname = "", string Sproductcontent = "")
        {
            SqlParameter[] sqlp = new SqlParameter[] {
                new SqlParameter("@Sproductname",Sproductname),
                new SqlParameter("@Sproductcontent",Sproductcontent)
            };
            SqlDataReader reader = DBhelp.slelectProc("Sproduct_sel", sqlp);
            //判断有没有读到数据，hasRows有没有行数据
            List<ModelSproduct> sproducts = new List<ModelSproduct>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    //读取第一条数据
                    ModelSproduct model = new ModelSproduct();
                    model.Sproductid = int.Parse(reader["Sproductid"].ToString());
                    model.Sproductname = reader["Sproductname"].ToString();
                    model.Sproductcontent = reader["Sproductcontent"].ToString();
                    model.Sproductprice = double.Parse(reader["Sproductprice"].ToString());
                    model.Sproductimg = reader["Sproductimg"].ToString();
                    sproducts.Add(model);
                }
            }
            return sproducts;
        }
        //添加
          public static int insert(ModelSproduct sproduct)
        {
            SqlParameter[] parter = new SqlParameter[]
                {
                    new SqlParameter("Sproductname",sproduct.Sproductname),
                    new SqlParameter("Sproductcontent",sproduct.Sproductcontent),
                    new SqlParameter("Sproductprice",sproduct.Sproductprice),
                    new SqlParameter("Sproductimg",sproduct.Sproductimg)
                };
            return DBhelp.NotqueryProc("Sproduct_ins", parter);
        }
    }
}
