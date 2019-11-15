using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CMD.MSMK.DAL;
using CMD.MSMK.MODEL;

namespace CMD.MSMK.BLL
{
  public  class BllSproducts
    { //查询整表
        public static List<ModelSproduct> SproductList()
        {
            return DalSproduct.SproductList();
        }


        //模糊查询
        public static List<ModelSproduct> sproducts(string Sproductname="", string Sproductcontent="")
        {
            return DalSproduct.sproducts(Sproductname,Sproductcontent);
        }

        //添加
        public static int insert(ModelSproduct sproduct)
        {
            return DalSproduct.insert(sproduct);
        }
        }
    }
