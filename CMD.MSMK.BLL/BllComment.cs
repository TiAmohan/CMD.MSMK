using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using CMD.MSMK.MODEL;
using CMD.MSMK.DAL;
namespace CMD.MSMK.BLL
{
  public  class BllComment
    {
        public static List<ModelComment> select()
        {
            return DalComment.select();
        }
        public static int delete(ModelComment model)
        {
            return DalComment.delete(model);
        }
        public static int insert(ModelComment model)
        {
            return DalComment.insert(model);
        }
        public static int update(ModelComment model)
        {
            return DalComment.update(model);
        }
    }
}
