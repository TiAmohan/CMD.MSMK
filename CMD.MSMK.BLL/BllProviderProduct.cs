using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;
namespace CMD.MSMK.BLL
{
  public  class BllProviderProduct
    {
        public static List<ModelProviderProduct> select()
        {
            return DalProviderProduct.select();
        }
        public static int delete(ModelProviderProduct model)
        {
            return DalProviderProduct.delete(model);
        }
        public static int update(ModelProviderProduct model)
        {
            return DalProviderProduct.update(model);
        }
        public static int insert(ModelProviderProduct model)
        {
            return DalProviderProduct.insert(model);
        }
    }
}
