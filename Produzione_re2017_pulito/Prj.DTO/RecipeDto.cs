using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ls.Prj.DTO
{
    public class RecipeDTO
    {

        public string title { get; set; }
        public string version { get; set; }
        public string href { get; set; }
        public ResultDTO[] results { get; set; }


    }
}
