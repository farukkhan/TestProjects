using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;

namespace TestInterfaceOfVariousFeatures
{
    public partial class JSONTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnJSONParse_Click(object sender, EventArgs e)
        {
            string jsonRpt = File.ReadAllText(@"E:\Projects\Learning Projects\Developments\TestProjects\TestVariousFeatures\TestInterfaceOfVariousFeatures\JsonData\KeyValue.json");

            //JSON deserializer
            Dictionary<string, object> rptInfos = JsonConvert.DeserializeObject<Dictionary<string, object>>(jsonRpt);
        }
    }
}