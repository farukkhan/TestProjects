using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace TestInterfaceOfVariousFeatures
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    //[System.Web.Script.Services.GenerateScriptType(typeof(CCustomer))]
    public class WebService : System.Web.Services.WebService
    {

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public string HelloWorld(string sName)
        {
            return sName+" Hello World";
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public CCustomer GetCustomer()
        {
            CCustomer oCustomer = new CCustomer();
            oCustomer.Id = 1;
            oCustomer.Name = "Md. Faruk Hossen Khan";

            return oCustomer;
        }
        //[WebMethod]
        ////[System.Web.Script.Services.ScriptMethod]
        //public string GetCustomer()
        //{
        //    //CCustomer oCustomer = new CCustomer();
        //    //oCustomer.Id = 1;
        //    //oCustomer.Name = "Md. Faruk Hossen Khan";

        //    return "Md. Faruk Hossen Khan";
        //}
    }
}
