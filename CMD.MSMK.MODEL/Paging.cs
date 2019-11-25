using CMD.MSMK.MODEL.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CMD.MSMK.MODEL
{
    public class Paging:ModelUsers
    {
        public int pagIndex { get; set; }
        public int PageSize { get; set; }
    }
}
