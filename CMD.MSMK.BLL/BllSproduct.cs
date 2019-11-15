using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.BLL
{
  public  class BllSproduct
    {
        //整表查询
        public static List<ModelSproduct> SproductList()
        {
            return DalSproduct.SproductList();
        }
        }
}
