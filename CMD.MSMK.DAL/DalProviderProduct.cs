using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMD.MSMK.MODEL;
using System.Data;
using System.Data.SqlClient;
namespace CMD.MSMK.DAL
{
  public  class DalProviderProduct
    {
        /// <summary>
        /// 查询供应商商品表
        /// </summary>
        /// <returns></returns>
        public static List<ModelProviderProduct> select()
        {
            string sql = "select * from ProviderProduct ";
            //此处是多条件查询（根据商品名来进行模糊查询）
            //string sql = "select * from ProviderProduct where Providername like''%'+@Providername+'%'''";
            SqlDataReader sdr = DBhelp.slelect(sql);
            List<ModelProviderProduct> list = new List<ModelProviderProduct>();
            if (sdr.HasRows)
            {
                while (sdr.Read())
                {
                    ModelProviderProduct model = new ModelProviderProduct();
                    model.Productid = Convert.ToInt32(sdr["Productid"]);
                    model.Productname = sdr["Productname"].ToString();
                    model.Productcontent = sdr["Productcontent"].ToString();
                    model.Productprice = Convert.ToDouble(sdr["Productprice"]);
                    model.Productimg = sdr["Productimg"].ToString();
                    model.Userid = Convert.ToInt32(sdr["Userid"]);
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
        public static int delete(ModelProviderProduct model)
        {
            string sql = "delete from ProviderProduct where Productid=@Productid";
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@Productid",model.Productid)
                };
            return DBhelp.Notquery(sql,sqlpar);
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public static int update(ModelProviderProduct model)
        {
            string sql = "update ProviderProduct set Productname=@Productname,Productcontent=@Productcontent,Productprice=@Productprice,Productimg=@Productimg,Userid=@Userid where Productid=@Productid";
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@Productname",model.Productname),
                    new SqlParameter("@Productcontent",model.Productcontent),
                    new SqlParameter("@Productprice",model.Productprice),
                    new SqlParameter("@Productimg",model.Productimg),
                    new SqlParameter("@Userid",model.Userid),
                    new SqlParameter("@Productid",model.Productid)
                };
            return DBhelp.Notquery(sql,sqlpar);
        }
        /// <summary>
        /// 添加
        /// </summary>
        /// <returns></returns>
        public static int insert(ModelProviderProduct model)
        {
            string sql = "insert into ProviderProduct values(@Productname ,@Productcontent ,@Productprice ,@Productimg ,@Userid)";
            SqlParameter[] sqlpar = new SqlParameter[]
                {
                    new SqlParameter("@Productname",model.Productname),
                    new SqlParameter("@Productcontent",model.Productcontent),
                    new SqlParameter("@Productprice",model.Productprice),
                    new SqlParameter("@Productimg",model.Productimg),
                    new SqlParameter("@Userid",model.Userid)

                };
            return DBhelp.Notquery(sql,sqlpar);

        }
    }
}
