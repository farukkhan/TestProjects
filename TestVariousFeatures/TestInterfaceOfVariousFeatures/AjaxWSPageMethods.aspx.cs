using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Threading;

namespace TestInterfaceOfVariousFeatures
{
    public partial class AjaxWSPageMethods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        //[System.Web.Script.Services.ScriptMethod]
        public static CCustomer GetCustomer()
        {
            Thread.Sleep(5000);


            CCustomer oCustomer = new CCustomer();
            oCustomer.Id = 1;
            oCustomer.Name = "Md. Faruk Hossen Khan";

            return oCustomer;
        }

        protected void txtCustomerId_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
