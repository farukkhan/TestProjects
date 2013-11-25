using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestInterfaceOfVariousFeatures
{
    public partial class _default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = new DateTime(1342705850920);
        }

        protected void btnCalculateByPostBack_Click(object sender, EventArgs e)
        {
            Exception ex = new Exception();

            txtResultByPostback.Text = calculatecontrol.Result.Text;
            //throw (ex);
        }

    }
}
